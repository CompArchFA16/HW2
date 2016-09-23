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
    wire AxorB, AandB, CinandAxorB;

    xor xorgate(AxorB, a, b);
    and andgate(AandB, a, b);
    and andgate(CinandAxorB, carryin, AxorB);
    or orgate(carryout, CinandAxorB, AandB);

    xor xorgate(sum, AxorB, carryin);

endmodule
