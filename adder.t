#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x21e4f40 .scope module, "behavioralFullAdder" "behavioralFullAdder" 2 8;
 .timescale -9 -12;
v0x21e4390_0 .net *"_s10", 0 0, C4<0>; 1 drivers
v0x220d2b0_0 .net *"_s11", 1 0, L_0x220ea50; 1 drivers
v0x220d350_0 .net *"_s13", 1 0, L_0x220ec60; 1 drivers
v0x220d3f0_0 .net *"_s16", 0 0, C4<0>; 1 drivers
v0x220d4a0_0 .net *"_s17", 1 0, L_0x220edd0; 1 drivers
v0x220d540_0 .net *"_s3", 1 0, L_0x220e740; 1 drivers
v0x220d620_0 .net *"_s6", 0 0, C4<0>; 1 drivers
v0x220d6c0_0 .net *"_s7", 1 0, L_0x220e890; 1 drivers
v0x220d7b0_0 .net "a", 0 0, C4<z>; 0 drivers
v0x220d850_0 .net "b", 0 0, C4<z>; 0 drivers
v0x220d950_0 .net "carryin", 0 0, C4<z>; 0 drivers
v0x220d9f0_0 .net "carryout", 0 0, L_0x220e520; 1 drivers
v0x220db00_0 .net "sum", 0 0, L_0x220e620; 1 drivers
L_0x220e520 .part L_0x220edd0, 1, 1;
L_0x220e620 .part L_0x220edd0, 0, 1;
L_0x220e740 .concat [ 1 1 0 0], C4<z>, C4<0>;
L_0x220e890 .concat [ 1 1 0 0], C4<z>, C4<0>;
L_0x220ea50 .arith/sum 2, L_0x220e740, L_0x220e890;
L_0x220ec60 .concat [ 1 1 0 0], C4<z>, C4<0>;
L_0x220edd0 .arith/sum 2, L_0x220ea50, L_0x220ec60;
S_0x21edf40 .scope module, "testFullAdder" "testFullAdder" 3 5;
 .timescale -9 -12;
v0x220e190_0 .var "a", 0 0;
v0x220e230_0 .var "b", 0 0;
v0x220e2e0_0 .var "carryin", 0 0;
v0x220e390_0 .net "carryout", 0 0, L_0x220f470; 1 drivers
v0x220e470_0 .net "sum", 0 0, L_0x220d8d0; 1 drivers
S_0x220dba0 .scope module, "adder" "structuralFullAdder" 3 10, 2 20, S_0x21edf40;
 .timescale -9 -12;
L_0x220d8d0/d .functor XOR 1, v0x220e190_0, v0x220e230_0, v0x220e2e0_0, C4<0>;
L_0x220d8d0 .delay (50000,50000,50000) L_0x220d8d0/d;
L_0x220f0e0/d .functor AND 1, v0x220e190_0, v0x220e230_0, C4<1>, C4<1>;
L_0x220f0e0 .delay (50000,50000,50000) L_0x220f0e0/d;
L_0x220f180/d .functor AND 1, v0x220e190_0, v0x220e2e0_0, C4<1>, C4<1>;
L_0x220f180 .delay (50000,50000,50000) L_0x220f180/d;
L_0x220f2b0/d .functor AND 1, v0x220e230_0, v0x220e2e0_0, C4<1>, C4<1>;
L_0x220f2b0 .delay (50000,50000,50000) L_0x220f2b0/d;
L_0x220f470/d .functor OR 1, L_0x220f0e0, L_0x220f180, L_0x220f2b0, C4<0>;
L_0x220f470 .delay (50000,50000,50000) L_0x220f470/d;
v0x220dc90_0 .net "AandB", 0 0, L_0x220f0e0; 1 drivers
v0x220dd50_0 .net "AandC", 0 0, L_0x220f180; 1 drivers
v0x220ddf0_0 .net "BandC", 0 0, L_0x220f2b0; 1 drivers
v0x220de90_0 .net "a", 0 0, v0x220e190_0; 1 drivers
v0x220df10_0 .net "b", 0 0, v0x220e230_0; 1 drivers
v0x220dfb0_0 .net "carryin", 0 0, v0x220e2e0_0; 1 drivers
v0x220e050_0 .alias "carryout", 0 0, v0x220e390_0;
v0x220e0f0_0 .alias "sum", 0 0, v0x220e470_0;
    .scope S_0x21edf40;
T_0 ;
    %vpi_call 3 13 "$dumpfile", "adder.vcd";
    %vpi_call 3 14 "$dumpvars";
    %vpi_call 3 16 "$display", "A  B  CarryIn| Sum CarryOut | ExpectedSum ExpectedCarryout";
    %set/v v0x220e190_0, 0, 1;
    %set/v v0x220e230_0, 0, 1;
    %set/v v0x220e2e0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 18 "$display", "%b  %b   %b     | %b         %b  | 0              0", v0x220e190_0, v0x220e230_0, v0x220e2e0_0, v0x220e470_0, v0x220e390_0;
    %set/v v0x220e190_0, 1, 1;
    %set/v v0x220e230_0, 0, 1;
    %set/v v0x220e2e0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b  %b   %b     | %b         %b  | 1              0", v0x220e190_0, v0x220e230_0, v0x220e2e0_0, v0x220e470_0, v0x220e390_0;
    %set/v v0x220e190_0, 0, 1;
    %set/v v0x220e230_0, 1, 1;
    %set/v v0x220e2e0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b  %b   %b     | %b         %b  | 1              0", v0x220e190_0, v0x220e230_0, v0x220e2e0_0, v0x220e470_0, v0x220e390_0;
    %set/v v0x220e190_0, 1, 1;
    %set/v v0x220e230_0, 1, 1;
    %set/v v0x220e2e0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b  %b   %b     | %b         %b  | 0              1", v0x220e190_0, v0x220e230_0, v0x220e2e0_0, v0x220e470_0, v0x220e390_0;
    %set/v v0x220e190_0, 0, 1;
    %set/v v0x220e230_0, 0, 1;
    %set/v v0x220e2e0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b  %b   %b     | %b         %b  | 1              0", v0x220e190_0, v0x220e230_0, v0x220e2e0_0, v0x220e470_0, v0x220e390_0;
    %set/v v0x220e190_0, 1, 1;
    %set/v v0x220e230_0, 0, 1;
    %set/v v0x220e2e0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b  %b   %b     | %b         %b  | 0              1", v0x220e190_0, v0x220e230_0, v0x220e2e0_0, v0x220e470_0, v0x220e390_0;
    %set/v v0x220e190_0, 0, 1;
    %set/v v0x220e230_0, 1, 1;
    %set/v v0x220e2e0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b  %b   %b     | %b         %b  | 0              1", v0x220e190_0, v0x220e230_0, v0x220e2e0_0, v0x220e470_0, v0x220e390_0;
    %set/v v0x220e190_0, 1, 1;
    %set/v v0x220e230_0, 1, 1;
    %set/v v0x220e2e0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 32 "$display", "%b  %b   %b     | %b         %b  | 1              1", v0x220e190_0, v0x220e230_0, v0x220e2e0_0, v0x220e470_0, v0x220e390_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./adder.v";
    "adder.t.v";
