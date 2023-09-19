`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2023 10:18:17
// Design Name: 
// Module Name: asyncounter
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


module asyncounter(input clk,m,ta,tb,tc,output qa,qb,qc,qabar,qbbar,qcbar);
wire w1,w2,w3,w4,w5,w6,w7;
assign w1 = qa & ~m;
assign w2 = ~qa & m;
assign w3 = w1 | w2;
assign w4 = qb & ~m;
assign w5 = ~qb & m;
assign w6 = w4 | w5;
TFF t1(ta,clk,qa,qabar);
TFF t2(tb,w3,qb,qbbar);
TFF t3(tc,w6,qc,qcbar);
endmodule 

module TFF(input t,clk,output reg q,output qbar);
  always @(negedge clk) begin
      case(t)
		1'b0:q <= q;
		1'b1:q <= ~q;
		 endcase
  end
initial begin
q = 1'b1;
end 
assign qbar = ~q;
endmodule

