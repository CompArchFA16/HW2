// Adder circuit
`define AND and #50
`define XOR xor #50
`define OR or #50

module behavioralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin
);
    // Uses concatenation operator and built-in '+'
    assign {carryout, sum}=a+b+carryin;
endmodule

// Your adder code here
module halfAdder
(
	output o0, //zero digit
	output o1, //one digit
	input a,
	input b
);

`XOR (o0,a,b);
`AND (o1,a,b);

endmodule

module structuralFullAdder
(
    output o0, // zero digit
    output o1, // one digit
    input a, 
    input b, 
    input carryin
);

wire tmp_o0;
wire tmp_o1_a;
wire tmp_o1_b;

halfAdder h1(tmp_o0, tmp_o1_a, a, b);
halfAdder h2(o0, tmp_o1_b, tmp_o0, carryin);
`OR (o1, tmp_o1_a, tmp_o1_b);

endmodule
