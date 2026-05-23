`timescale 1ns / 1ps
module alu4_tb;
reg [3:0] a,b,s;
wire [3:0] y;
wire c0,z,n,v;
alu4 uut(a,b,s,y,c0,z,n,v);
initial
begin
a=4'b0011; b=4'b0001; s=4'b0000; #10;
a=4'b0110; b=4'b0010; s=4'b0001; #10;
a=4'b0011; b=4'b0010; s=4'b0010; #10;
a=4'b1000; b=4'b0010; s=4'b0011; #10;
a=4'b0011; b=4'b0000; s=4'b0100; #10;
a=4'b1000; b=4'b0000; s=4'b0101; #10;
a=4'b1010; b=4'b0101; s=4'b1000; #10;
a=4'b1010; b=4'b0101; s=4'b1001; #10;
a=4'b1010; b=4'b0101; s=4'b1010; #10;
a=4'b0111; b=4'b0001; s=4'b0000; #10;
$finish;
end
endmodule
