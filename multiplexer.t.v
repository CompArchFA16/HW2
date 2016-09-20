// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
  reg address0, address1;
  reg in0, in1, in2, in3;
  wire out;

  // behavioralMultiplexer multiplexer (out,address0,address1,in0,in1,in2,in3);
  structuralMultiplexer multiplexer (out,address0,address1,in0,in1,in2,in3); // Swap after testing

  initial begin
    $dumpfile("testMultiplexer.vcd");
    $dumpvars(0,testMultiplexer);

    $display("I0 I1 I2 I3 A0 A1 | O | Expected Output");

    // Addresses set to b00
    in0=0;in1=0;in2=0;in3=0;address0=0;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);

    in0=1;in1=0;in2=0;in3=0;address0=0;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=0;in3=0;address0=0;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=1;in3=0;address0=0;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=0;in3=1;address0=0;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);

    in0=1;in1=1;in2=0;in3=0;address0=0;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=1;in3=0;address0=0;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=1;in3=1;address0=0;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=0;in3=1;address0=0;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=1;in3=0;address0=0;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=0;in3=1;address0=0;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);

    in0=0;in1=1;in2=1;in3=1;address0=0;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=1;in3=1;address0=0;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=0;in3=1;address0=0;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=1;in3=0;address0=0;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);

    in0=1;in1=1;in2=1;in3=1;address0=0;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);


    // Addresses set to b01
    in0=0;in1=0;in2=0;in3=0;address0=1;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    //   Singles
    in0=1;in1=0;in2=0;in3=0;address0=1;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=0;in3=0;address0=1;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=1;in3=0;address0=1;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=0;in3=1;address0=1;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    //   Doubles
    in0=1;in1=1;in2=0;in3=0;address0=1;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=1;in3=0;address0=1;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=1;in3=1;address0=1;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=0;in3=1;address0=1;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=1;in3=0;address0=1;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=0;in3=1;address0=1;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    //   Triples
    in0=0;in1=1;in2=1;in3=1;address0=1;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=1;in3=1;address0=1;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=0;in3=1;address0=1;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=1;in3=0;address0=1;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    //   All Up
    in0=1;in1=1;in2=1;in3=1;address0=1;address1=0; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);


    // Addresses set to b10
    in0=0;in1=0;in2=0;in3=0;address0=0;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    //   Singles
    in0=1;in1=0;in2=0;in3=0;address0=0;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=0;in3=0;address0=0;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=1;in3=0;address0=0;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=0;in3=1;address0=0;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    //   Doubles
    in0=1;in1=1;in2=0;in3=0;address0=0;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=1;in3=0;address0=0;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=1;in3=1;address0=0;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=0;in3=1;address0=0;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=1;in3=0;address0=0;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=0;in3=1;address0=0;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    //   Triples
    in0=0;in1=1;in2=1;in3=1;address0=0;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=1;in3=1;address0=0;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=0;in3=1;address0=0;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=1;in3=0;address0=0;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    //   All Up
    in0=1;in1=1;in2=1;in3=1;address0=0;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);


    // Addresses set to b11
    in0=0;in1=0;in2=0;in3=0;address0=1;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    //   Singles
    in0=1;in1=0;in2=0;in3=0;address0=1;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=0;in3=0;address0=1;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=1;in3=0;address0=1;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=0;in3=1;address0=1;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    //   Doubles
    in0=1;in1=1;in2=0;in3=0;address0=1;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=1;in3=0;address0=1;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=0;in2=1;in3=1;address0=1;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=0;in3=1;address0=1;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=1;in3=0;address0=1;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    in0=0;in1=1;in2=0;in3=1;address0=1;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    //   Triples
    in0=0;in1=1;in2=1;in3=1;address0=1;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=0;in2=1;in3=1;address0=1;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=0;in3=1;address0=1;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);
    in0=1;in1=1;in2=1;in3=0;address0=1;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 0", in0, in1, in2, in3, address0, address1, out);
    //   All Up
    in0=1;in1=1;in2=1;in3=1;address0=1;address1=1; #1000
    $display(" %b  %b  %b  %b  %b  %b | %b | 1", in0, in1, in2, in3, address0, address1, out);


  end
endmodule
