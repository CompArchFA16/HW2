// Adder circuit

// Declare time delays
`define AND and #50
`define OR or #50
`define XOR xor #50

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
    
    wire AxorB;
    wire AandB;
    wire AorBandCin;

    // Sum
    `XOR xorgate1(AxorB, a, b);
    `XOR xorgate2(sum, AxorB, carryin);

    // Carryout
    `AND andgate1(AandB, a, b);
    `OR orgate1(AorB, a, b);
    `AND andgate2(AorBandCin, AorB, carryin);
    `OR orgate2(carryout, AandB, AorBandCin);

endmodule
