// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
    reg addr0, addr1;
    reg in0, in1, in2, in3;
    wire out;

    //behavioralMultiplexer multiplexer (out,addr0,addr1,in0,in1,in2,in3);
    structuralMultiplexer multiplexer (out,addr0,addr1,in0,in1,in2,in3);

    initial begin
    // Dump to file for gtkwave
    $dumpfile("multiplexer_trace.vcd");
    $dumpvars;

    // Test pattern stimulus
    $display("I0 I1 I2 I3 | A0 A1 | O | Expected Output");
    $display("---------------------------------------");
    // Value of selected bit = 1
    in0=1'b1;in1=1'bX;in2=1'bX;in3=1'bX;addr0=0;addr1=0; #500
    $display(" %b  %b  %b  %b |  %b  %b | %b | Selects in0", in0, in1, in2, in3, addr0, addr1, out);
    in0=1'bX;in1=1'b1;in2=1'bX;in3=1'bX;addr0=1;addr1=0; #500
    $display(" %b  %b  %b  %b |  %b  %b | %b | Selects in1", in0, in1, in2, in3, addr0, addr1, out);
    in0=1'bX;in1=1'bX;in2=1'b1;in3=1'bX;addr0=0;addr1=1; #500
    $display(" %b  %b  %b  %b |  %b  %b | %b | Selects in2", in0, in1, in2, in3, addr0, addr1, out);
    in0=1'bX;in1=1'bX;in2=1'bX;in3=1'b1;addr0=1;addr1=1; #500
    $display(" %b  %b  %b  %b |  %b  %b | %b | Selects in3", in0, in1, in2, in3, addr0, addr1, out);
    $display("---------------------------------------");
    // Value of selected bit = 0
    in0=1'b0;in1=1'bX;in2=1'bX;in3=1'bX;addr0=0;addr1=0; #500
    $display(" %b  %b  %b  %b |  %b  %b | %b | Selects in0", in0, in1, in2, in3, addr0, addr1, out);
    in0=1'bX;in1=1'b0;in2=1'bX;in3=1'bX;addr0=1;addr1=0; #500
    $display(" %b  %b  %b  %b |  %b  %b | %b | Selects in1", in0, in1, in2, in3, addr0, addr1, out);
    in0=1'bX;in1=1'bX;in2=1'b0;in3=1'bX;addr0=0;addr1=1; #500
    $display(" %b  %b  %b  %b |  %b  %b | %b | Selects in2", in0, in1, in2, in3, addr0, addr1, out);
    in0=1'bX;in1=1'bX;in2=1'bX;in3=1'b0;addr0=1;addr1=1; #500
    $display(" %b  %b  %b  %b |  %b  %b | %b | Selects in3", in0, in1, in2, in3, addr0, addr1, out);
    end

endmodule
