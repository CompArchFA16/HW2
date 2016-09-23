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

// Set gate delays
`define AND and #50
`define OR or #50
`define NOT not #50
`define XOR xor #50

module structuralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin
);
    // Helper gates
    wire n_b, n_carryin;
    `NOT notGate1(n_b, b);
    `NOT notGate2(n_carryin, carryin);

    wire AxorB, AxornB;
    `XOR xorGate1(AxorB, a, b);
    `XOR xorGate2(AxornB, a, n_b);

    // Calculates the sum
    wire sum1, sum2;
    `AND andGate1(sum1, n_carryin, AxorB);
    `AND andGate2(sum2, carryin, AxornB);
    `OR orGate1(sum, sum1, sum2);

    // Calculates the carryout
    wire carryout1, carryout2;
    `AND andGate3(carryout1, carryin, AxorB);
    `AND andGate4(carryout2, a, b);
    `OR orGate2(carryout, carryout1, carryout2);
endmodule
