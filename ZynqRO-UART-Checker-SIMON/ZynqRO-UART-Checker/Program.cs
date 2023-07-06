using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FTD2XX_NET;
using System.IO;
using System.Diagnostics;

namespace ZynqRO_UART_Checker
{
    class Program
    {
        static int samplingPoints =512;        // number of samples points to be read from FPGA (only onchip sensor readings) pt , key and ct are handled separately.
        static int NumROs =1;                   // not used, only need for RO -voltage sensors

        static UInt32 write(FTDI ftdi, byte[] data, int numChars)
        {
            int i;
            UInt32 numBytesRead = 0;
            FTDI.FT_STATUS ftStatus = FTDI.FT_STATUS.FT_OK;
            //for (i = 0; i < numChars; i++)
                ftdi.Write(data, numChars, ref numBytesRead);

            return numBytesRead;
        }

        static UInt32 read(FTDI ftdi, byte[] data, int numChars)
        {
            UInt32 numBytesRead = 0;
            FTDI.FT_STATUS ftStatus = FTDI.FT_STATUS.FT_OK;
            UInt32 n = (UInt32)numChars;

            ftdi.Read(data, n, ref numBytesRead);

            return numBytesRead;
        }


        static byte convert(byte data)
        {
            byte result = 100;

            if (data == 0)
                result = 0;
            else if (data == 1)
                result = 1;
            else if (data == 3)
                result = 2;
            else if (data == 7)
                result = 3;
            else if (data == 15)
                result = 4;
            else if (data == 31)
                result = 5;
            else if (data == 63)
                result = 6;
            else if (data == 127)
                result = 7;
            else if (data == 255)
                result = 8;
            else if (data == 254)
                result = 9;
            else if (data == 252)
                result = 10;
            else if (data == 248)
                result = 11;
            else if (data == 240)
                result = 12;
            else if (data == 224)
                result = 13;
            else if (data == 192)
                result = 14;
            else if (data == 128)
                result = 15;
            return result;
        }
        static void Main(string[] args)
        {
            UInt32 ftdiDeviceCount = 0;
            FTDI.FT_STATUS ftStatus = FTDI.FT_STATUS.FT_OK;
            FTDI ftdi = new FTDI();

            ///////////  get current date and time top create file names     //////////////////////

            DateTime datetime = DateTime.Now;

            String Fname = datetime.Year + "-" + datetime.Month + "-" + datetime.Day + "_" + datetime.Hour + "-" + datetime.Minute + "-" + datetime.Second;
            Console.WriteLine(Fname);
            StreamWriter fin = new StreamWriter("data-in" + Fname + ".txt");
            StreamWriter fout = new StreamWriter("data-out" + Fname + ".txt");
            StreamWriter fkey = new StreamWriter("key" + Fname + ".txt");
            FileStream writeStream = new FileStream("waveTDC" + Fname + ".data", FileMode.Create);
            BinaryWriter waveTDC = new BinaryWriter(writeStream);

            ///// get FTDI device information   ///

            ftStatus = ftdi.GetNumberOfDevices(ref ftdiDeviceCount);

            if (ftStatus == FTDI.FT_STATUS.FT_OK)
            {
                Console.WriteLine("Number of FTDI devices: " + ftdiDeviceCount.ToString());
                Console.WriteLine("");
            }
            else
            {
                // Wait for a key press
                Console.WriteLine("Failed to get number of devices (error " + ftStatus.ToString() + ")");
                Console.ReadKey();
                return;
            }


            // Allocate storage for device info list
            FTDI.FT_DEVICE_INFO_NODE[] ftdiDeviceList = new FTDI.FT_DEVICE_INFO_NODE[ftdiDeviceCount];
            ftStatus = ftdi.GetDeviceList(ftdiDeviceList);  

            // Open device in our list by serial number
            ftStatus = ftdi.OpenBySerialNumber("A50285BI");         // you need to find your FTDI chip's serial number
            ftdi.ResetDevice();
            if (ftStatus != FTDI.FT_STATUS.FT_OK)
            {
                // Wait for a key press
                Console.WriteLine("Failed to open device (error " + ftStatus.ToString() + ")");
                Console.ReadKey();
                return;
            }
            else
                Console.WriteLine("FTDI Device with Serial Number : AL05SP7N OPENED");

            ftStatus =ftdi.SetBaudRate(400000);     // buad rate -- if you change clk1 this value should be changed
            ftStatus = ftdi.SetDataCharacteristics(FTDI.FT_DATA_BITS.FT_BITS_8, FTDI.FT_STOP_BITS.FT_STOP_BITS_1, FTDI.FT_PARITY.FT_PARITY_NONE);
            ftStatus = ftdi.SetTimeouts(1000, 0);
            

            byte[,] readArray = new byte[NumROs, samplingPoints];
            int[,] readArrayProcessed = new int[NumROs, samplingPoints];
            int[] readProcessed = new int[samplingPoints];

            byte[] readArray0 = new byte[samplingPoints];

            byte[] readArrayCt = new byte[4];
            byte[] readArrayIn = new byte[4];
            //byte[] readArrayKey = new byte[16];
            UInt32 readbytes = 0;

            byte[] writeData = {250}; // parameters to be written to FPGA

            System.IO.StreamWriter file =  new System.IO.StreamWriter(@"file.txt");


            uint brokenData = 0;
            ftdi.GetRxBytesAvailable(ref brokenData);
            read(ftdi, readArray0, (int)brokenData);


            while (true)
            {


                for (int j = 0; j < samplingPoints; j++)
                    readProcessed[j] = 0;

                System.Threading.Thread.Sleep(100);  // reduce this delay to match the max speed of your laptop/ pc

                // write parameters to FPGA 
                write(ftdi, writeData, writeData.Length);

                // read pt key and ct
               read(ftdi, readArrayIn, 4);
               read(ftdi, readArrayCt, 4);
               //read(ftdi, readArrayCt, 16);
                readbytes = 0;
                 //readbytes = readbytes+ read(ftdi, readArray0, samplingPoints) ;


                // read from onchip sensor(s)
                for (int i = 0; i < NumROs; i++)
                {
                    readbytes = readbytes+ read(ftdi, readArray0, samplingPoints) ;

                    for (int j = 0; j < samplingPoints; j++)
                    {
                        readArray[i, j] = (readArray0[j]);
                        readProcessed[j] = readProcessed[j]+( (readArray0[j]));
                        
                        //readArrayProcessed[i,j] =  (convert(readArray0[j + 1]) - convert(readArray0[j]));   // only for RO voltage

                        // if ((convert(readArray0[j + 1]) - convert(readArray0[j])) < 0)    // only for RO Voltage
                        {
                            // readProcessed[j] = readProcessed[j] + 16;
                            readArrayProcessed[i, j] = readArray0[j];
                        }

                    }
                }

                Console.WriteLine("\n"+readbytes);

                // we didnt receive expected number of bytes from FTDI chip, ERROR!!
                if (readbytes != samplingPoints*NumROs)
                    Console.WriteLine("\nERROR\n\n");
                else
                {
                    // display  pt key and ct
                    for (int i = 0; i < 4; i++)
                        Console.Write(readArrayIn[i] + " ");
                    Console.Write("\n");

//                    for (int i = 0; i < 16; i++)
//                        Console.Write(readArrayKey[i] + " ");
//                    Console.Write("\n");

                    for (int i = 0; i < 4; i++)
                        Console.Write(readArrayCt[i] + " ");
                    Console.Write("\n");


                     for (int k = 0; k < NumROs; k++)   // not used ATM
                      {

                          for (int i = 0; i < samplingPoints; i++)
                          {
                               Console.Write(readProcessed[i] + " ");
                              //Console.Write(readArray0[i] + " ");
                              float f = readProcessed[i];
                              waveTDC.Write(f);
                             
                          }
                          // write onchip sensor data to wave file.data
                          waveTDC.Flush();
                         Console.Write("\n");


                          String sin = "";
                          String sout = "";

                          for (int j = 0; j < 4; j++)
                          {

                              if (j == 0)
                              {
                                  sin  = readArrayIn[j].ToString("X2");
                                  sout = readArrayCt[j].ToString("X2");
                              }
                              else
                              {
                                  sin  = sin  + " " + readArrayIn[j].ToString("X2");
                                  sout = sout + " " + readArrayCt[j].ToString("X2");
                              }
                          }

                          // write pt and ct
                          fin.WriteLine(sin);
                          fin.Flush();
                          fout.WriteLine(sout);
                          fout.Flush();

                    }
                }

            }

        }
    }
}
