`timescale 1 ns / 1 ps
`include "twoInputMultiplexer.v"

module testTwoInputMultiplexer();

  reg addr0;
  reg in0, in1;
  wire out;

  twoInputMultiplexer dut(addr0, in0, in1, out);

  initial begin

    $dumpfile("twoInputMultiplexer.vcd");
    $dumpvars;

    $display("addr0 in0 in1 | out | Expected output");
    addr0 = 0; in0 = 0; in1 = 0; #1000
    $display("    %b   %b   %b |   %b | 0", addr0, in0, in1, out);
    addr0 = 0; in0 = 0; in1 = 1; #1000
    $display("    %b   %b   %b |   %b | 0", addr0, in0, in1, out);
    addr0 = 0; in0 = 1; in1 = 0; #1000
    $display("    %b   %b   %b |   %b | 1", addr0, in0, in1, out);
    addr0 = 0; in0 = 1; in1 = 1; #1000
    $display("    %b   %b   %b |   %b | 1", addr0, in0, in1, out);
    addr0 = 1; in0 = 0; in1 = 0; #1000
    $display("    %b   %b   %b |   %b | 0", addr0, in0, in1, out);
    addr0 = 1; in0 = 0; in1 = 1; #1000
    $display("    %b   %b   %b |   %b | 1", addr0, in0, in1, out);
    addr0 = 1; in0 = 1; in1 = 0; #1000
    $display("    %b   %b   %b |   %b | 0", addr0, in0, in1, out);
    addr0 = 1; in0 = 1; in1 = 1; #1000
    $display("    %b   %b   %b |   %b | 1", addr0, in0, in1, out);
  end
endmodule
