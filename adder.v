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

//logic gate wires
wire xAB;
wire AB;
wire ABC;

//logic gates and connections 
`AND ABgate(AB, a, b);
`XOR xABgate(xAB, a, b);
`AND Candgate(ABC, xAB, carryin);
`XOR xABCingate(sum, carryin, xAB);
`OR orgate(carryout, ABC, AB);

endmodule
