// Adder circuit
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
    // Your adder code here
    wire AxorB;
    wire AandB;
    wire AxorBandCin;

    `XOR xorgate1(AxorB, a, b);
    `XOR xorgate2(sum, AxorB, carryin);

    `AND andgate1(AandB, a, b);
    `AND andgate2(AxorBandCin, AxorB, carryin);
    `OR orgate(carryout, AandB, AxorBandCin);


endmodule
