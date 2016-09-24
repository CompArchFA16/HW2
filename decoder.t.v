//For each device, first write a test bench that verifies the appropriate behavior of your device. We have already completed this for you for the 2 bit decoder as an //example, so you will only have to write the other two.

//The test bench should:

//Instantiate a copy of the device it is testing (Device Under Test = DUT)
//Show what the truth table should be
//Show what the truth table is

// Decoder testbench
`timescale 1 ns / 1 ps
`include "decoder.v"

module testDecoder ();
    reg addr0, addr1;
    reg enable;
    wire out0,out1,out2,out3;

    //behavioralDecoder decoder (out0,out1,out2,out3,addr0,addr1,enable);
    structuralDecoder decoder (out0,out1,out2,out3,addr0,addr1,enable); // Swap after testing

    initial begin
    $dumpfile("decoder.vcd"); //for gtkwave
    $dumpvars;

    $display("En A1 A0| O0 O1 O2 O3 | Expected Output");
    enable=0;addr0=0;addr1=0; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | All false", enable, addr0, addr1, out0, out1, out2, out3);
    enable=0;addr0=1;addr1=0; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | All false", enable, addr0, addr1, out0, out1, out2, out3);
    enable=0;addr0=0;addr1=1; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | All false", enable, addr0, addr1, out0, out1, out2, out3);
    enable=0;addr0=1;addr1=1; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | All false", enable, addr0, addr1, out0, out1, out2, out3);
    enable=1;addr0=0;addr1=0; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | O0 Only", enable, addr0, addr1, out0, out1, out2, out3);
    enable=1;addr0=1;addr1=0; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | O1 Only", enable, addr0, addr1, out0, out1, out2, out3);
    enable=1;addr0=0;addr1=1; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | O2 Only", enable, addr0, addr1, out0, out1, out2, out3);
    enable=1;addr0=1;addr1=1; #1000
    $display("%b  %b  %b |  %b  %b  %b  %b | O3 Only", enable, addr0, addr1, out0, out1, out2, out3);
    end

endmodule
