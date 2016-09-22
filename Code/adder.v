`define And and #50
`define Or or #50
`define Not not #50

// Adder circuit

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

module structuralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin
);
wire s1, c1, c2;

xor(s1, a, b);
xor(sum, s1, carryin);

and(c1, s1, carryin);
and(c2, a, b);
or(carryout, c1, c2);
    
endmodule
