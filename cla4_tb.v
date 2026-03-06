module test;

reg [3:0] A;
reg [3:0] B;
reg Cin;

wire [3:0] Sum;
wire Cout;

cla4 uut(A,B,Cin,Sum,Cout);

initial begin

$dumpfile("wave.vcd");
$dumpvars(0,test);

A=4'b0011; B=4'b0101; Cin=0;
#10

A=4'b1010; B=4'b0101;
#10

A=4'b1111; B=4'b0001;
#10

$finish;

end

endmodule
