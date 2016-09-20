module twoInputMultiplexer
(
  input address0,
  input in0, in1,
  output out
);

  wire address0_n;
  not (address0_n, address0);

  wire in0AndNotAddress0, in1AndAddress0;
  and (in0AndNotAddress0, in0, address0_n);
  and (in1AndAddress0, in1, address0);

  or (out, in0AndNotAddress0, in1AndAddress0);
endmodule
