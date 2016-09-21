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

    wire bandc;
    wire aandc;
    wire aandb;
    wire bcorac;
    
    // Carryout
    `AND andgate0 (bandc, b, carryin);
    `AND andgate1 (aandc, a, carryin);
    `AND andgate2 (aandb, a, b);
    `OR  orgate0  (bcorac, aandc, bandc);
    `OR  orgate1  (carryout, bcorac, aandb);

    // Sum
    `XOR xorgate0 (axorb, a, b);
    `XOR xorgate1 (sum, axorb, carryin);

endmodule
