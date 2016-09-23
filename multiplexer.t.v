// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
  // Your test code here
    reg addr0, addr1;
    reg in0, in1, in2, in3;
    wire out;

	// behavioralMultiplexer multiplexer (out, addr0, addr1, in0,in1,in2,in3);
    structuralMultiplexer multiplexer (out, addr0, addr1, in0,in1,in2,in3);

	initial begin
	$dumpfile("multiplexer.vcd");
    $dumpvars;

    $display("A0 A1| I0 I1 I2 I3 |  O | Expected Output");
    addr0=0;addr1=0; in0=1'b0 ; in1=1'bx ; in2=1'bx ; in3=1'bx ;#1000 
    $display("%b  %b |  %b  %b  %b  %b |  %b | 0", addr0, addr1, in0, in1, in2, in3, out);
    addr0=0;addr1=0; in0=1'b1 ; in1=1'bx ; in2=1'bx ; in3=1'bx ;#1000
    $display("%b  %b |  %b  %b  %b  %b |  %b | 1", addr0, addr1, in0, in1, in2, in3, out);
    addr0=1;addr1=0; in0=1'bx ; in1=1'b0 ; in2=1'bx ; in3=1'bx ;#1000 
    $display("%b  %b |  %b  %b  %b  %b |  %b | 0", addr0, addr1, in0, in1, in2, in3, out);
    addr0=1;addr1=0; in0=1'bx ; in1=1'b1 ; in2=1'bx ; in3=1'bx ;#1000 
    $display("%b  %b |  %b  %b  %b  %b |  %b | 1", addr0, addr1, in0, in1, in2, in3, out);
    addr0=0;addr1=1; in0=1'bx ; in1=1'bx ; in2=1'b0 ; in3=1'bx ;#1000 
    $display("%b  %b |  %b  %b  %b  %b |  %b | 0",  addr0, addr1, in0, in1, in2, in3, out);
    addr0=0;addr1=1; in0=1'bx ; in1=1'bx ; in2=1'b1 ; in3=1'bx ;#1000 
    $display("%b  %b |  %b  %b  %b  %b |  %b | 1", addr0, addr1, in0, in1, in2, in3, out);
    addr0=1;addr1=1; in0=1'bx ; in1=1'bx ; in2=1'bx ; in3=1'b0 ;#1000 
    $display("%b  %b |  %b  %b  %b  %b |  %b | 0", addr0, addr1, in0, in1, in2, in3, out);
    addr0=1;addr1=1; in0=1'bx ; in1=1'bx ; in2=1'bx ; in3=1'b1 ;#1000 
    $display("%b  %b |  %b  %b  %b  %b |  %b | 1", addr0, addr1, in0, in1, in2, in3, out);
    end

endmodule
