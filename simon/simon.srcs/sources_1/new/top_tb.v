`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2023 13:48:38
// Design Name: 
// Module Name: top_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top_tb(

    );
    
    reg clk;
    
    initial begin 
        clk = 0;
    end
    
    always begin
        clk = ~clk;
        #5;
    end
  
    reg rx = 0;
    wire tx;
    wire [2:0] led;
    
    top t(.clk(clk), .rx(rx), .tx(tx), .led(led));      
    
    
endmodule
