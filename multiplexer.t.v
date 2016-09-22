// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
  // Your test code here
    reg address0, address1;
    reg in0, in1, in2, in3;
    reg[2:0] i1,i2,i3,i4,i5,i6; // holder variables for for loop
    wire out;
    

    //behavioralMultiplexer multiplexer (out, address0, address1, in0, in1, in2, in3);
    structuralMultiplexer multiplexor (out, address0, address1, in0, in1, in2, in3); // Swap after testing

    initial begin
    $dumpfile("multiplexor.vcd");
    $dumpvars;
    	
	    $display("in0 in1 in2 in3| address0 address1 | out");
	    for(i1 = 2'b00; i1 <= 2'b01; i1 =i1+1) begin
	    	for(i2 = 2'b00; i2 <= 2'b01; i2 =i2+1) begin
	    		for(i3 = 2'b00; i3 <= 2'b01; i3 =i3+1) begin
	    			for(i4 = 2'b00; i4 <= 2'b01; i4 =i4+1) begin
	    				for(i5 = 2'b00; i5 <= 2'b01; i5 =i5+1) begin
	    					for(i6 = 2'b00; i6 <= 2'b01; i6 =i6+1) begin
	    						in0=i1; in1 = i2; in2 = i3; in3 = i4; address0 = i5; address1 = i6;#1000
	    						$display(" %b   %b   %b   %b |     %b      %b      | %b", in0, in1, in2, in3, address0, address1, out);
	    					end

	    				end
	    			end
	    		end 
	    	end
	    end
    end

endmodule
