`timescale 1ns / 1ps
module alu4(
input [3:0]a,b,s,
output [3:0]y,
output c0,z,n,v
);
reg [3:0] result;
wire [4:0] tmp;
assign y = result;
assign tmp = {1'b0,a} + {1'b0,b};
assign c0 = tmp[4];
assign z = (result == 4'b0000);
assign n = result[3];
assign v = (a[3] & b[3] & ~result[3]) |
           (~a[3] & ~b[3] & result[3]);
always @(*)
begin
    case(s)
        4'b0000:result = a + b;
        4'b0001:result = a - b;
        4'b0010:result = a * b;
        4'b0011:result = a / b;
        4'b0100:result = a << 1;
        4'b0101:result = a >> 1;
        4'b0110:result = {a[2:0],a[3]};
        4'b0111:result = {a[0],a[3:1]};
        4'b1000:result = a & b;
        4'b1001:result = a | b;
        4'b1010:result = a ^ b;
        4'b1011:result = ~(a | b);
        4'b1100:result = ~(a & b);
        4'b1101:result = ~(a ^ b);
        4'b1110:result = (a>b)?4'd1:4'd0;
        4'b1111:result = (a==b)?4'd1:4'd0;
        default:result = a + b;
    endcase
end
endmodule

