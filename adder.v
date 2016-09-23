// Add delays
`define AND and #50
`define OR or #50
`define NOT not #50
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
wire AxorB, AxorBandcarryin, AandB;
`XOR xorgate1(AxorB, a, b);
`XOR xorgate2(sum, AxorB, carryin);
`AND andgate1(AxorBandcarryin, AxorB, carryin);
`AND andgate2(AandB, a, b);
`OR orgate(carryout, AxorBandcarryin, AandB);
endmodule
