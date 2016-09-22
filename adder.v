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
    wire ab, ac, bc;

    or #50 orgate0(ab, a, b);
    or #50 orgate1(ac, a, carryin);
    or #50 orgate2(bc, b, carryin);
    and #50 andgate(carryout, ab, ac, bc);

    xor #50 xorgate(sum, a, b, carryin);

endmodule
