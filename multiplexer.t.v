// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();

  wire out;
  reg addr0, addr1;
  reg in0, in1, in2, in3;

  // behavioralMultiplexer dut(out, addr0, addr1, in0, in1, in2, in3);
  structuralMultiplexer dut(out, addr0, addr1, in0, in1, in2, in3);

  initial begin

    $dumpfile("multiplexer.vcd");
    $dumpvars;

    $display("addr1 addr0 in0 in1 in2 in3 | out | Expected output");
    addr0 = 0; addr1 = 0; in0 = 0; in1 = 1'bX; in2 = 1'bX; in3 = 1'bX; #1000
    $display("    %b     %b   %b   %b   %b   %b |   %b | 0", addr1, addr0, in0, in1, in2, in3, out);
    addr0 = 0; addr1 = 0; in0 = 1; in1 = 1'bX; in2 = 1'bX; in3 = 1'bX; #1000
    $display("    %b     %b   %b   %b   %b   %b |   %b | 1", addr1, addr0, in0, in1, in2, in3, out);
    addr0 = 1; addr1 = 0; in0 = 1'bX; in1 = 0; in2 = 1'bX; in3 = 1'bX; #1000
    $display("    %b     %b   %b   %b   %b   %b |   %b | 0", addr1, addr0, in0, in1, in2, in3, out);
    addr0 = 1; addr1 = 0; in0 = 1'bX; in1 = 1; in2 = 1'bX; in3 = 1'bX; #1000
    $display("    %b     %b   %b   %b   %b   %b |   %b | 1", addr1, addr0, in0, in1, in2, in3, out);
    addr0 = 0; addr1 = 1; in0 = 1'bX; in1 = 1'bX; in2 = 0; in3 = 1'bX; #1000
    $display("    %b     %b   %b   %b   %b   %b |   %b | 0", addr1, addr0, in0, in1, in2, in3, out);
    addr0 = 0; addr1 = 1; in0 = 1'bX; in1 = 1'bX; in2 = 1; in3 = 1'bX; #1000
    $display("    %b     %b   %b   %b   %b   %b |   %b | 1", addr1, addr0, in0, in1, in2, in3, out);
    addr0 = 1; addr1 = 1; in0 = 1'bX; in1 = 1'bX; in2 = 1'bX; in3 = 0; #1000
    $display("    %b     %b   %b   %b   %b   %b |   %b | 0", addr1, addr0, in0, in1, in2, in3, out);
    addr0 = 1; addr1 = 1; in0 = 1'bX; in1 = 1'bX; in2 = 1'bX; in3 = 1; #1000
    $display("    %b     %b   %b   %b   %b   %b |   %b | 1", addr1, addr0, in0, in1, in2, in3, out);
  end
endmodule
