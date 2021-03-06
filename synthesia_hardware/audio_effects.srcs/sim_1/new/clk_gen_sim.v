`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.03.2018 14:37:33
// Design Name: 
// Module Name: clk_gen_sim
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


module clk_gen_sim(

    );
    
    reg I_clk, I_rst;
    wire clk_20k, clk_50M;
    
    clk_gen #(.CLK_DIV(2)) test (I_clk, clk_20k);
    
    initial begin
        I_clk = 0;
        I_rst = 0;
        
        // Tests reset operation of clock
        #50; I_rst = 1;
        #20; I_rst = 0;
    end
    
    always begin
        #5; I_clk = ~I_clk;
    end
    
endmodule
