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
    wire axorb_and_c;
    `XOR xorgate1(axorb,a,b);
    `AND andgate1(aandb,a,b);
    `AND andgate2(axorb_and_c,carryin,axorb);
    `XOR xorgate2(sum,carryin,axorb);
    `OR orgate(carryout,axorb_and_c,aandb);

endmodule
