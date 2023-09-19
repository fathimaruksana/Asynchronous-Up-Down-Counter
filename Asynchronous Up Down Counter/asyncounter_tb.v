`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2023 11:04:03
// Design Name: 
// Module Name: asyncounter_tb
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


module asyncounter_tb();
reg clk,m,ta,tb,tc;
wire qa,qb,qc,qabar,qbbar,qcbar;
asyncounter dut(clk,m,ta,tb,tc,qa,qb,qc,qabar,qbbar,qcbar);
initial begin 
  m = 1'b0;
  clk=1'b0;
  #60
  m = 1'b1;  
end
always begin 
#5
  clk=~clk;
end
initial begin 
ta = 1'b1;
tb = 1'b1;
tc = 1'b1;
end
endmodule
