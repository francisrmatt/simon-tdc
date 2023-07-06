// Matthew Francis
// SIMON CPA

`timescale 1ns / 1ps

`include "utility.vh"
module top #(parameter n=`N, m=`M)
    (
    input clk,
    input rx,
    
    output [2:0] led,
    output tx
    );
    
    
    localparam COUNTER_SIZE = 31,
        SAMPLES_TO_COLLECT = 512;
    
    wire [2*n-1:0] plaintext;
    reg [2*n-1:0] pt_store;
    reg [n*m-1:0] key = 64'h1918111009080100;
    wire [2*n-1:0] ciphertext [4:0];
    reg [31:0] result = 32'h03e9d82d;
    wire [4:0] s_done ;
    
    
    
    
    reg rst, en;
    
    // CLK
    wire clk0, clk1, clk5, clk0t, clk3t, clk4t, clk2, clk3, clk4, clk5t; 
    clock clock(clk, clk0, clk1, clk2, clk3, clk4, clk5t);
    
    // UART
    wire  TXDone, txActive, rxReady, delClk, err, done;
    reg transmitReg;
    reg  [7:0] TXdata;
    wire  [7:0] RXdata;
    
    //reg [23:0] count;

    uart_tx uartTX(.i_Clock(clk1), .i_Tx_DV(transmitReg), .i_Tx_Byte(TXdata), .o_Tx_Active(txActive), .o_Tx_Serial(tx), .o_Tx_Done(TXDone) );		
    uart_rx uartRX(.i_Clock(clk1), .i_Rx_Serial(rx), .o_Rx_DV(rxReady), .o_Rx_Byte(RXdata) );		
    
    // TDC
    
    reg [7:0] tdc_data [SAMPLES_TO_COLLECT-1:0];
    reg [9:0] tdc_addr;
    reg [9:0] SEN_FSM = 0;
    
    localparam ADSIZE = 160;
    reg 	[ADSIZE-1:0] outReg;
    wire 	[ADSIZE-1:0] out;		
    wire	[7:0] processedOut;
    tdc_top tp (clk0, clk0, out);					// TDC sensor
    tdc_decode tdc_decode(.clk(clk0), .rst(~rst), .chainvalue_i(outReg), .coded_o(processedOut));   // calculate number of 1's in the TDC Sensor
    
    localparam 	SEN_RESET 	= 8'h00,  //  states of the onchip Sensor FSM
		SEN_WAIT  	= 8'h01,
		SEN_CAPTURE	= 8'h02,
		SEN_WRAP_UP	= 8'h03;
    
    always @(posedge clk0) begin		// onchip sensor values samples FSM, clock0 >>>> clock1
   
        if(SEN_FSM==SEN_RESET) begin
            tdc_addr 			<= 0;
            
            SEN_FSM 		<=SEN_WAIT;	
        end
        else if(SEN_FSM==SEN_WAIT) begin
               tdc_data[tdc_addr] 	<= 250;//processedOut;		// we just want to put a flag to detect start of AES; // remove this later
                outReg 			<= out;
                tdc_addr 			<= 0;
                if(en ==1) begin
                
                    SEN_FSM  	<=SEN_CAPTURE;	
                end
        end
        else if(SEN_FSM==SEN_CAPTURE) begin
                outReg 			<= out;    
                tdc_addr 			<= tdc_addr +1;
                
                if(s_done[0]==1) begin   // when ct is ready, we want to indicate it in the onchip sensor trace -- normally there is a clock cycle delay so if we dont capture 
                                        // last clock cycle's voltage flucations we are safe.
                    tdc_data[tdc_addr] <= 249;
                end
                else begin
                    tdc_data[tdc_addr] <=  processedOut;				// sample and save TDC sensor's data
                end 
                
                if(tdc_addr==SAMPLES_TO_COLLECT-1) begin 			// once required number of samples are collected we can wait to capture next AES encryption.
                
                    SEN_FSM	<=  SEN_WRAP_UP;	
                end
        end
        else if(SEN_FSM==SEN_WRAP_UP) begin					// we do nuthing, clear the addr and move to WAIT state
                tdc_addr <=0;
                
                SEN_FSM <= SEN_WAIT;
        end
    end
    
    // SIMON
    (* dont_touch = "yes" *)
    simon s0(.clk(clk1), .rst(rst), .plaintext(plaintext),.ciphertext(ciphertext[0]),.key(key), .done(s_done[0]), .en(en));
    (* dont_touch = "yes" *)
    simon s1(.clk(clk1), .rst(rst), .plaintext(plaintext),.ciphertext(ciphertext[1]),.key(key), .done(s_done[1]), .en(en));
    (* dont_touch = "yes" *)
    simon s2(.clk(clk1), .rst(rst), .plaintext(plaintext),.ciphertext(ciphertext[2]),.key(key), .done(s_done[2]), .en(en));
    (* dont_touch = "yes" *)
    simon s3(.clk(clk1), .rst(rst), .plaintext(plaintext),.ciphertext(ciphertext[3]),.key(key), .done(s_done[3]), .en(en));
    (* dont_touch = "yes" *)
    simon s4(.clk(clk1), .rst(rst), .plaintext(plaintext),.ciphertext(ciphertext[4]),.key(key), .done(s_done[4]), .en(en));
    
    // FSM
    
    localparam FSM_IDLE = 8'h00,
                FSM_LOAD = 8'h01,
                FSM_BUSY = 8'h02,
                FSM_DONE = 8'h03,
                FSM_SEND_PT = 8'h04,
                FSM_WAIT_PT_UART = 8'h05,
                FSM_SEND_CT = 8'h06,
                FSM_WAIT_CT_UART = 8'h07,
                FSM_SEND_TDC = 8'h08,
                FSM_WAIT_TDC_UART = 8'h09,
                FSM_DELAY = 8'h0a;
           
    reg [7:0] fsm_state = FSM_IDLE;
    
    
    assign plaintext = result;
    
    reg [2:0] uart_counter;
    
    reg [9:0] tdc_uart_addr;
    
    // State machine should send
    // PT
    // CT
    // 512 samples
    
    reg [12:0] delay_counter;
    
    
    
    
    always @(posedge clk1) begin
    
        case(fsm_state)
        
            FSM_IDLE: begin
            
                delay_counter <= 0;
                uart_counter <= 3'b100;
                rst <= 1;
                en <= 0;
                
                //if(!s_done[0]) fsm_state <= FSM_LOAD; //why?
                if(rxReady == 1 & !s_done[0]) fsm_state <= FSM_LOAD;
            
                          
            end 
            
            FSM_LOAD: begin
            
                rst <= 0;
                en <= 1;
                
                fsm_state <= FSM_BUSY;
                
            end
            
            FSM_BUSY: begin
            
                //count <= count + 1;
            
                rst <= 0;
                en <= 0;
                
                
                
                //if(s_done[0]) fsm_state <= FSM_DONE;
                delay_counter <= delay_counter + 1;
                if(delay_counter[10]) fsm_state <= FSM_DONE;
                
            end
            
            FSM_DONE: begin
            
               delay_counter <= 0;
               pt_store <= plaintext;
               result <= ciphertext[0];
               fsm_state <= FSM_SEND_PT;
               
            end
            
            FSM_SEND_PT: begin
            
                transmitReg <= 1;
                TXdata <= pt_store[8*(uart_counter)-1-:8];
                
                uart_counter <= uart_counter - 1;
                fsm_state <= FSM_WAIT_PT_UART;
            
            
            end
            
            FSM_WAIT_PT_UART: begin
            
                transmitReg <= 0;
                if(TXDone == 1) begin
                    if(uart_counter == 3'b000) begin
                        tdc_uart_addr <= 0;
                        fsm_state <= FSM_SEND_CT;
                        uart_counter <= 3'b100;
                    end else
                        fsm_state <= FSM_SEND_PT;
                        
                 end
            
            end
            
            FSM_SEND_CT: begin
            
                           
                transmitReg <= 1;
                TXdata <= result[8*(uart_counter)-1-:8];
                
                uart_counter <= uart_counter - 1;
                fsm_state <= FSM_WAIT_CT_UART;
            
            end
            
            FSM_WAIT_CT_UART: begin
            
                transmitReg <= 0;
                if(TXDone == 1) begin
                    if(uart_counter == 3'b000) begin
                        tdc_uart_addr <= 0;
                        fsm_state <= FSM_SEND_TDC;
                    end else
                        fsm_state <= FSM_SEND_CT;
                        
                 end
                    
            end
            
            FSM_SEND_TDC: begin
            
                transmitReg <= 1;
                TXdata <= tdc_data[tdc_uart_addr];
                
                fsm_state <= FSM_WAIT_TDC_UART;          
            
            end
                    
            FSM_WAIT_TDC_UART: begin
            
                transmitReg <= 0;
                if(TXDone == 1) begin
                    if(tdc_uart_addr == SAMPLES_TO_COLLECT - 1) begin
                        tdc_uart_addr <= 0;
                        fsm_state <= FSM_DELAY;
                    end else begin
                        fsm_state <= FSM_SEND_TDC;
                        tdc_uart_addr <= tdc_uart_addr + 1;
                    end
                        
                end
                    
            
            end
            
            FSM_DELAY: begin
            
                delay_counter <= delay_counter + 1;
                if(delay_counter[12] == 1) fsm_state <= FSM_IDLE;
            
            end
            
                                    
        endcase
          
    end
    
    assign led = fsm_state == FSM_SEND_CT;
    
endmodule
