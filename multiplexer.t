#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x23b7970 .scope module, "behavioralMultiplexer" "behavioralMultiplexer" 2 3;
 .timescale 0 0;
v0x23daa10_0 .net "address", 1 0, L_0x23ff800; 1 drivers
v0x23fdea0_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x23fdf40_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x23fdfe0_0 .net "in0", 0 0, C4<z>; 0 drivers
v0x23fe090_0 .net "in1", 0 0, C4<z>; 0 drivers
v0x23fe130_0 .net "in2", 0 0, C4<z>; 0 drivers
v0x23fe210_0 .net "in3", 0 0, C4<z>; 0 drivers
v0x23fe2b0_0 .net "inputs", 3 0, L_0x23ff640; 1 drivers
v0x23fe3a0_0 .net "out", 0 0, L_0x23ff930; 1 drivers
L_0x23ff640 .concat [ 1 1 1 1], C4<z>, C4<z>, C4<z>, C4<z>;
L_0x23ff800 .concat [ 1 1 0 0], C4<z>, C4<z>;
L_0x23ff930 .part/v L_0x23ff640, L_0x23ff800, 1;
S_0x23b7060 .scope module, "testMultiplexer" "testMultiplexer" 3 8;
 .timescale 0 0;
v0x23ff180_0 .var "addr0", 0 0;
v0x23ff220_0 .var "addr1", 0 0;
v0x23ff2d0_0 .var "in0", 0 0;
v0x23ff380_0 .var "in1", 0 0;
v0x23ff460_0 .var "in2", 0 0;
v0x23ff510_0 .var "in3", 0 0;
v0x23ff590_0 .net "out", 0 0, L_0x2400310; 1 drivers
S_0x23fe440 .scope module, "multiplexer" "structuralMultiplexer" 3 14, 2 16, S_0x23b7060;
 .timescale 0 0;
L_0x23feba0 .functor NOT 1, v0x23ff180_0, C4<0>, C4<0>, C4<0>;
L_0x23ffaa0 .functor NOT 1, v0x23ff220_0, C4<0>, C4<0>, C4<0>;
L_0x23ffb50 .functor AND 1, L_0x23feba0, L_0x23ffaa0, C4<1>, C4<1>;
L_0x23ffc50 .functor AND 1, v0x23ff180_0, L_0x23ffaa0, C4<1>, C4<1>;
L_0x23ffcb0 .functor AND 1, L_0x23feba0, v0x23ff220_0, C4<1>, C4<1>;
L_0x23ffd10 .functor AND 1, v0x23ff180_0, v0x23ff220_0, C4<1>, C4<1>;
L_0x23fff00 .functor AND 1, L_0x23ffd10, v0x23ff510_0, C4<1>, C4<1>;
L_0x23fff60 .functor AND 1, L_0x23ffcb0, v0x23ff460_0, C4<1>, C4<1>;
L_0x24000b0 .functor AND 1, L_0x23ffc50, v0x23ff380_0, C4<1>, C4<1>;
L_0x24001b0 .functor AND 1, L_0x23ffb50, v0x23ff2d0_0, C4<1>, C4<1>;
L_0x2400310 .functor OR 1, L_0x23fff00, L_0x23fff60, L_0x24000b0, L_0x24001b0;
v0x23fe530_0 .net "address0", 0 0, v0x23ff180_0; 1 drivers
v0x23fe5f0_0 .net "address1", 0 0, v0x23ff220_0; 1 drivers
v0x23fe690_0 .net "in0", 0 0, v0x23ff2d0_0; 1 drivers
v0x23fe730_0 .net "in1", 0 0, v0x23ff380_0; 1 drivers
v0x23fe7b0_0 .net "in2", 0 0, v0x23ff460_0; 1 drivers
v0x23fe850_0 .net "in3", 0 0, v0x23ff510_0; 1 drivers
v0x23fe8f0_0 .net "naddress0", 0 0, L_0x23feba0; 1 drivers
v0x23fe990_0 .net "naddress1", 0 0, L_0x23ffaa0; 1 drivers
v0x23fea80_0 .net "o0", 0 0, L_0x23ffd10; 1 drivers
v0x23feb20_0 .net "o1", 0 0, L_0x23ffcb0; 1 drivers
v0x23fec20_0 .net "o2", 0 0, L_0x23ffc50; 1 drivers
v0x23fecc0_0 .net "o3", 0 0, L_0x23ffb50; 1 drivers
v0x23fedd0_0 .alias "out", 0 0, v0x23ff590_0;
v0x23fee70_0 .net "out0", 0 0, L_0x23fff00; 1 drivers
v0x23fef90_0 .net "out1", 0 0, L_0x23fff60; 1 drivers
v0x23ff030_0 .net "out2", 0 0, L_0x24000b0; 1 drivers
v0x23feef0_0 .net "out3", 0 0, L_0x24001b0; 1 drivers
    .scope S_0x23b7060;
T_0 ;
    %vpi_call 3 17 "$dumpfile", "multiplexer.vcd";
    %vpi_call 3 18 "$dumpvars";
    %set/v v0x23ff510_0, 2, 1;
    %set/v v0x23ff460_0, 2, 1;
    %set/v v0x23ff380_0, 2, 1;
    %set/v v0x23ff2d0_0, 2, 1;
    %vpi_call 3 21 "$display", "addr0 addr1 | in3 in2 in1 in0 | Out | Expected Output";
    %set/v v0x23ff180_0, 0, 1;
    %set/v v0x23ff220_0, 0, 1;
    %set/v v0x23ff510_0, 2, 1;
    %set/v v0x23ff460_0, 2, 1;
    %set/v v0x23ff380_0, 2, 1;
    %set/v v0x23ff2d0_0, 0, 1;
    %delay 1000, 0;
    %vpi_call 3 23 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 0", v0x23ff180_0, v0x23ff220_0, v0x23ff510_0, v0x23ff460_0, v0x23ff380_0, v0x23ff2d0_0, v0x23ff590_0;
    %set/v v0x23ff180_0, 0, 1;
    %set/v v0x23ff220_0, 0, 1;
    %set/v v0x23ff510_0, 2, 1;
    %set/v v0x23ff460_0, 2, 1;
    %set/v v0x23ff380_0, 2, 1;
    %set/v v0x23ff2d0_0, 1, 1;
    %delay 1000, 0;
    %vpi_call 3 25 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 1", v0x23ff180_0, v0x23ff220_0, v0x23ff510_0, v0x23ff460_0, v0x23ff380_0, v0x23ff2d0_0, v0x23ff590_0;
    %set/v v0x23ff180_0, 1, 1;
    %set/v v0x23ff220_0, 0, 1;
    %set/v v0x23ff510_0, 2, 1;
    %set/v v0x23ff460_0, 2, 1;
    %set/v v0x23ff380_0, 0, 1;
    %set/v v0x23ff2d0_0, 2, 1;
    %delay 1000, 0;
    %vpi_call 3 27 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 0", v0x23ff180_0, v0x23ff220_0, v0x23ff510_0, v0x23ff460_0, v0x23ff380_0, v0x23ff2d0_0, v0x23ff590_0;
    %set/v v0x23ff180_0, 1, 1;
    %set/v v0x23ff220_0, 0, 1;
    %set/v v0x23ff510_0, 2, 1;
    %set/v v0x23ff460_0, 2, 1;
    %set/v v0x23ff380_0, 1, 1;
    %set/v v0x23ff2d0_0, 2, 1;
    %delay 1000, 0;
    %vpi_call 3 29 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 1", v0x23ff180_0, v0x23ff220_0, v0x23ff510_0, v0x23ff460_0, v0x23ff380_0, v0x23ff2d0_0, v0x23ff590_0;
    %set/v v0x23ff180_0, 0, 1;
    %set/v v0x23ff220_0, 1, 1;
    %set/v v0x23ff510_0, 2, 1;
    %set/v v0x23ff460_0, 0, 1;
    %set/v v0x23ff380_0, 2, 1;
    %set/v v0x23ff2d0_0, 2, 1;
    %delay 1000, 0;
    %vpi_call 3 31 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 0", v0x23ff180_0, v0x23ff220_0, v0x23ff510_0, v0x23ff460_0, v0x23ff380_0, v0x23ff2d0_0, v0x23ff590_0;
    %set/v v0x23ff180_0, 0, 1;
    %set/v v0x23ff220_0, 1, 1;
    %set/v v0x23ff510_0, 2, 1;
    %set/v v0x23ff460_0, 1, 1;
    %set/v v0x23ff380_0, 2, 1;
    %set/v v0x23ff2d0_0, 2, 1;
    %delay 1000, 0;
    %vpi_call 3 33 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 1", v0x23ff180_0, v0x23ff220_0, v0x23ff510_0, v0x23ff460_0, v0x23ff380_0, v0x23ff2d0_0, v0x23ff590_0;
    %set/v v0x23ff180_0, 1, 1;
    %set/v v0x23ff220_0, 1, 1;
    %set/v v0x23ff510_0, 0, 1;
    %set/v v0x23ff460_0, 2, 1;
    %set/v v0x23ff380_0, 2, 1;
    %set/v v0x23ff2d0_0, 2, 1;
    %delay 1000, 0;
    %vpi_call 3 35 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 0", v0x23ff180_0, v0x23ff220_0, v0x23ff510_0, v0x23ff460_0, v0x23ff380_0, v0x23ff2d0_0, v0x23ff590_0;
    %set/v v0x23ff180_0, 1, 1;
    %set/v v0x23ff220_0, 1, 1;
    %set/v v0x23ff510_0, 1, 1;
    %set/v v0x23ff460_0, 2, 1;
    %set/v v0x23ff380_0, 2, 1;
    %set/v v0x23ff2d0_0, 2, 1;
    %delay 1000, 0;
    %vpi_call 3 37 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 1", v0x23ff180_0, v0x23ff220_0, v0x23ff510_0, v0x23ff460_0, v0x23ff380_0, v0x23ff2d0_0, v0x23ff590_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./multiplexer.v";
    "multiplexer.t.v";
