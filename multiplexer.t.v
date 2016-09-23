// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
  	reg address0, address1;
    reg in0,in1,in2,in3;
    wire out;

    //behavioralMultiplexer multiplexer (out,address0,address1,in0,in1,in2,in3);
    structuralMultiplexer multiplexer (out,na0,na1,mid0,mid1,mid2,mid3,address0,address1,in0,in1,in2,in3); // Swap after testing

    initial begin
    $dumpfile("multi.vcd");
    $dumpvars(0,testMultiplexer);
    $display("in0 in1 in2 in3 | a1 a2 | out | Expected Output");

    //All input = 0

    in0=0;in1 =0;in2=0;in3=0;address0=0;address1=0; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  0", in0, in1, in2, in3, address0, address1, out);

    in0=0;in1 =0;in2=0;in3=0;address0=0;address1=1; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  0", in0, in1, in2, in3, address0, address1, out);

    in0=0;in1 =0;in2=0;in3=0;address0=1;address1=0; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  0", in0, in1, in2, in3, address0, address1, out);

    in0=0;in1 =0;in2=0;in3=0;address0=1;address1=1; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  0", in0, in1, in2, in3, address0, address1, out);

    //In3 = 1

    in0=0;in1 =0;in2=0;in3=1;address0=0;address1=0; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  0", in0, in1, in2, in3, address0, address1, out);

    in0=0;in1 =0;in2=0;in3=1;address0=0;address1=1; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  0", in0, in1, in2, in3, address0, address1, out);

    in0=0;in1 =0;in2=0;in3=1;address0=1;address1=0; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  0", in0, in1, in2, in3, address0, address1, out);

    in0=0;in1 =0;in2=0;in3=1;address0=1;address1=1; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  1", in0, in1, in2, in3, address0, address1, out);

    // in2 = 1

    in0=0;in1 =0;in2=1;in3=0;address0=0;address1=0; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  0", in0, in1, in2, in3, address0, address1, out);

    in0=0;in1 =0;in2=1;in3=0;address0=0;address1=1; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  1", in0, in1, in2, in3, address0, address1, out);

    in0=0;in1 =0;in2=1;in3=0;address0=1;address1=0; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  0", in0, in1, in2, in3, address0, address1, out);

    in0=0;in1 =0;in2=1;in3=0;address0=1;address1=1; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  0", in0, in1, in2, in3, address0, address1, out);

    // in1 = 1

    in0=0;in1 =1;in2=0;in3=0;address0=0;address1=0; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  0", in0, in1, in2, in3, address0, address1, out);

    in0=0;in1 =1;in2=0;in3=0;address0=0;address1=1; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  0", in0, in1, in2, in3, address0, address1, out);

    in0=0;in1 =1;in2=0;in3=0;address0=1;address1=0; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  1", in0, in1, in2, in3, address0, address1, out);

    in0=0;in1 =1;in2=0;in3=0;address0=1;address1=1; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  0", in0, in1, in2, in3, address0, address1, out);

    // in0 = 1

    in0=1;in1 =0;in2=0;in3=0;address0=0;address1=0; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  1", in0, in1, in2, in3, address0, address1, out);

    in0=1;in1 =0;in2=0;in3=0;address0=0;address1=1; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  0", in0, in1, in2, in3, address0, address1, out);

    in0=1;in1 =0;in2=0;in3=0;address0=1;address1=0; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  0", in0, in1, in2, in3, address0, address1, out);

    in0=1;in1 =0;in2=0;in3=0;address0=1;address1=1; #1000 

    $display(" %b   %b   %b   %b  | %b   %b |  %b  |  0", in0, in1, in2, in3, address0, address1, out);
    end
endmodule
