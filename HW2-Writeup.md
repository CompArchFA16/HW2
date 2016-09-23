# HW2 Writeup
Anisha Nakagawa

## Decoder

The truth table for the structural decoder is below, created from the output from the decoder test bench.

```
En A0 A1| O0 O1 O2 O3 | Expected Output
0  0  0 |  0  0  0  0 | All false
0  1  0 |  0  0  0  0 | All false
0  0  1 |  0  0  0  0 | All false
0  1  1 |  0  0  0  0 | All false
1  0  0 |  1  0  0  0 | O0 Only
1  1  0 |  0  1  0  0 | O1 Only
1  0  1 |  0  0  1  0 | O2 Only
1  1  1 |  0  0  0  1 | O3 Only
```

The waveform for the decoder is here, and you can see the 50 unit time delay in the output.

![Decoder waveform](img/decoderwave.PNG)

## Multiplexer

The truth table for the structural multiplexer is below, created from the output from the multiplexer test bench.

```
in0 in1 in2 in3 s0 s1 | out | Expected Output
0   0   0   0   0   0 |  0  | 0
0   0   0   1   0   0 |  0  | 0
0   0   1   0   0   0 |  0  | 0
0   0   1   1   0   0 |  0  | 0
0   1   0   0   0   0 |  0  | 0
0   1   0   1   0   0 |  0  | 0
0   1   1   0   0   0 |  0  | 0
0   1   1   1   0   0 |  0  | 0
1   0   0   0   0   0 |  1  | 1
1   0   0   1   0   0 |  1  | 1
1   0   1   0   0   0 |  1  | 1
1   0   1   1   0   0 |  1  | 1
1   1   0   0   0   0 |  1  | 1
1   1   0   1   0   0 |  1  | 1
1   1   1   0   0   0 |  1  | 1
1   1   1   1   0   0 |  1  | 1
-----------------------------------
0   0   0   0   1   0 |  0  | 0
0   0   0   1   1   0 |  0  | 0
0   0   1   0   1   0 |  0  | 0
0   0   1   1   1   0 |  0  | 0
0   1   0   0   1   0 |  1  | 1
0   1   0   1   1   0 |  1  | 1
0   1   1   0   1   0 |  1  | 1
0   1   1   1   1   0 |  1  | 1
1   0   0   0   1   0 |  0  | 0
1   0   0   1   1   0 |  0  | 0
1   0   1   0   1   0 |  0  | 0
1   0   1   1   1   0 |  0  | 0
1   1   0   0   1   0 |  1  | 1
1   1   0   1   1   0 |  1  | 1
1   1   1   0   1   0 |  1  | 1
1   1   1   1   1   0 |  1  | 1
-----------------------------------
0   0   0   0   0   1 |  0  | 0
0   0   0   1   0   1 |  0  | 0
0   0   1   0   0   1 |  1  | 1
0   0   1   1   0   1 |  1  | 1
0   1   0   0   0   1 |  0  | 0
0   1   0   1   0   1 |  0  | 0
0   1   1   0   0   1 |  1  | 1
0   1   1   1   0   1 |  1  | 1
1   0   0   0   0   1 |  0  | 0
1   0   0   1   0   1 |  0  | 0
1   0   1   0   0   1 |  1  | 1
1   0   1   1   0   1 |  1  | 1
1   1   0   0   0   1 |  0  | 0
1   1   0   1   0   1 |  0  | 0
1   1   1   0   0   1 |  1  | 1
1   1   1   1   0   1 |  1  | 1
-----------------------------------
0   0   0   0   1   1 |  0  | 0
0   0   0   1   1   1 |  1  | 1
0   0   1   0   1   1 |  0  | 0
0   0   1   1   1   1 |  1  | 1
0   1   0   0   1   1 |  0  | 0
0   1   0   1   1   1 |  1  | 1
0   1   1   0   1   1 |  0  | 0
0   1   1   1   1   1 |  1  | 1
1   0   0   0   1   1 |  0  | 0
1   0   0   1   1   1 |  1  | 1
1   0   1   0   1   1 |  0  | 0
1   0   1   1   1   1 |  1  | 1
1   1   0   0   1   1 |  0  | 0
1   1   0   1   1   1 |  1  | 1
1   1   1   0   1   1 |  0  | 0
1   1   1   1   1   1 |  1  | 1
```

The waveform for the multiplexer is here, and you can see the 50 unit time delay in the output.

![Multiplexer waveform](img/multiplexerdelay.PNG)

## Adder

The truth table for the structural adder is below, created from the output from the adder test bench.

```
a b Cin| sum Cout | Expected Output
0 0 0  |  0   0   | s=0, Cout=0
0 0 1  |  1   0   | s=1, Cout=0
0 1 0  |  1   0   | s=1, Cout=0
0 1 1  |  0   1   | s=0, Cout=1
1 0 0  |  1   0   | s=1, Cout=0
1 0 1  |  0   1   | s=0, Cout=1
1 1 0  |  0   1   | s=0, Cout=1
1 1 1  |  1   1   | s=1, Cout=1
```

The waveform for the adder is here, and you can see the 50 unit time delay in the output.

![Adder waveform](img/adder.PNG)