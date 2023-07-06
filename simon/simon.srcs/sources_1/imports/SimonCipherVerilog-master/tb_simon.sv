`timescale 1ns / 1ps
/*
Copyright © 2020 Ali Shuja Siddiqui <asiddiq6@uncc.edu>

Permission is hereby granted, free of charge, to any person obtaining a copy of 
this software and associated documentation files (the "Software"), to deal in the 
Software without restriction, including without limitation the rights to use, copy,
 modify, merge, publish, distribute, sublicense, and/or sell copies of the 
 Software, and to permit persons to whom the Software is furnished to do so,
  subject to the following conditions:

The above copyright notice and this permission notice shall be included in all 
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
 INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
 WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN 
 CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 
*/
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2020 03:47:31 PM
// Design Name: 
// Module Name: tb_simon
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

`include "utility.vh"
module tb_simon #(parameter n=`N, m=`M);
    
    reg clk, rst, en;
    
    reg [2*n-1:0] plaintext;
    reg [n*m-1:0] key;
    wire [2*n-1:0] ciphertext;
    wire done;
    simon s(.clk(clk), .rst(rst), .plaintext(plaintext),.ciphertext(ciphertext),.key(key), .done(done), .en(en));
    
    localparam FSM_IDLE = 8'h00,
                FSM_LOAD = 8'h01,
                FSM_BUSY = 8'h02,
                FSM_DONE = 8'h03;
           
    reg [7:0] fsm_state = FSM_IDLE;
    
    reg [31:0] result = 32'h03e9d82d;
    
    initial begin
        clk =0;
        rst = 0;
        key = 64'h1918111009080100;
        //plaintext = result;
        //key = 128'hABBAABBAABBAABBAABBAABBAABBAABBA;
        //plaintext = 128'hABBAABBAABBAABBAABBAABBAABBAABBA;
    end
    
    assign plaintext = result;
    
    always 
    begin
        #5 clk = ~clk;
    end
    
    always @(posedge clk) begin
    
        case(fsm_state)
        
            FSM_IDLE: begin
            
                rst <= 1;
                en <= 0;
                
                if(!done) fsm_state <= FSM_LOAD;
                          
            end 
            
            FSM_LOAD: begin
            
                rst <= 0;
                en <= 1;
                
                fsm_state <= FSM_BUSY;
                
            end
            
            FSM_BUSY: begin
            
                rst <= 0;
                en <= 0;
                
                if(done) fsm_state <= FSM_DONE;
                
            end
            
            FSM_DONE: begin
            
               result <= ciphertext;
               fsm_state <= FSM_IDLE;
               
            end
                                    
        endcase
          
    end
     
endmodule
//    initial begin
//        @(posedge clk);
//        @(posedge clk);
//        @(posedge clk);
//        rst = 1;
//        @(posedge clk);
//        rst = 0;
//        en = 0;
//        @(posedge clk);
//        en = 1;
//        @(posedge clk);
//        en = 0;
//        while(done!=1)
//        begin
//            @(posedge clk);
//        end;
//        @(posedge clk);
//        @(posedge clk);
//        @(posedge clk);
//        plaintext = 23451;
//        en = 1;
//        @(posedge clk);
//        en = 0;
//        @(posedge clk);
//         while(done!=1)
//         begin
//             @(posedge clk);
//         end;
//         @(posedge clk);
//         @(posedge clk);
//         @(posedge clk);
//        $finish;
//    end
//endmodule
