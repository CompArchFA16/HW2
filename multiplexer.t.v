// Multiplexer testbench
// `timescale 1 ns / 1 ps
`include "multiplexer.v"
`define AND and #50
`define OR or #50
`define NOT not #50

module testMultiplexer (); 
  reg addr0, addr1; //select inputs
  reg in3, in2, in1, in0; //inputs
  wire out; //output

  // behavioralMultiplexer multiplexer (out, addr0, addr1, in0, in1, in2, in3);
  structuralMultiplexer multiplexer (out, addr0, addr1, in0, in1, in2, in3);

  initial begin
    $dumpfile("multiplexer.vcd");
    $dumpvars;

    in3=1'bX; in2=1'bX; in1=1'bX; in0=1'bX; //initialize all the inputs to be X
    $display("addr0 addr1 | in3 in2 in1 in0 | Out | Expected Output");
    addr0=0;addr1=0;in3=1'bX;in2=1'bX;in1=1'bX;in0=1'b0; #1000 
    $display("  %b    %b    |   %b   %b   %b   %b |  %b  | 0", addr0, addr1, in3, in2, in1, in0, out);
    addr0=0;addr1=0;in3=1'bX;in2=1'bX;in1=1'bX;in0=1'b1; #1000 
    $display("  %b    %b    |   %b   %b   %b   %b |  %b  | 1", addr0, addr1, in3, in2, in1, in0, out);
    addr0=1;addr1=0;in3=1'bX;in2=1'bX;in1=1'b0;in0=1'bX; #1000 
    $display("  %b    %b    |   %b   %b   %b   %b |  %b  | 0", addr0, addr1, in3, in2, in1, in0, out);
    addr0=1;addr1=0;in3=1'bX;in2=1'bX;in1=1'b1;in0=1'bX; #1000 
    $display("  %b    %b    |   %b   %b   %b   %b |  %b  | 1", addr0, addr1, in3, in2, in1, in0, out);
    addr0=0;addr1=1;in3=1'bX;in2=1'b0;in1=1'bX;in0=1'bX; #1000 
    $display("  %b    %b    |   %b   %b   %b   %b |  %b  | 0", addr0, addr1, in3, in2, in1, in0, out);
    addr0=0;addr1=1;in3=1'bX;in2=1'b1;in1=1'bX;in0=1'bX; #1000 
    $display("  %b    %b    |   %b   %b   %b   %b |  %b  | 1", addr0, addr1, in3, in2, in1, in0, out);
    addr0=1;addr1=1;in3=1'b0;in2=1'bX;in1=1'bX;in0=1'bX; #1000 
    $display("  %b    %b    |   %b   %b   %b   %b |  %b  | 0", addr0, addr1, in3, in2, in1, in0, out);
    addr0=1;addr1=1;in3=1'b1;in2=1'bX;in1=1'bX;in0=1'bX; #1000 
    $display("  %b    %b    |   %b   %b   %b   %b |  %b  | 1", addr0, addr1, in3, in2, in1, in0, out);

  end
endmodule
