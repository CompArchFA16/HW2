// Adder circuit

// define gates with delays
`define AND and #50
`define OR or #50
`define NOT not #50 

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
    output na,nb,nc,
    output mids0, mids1, mids2, mids3, midc0, midc1,midc2,
    input a, 
    input b, 
    input carryin
);
    wire na;
    wire nb;
    wire nc;
    wire mids;
    wire midc;
    `NOT inv(na,a);
    `NOT inv(nb,b);
    `NOT inv(nc,carryin);
    `AND andgate(mids0, na, nb, carryin);
    `AND andgate(mids1, na, b, nc);
    `AND andgate(mids2, a, nb, nc);
    `AND andgate(mids3, a, b, carryin);
    `OR orgate(sum, mids0,mids1,mids2,mids3);

    `AND andgate(midc0,a,b);
    `AND andgate(midc1,a,carryin);
    `AND andgate(midc2,b,carryin);
    `OR orgate(carryout,midc0,midc1,midc2);
endmodule
