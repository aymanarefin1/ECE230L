module ones_compliment(

input [3:0]A,
input [3:0]B,
output [3:0]Y


);
wire [3:0]carry;
wire [3:0]inter_sum;
wire [3:0]real_carry;
 full_adder fa0(
   .A(A[0]),
   .B(B[0]),
   .Cin(1'b0),
   .Y(inter_sum[0]),
   .Cout(carry[0])

);

 full_adder fa1(
   .A(A[1]),
   .B(B[1]),
   .Cin(carry[0]),
   .Y(inter_sum[1]),
   .Cout(carry[1])

);
 full_adder fa2(
   .A(A[2]),
   .B(B[2]),
   .Cin(carry[1]),
   .Y(inter_sum[2]),
   .Cout(carry[2])

);

 full_adder fa3(
   .A(A[3]),
   .B(B[3]),
   .Cin(carry[2]),
   .Y(inter_sum[3]),
   .Cout(carry[3])

);

 full_adder fb0(
   .A(inter_sum[0]),
   .B(1'b0),
   .Cin(carry[3]),
   .Y(Y[0]),
   .Cout(real_carry[0])

);

 full_adder fb1(
   .A(inter_sum[1]),
   .B(1'b0),
   .Cin(real_carry[0]),
   .Y(Y[1]),
   .Cout(real_carry[1])

);
 full_adder fb2(
   .A(inter_sum[2]),
   .B(1'b0),
   .Cin(real_carry[1]),
   .Y(Y[2]),
   .Cout(real_carry[2])

);

 full_adder fb3(
   .A(inter_sum[3]),
   .B(1'b0),
   .Cin(real_carry[2]),
   .Y(Y[3])
   

);


endmodule