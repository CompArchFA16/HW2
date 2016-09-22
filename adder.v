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

    wire axorb;
    wire aandb;
    wire candaxorb;

    `XOR xorgate(axorb, a, b);
    `AND andgate(aandb, a, b);
    `AND andgate(candaxorb, carryin, axorb);
    `OR orgate(carryout, aandb, candaxorb);

    `XOR xorgate(sum, axorb, carryin);

endmodule
