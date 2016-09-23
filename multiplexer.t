#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x209ac30 .scope module, "behavioralMultiplexer" "behavioralMultiplexer" 2 3;
 .timescale -9 -12;
v0x20bda30_0 .net "address", 1 0, L_0x20e28f0; 1 drivers
v0x20e0f90_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x20e1030_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x20e10d0_0 .net "in0", 0 0, C4<z>; 0 drivers
v0x20e1180_0 .net "in1", 0 0, C4<z>; 0 drivers
v0x20e1220_0 .net "in2", 0 0, C4<z>; 0 drivers
v0x20e1300_0 .net "in3", 0 0, C4<z>; 0 drivers
v0x20e13a0_0 .net "inputs", 3 0, L_0x20e2730; 1 drivers
v0x20e1490_0 .net "out", 0 0, L_0x20e2a20; 1 drivers
L_0x20e2730 .concat [ 1 1 1 1], C4<z>, C4<z>, C4<z>, C4<z>;
L_0x20e28f0 .concat [ 1 1 0 0], C4<z>, C4<z>;
L_0x20e2a20 .part/v L_0x20e2730, L_0x20e28f0, 1;
S_0x209a2a0 .scope module, "testMultiplexer" "testMultiplexer" 3 8;
 .timescale -9 -12;
v0x20e2270_0 .var "addr0", 0 0;
v0x20e2310_0 .var "addr1", 0 0;
v0x20e23c0_0 .var "in0", 0 0;
v0x20e2470_0 .var "in1", 0 0;
v0x20e2550_0 .var "in2", 0 0;
v0x20e2600_0 .var "in3", 0 0;
v0x20e2680_0 .net "out", 0 0, L_0x20e3400; 1 drivers
S_0x20e1530 .scope module, "multiplexer" "structuralMultiplexer" 3 14, 2 16, S_0x209a2a0;
 .timescale -9 -12;
L_0x20e1c90 .functor NOT 1, v0x20e2270_0, C4<0>, C4<0>, C4<0>;
L_0x20e2b90 .functor NOT 1, v0x20e2310_0, C4<0>, C4<0>, C4<0>;
L_0x20e2c40 .functor AND 1, L_0x20e1c90, L_0x20e2b90, C4<1>, C4<1>;
L_0x20e2d40 .functor AND 1, v0x20e2270_0, L_0x20e2b90, C4<1>, C4<1>;
L_0x20e2da0 .functor AND 1, L_0x20e1c90, v0x20e2310_0, C4<1>, C4<1>;
L_0x20e2e00 .functor AND 1, v0x20e2270_0, v0x20e2310_0, C4<1>, C4<1>;
L_0x20e2ff0 .functor AND 1, L_0x20e2e00, v0x20e2600_0, C4<1>, C4<1>;
L_0x20e3050 .functor AND 1, L_0x20e2da0, v0x20e2550_0, C4<1>, C4<1>;
L_0x20e31a0 .functor AND 1, L_0x20e2d40, v0x20e2470_0, C4<1>, C4<1>;
L_0x20e32a0 .functor AND 1, L_0x20e2c40, v0x20e23c0_0, C4<1>, C4<1>;
L_0x20e3400 .functor OR 1, L_0x20e2ff0, L_0x20e3050, L_0x20e31a0, L_0x20e32a0;
v0x20e1620_0 .net "address0", 0 0, v0x20e2270_0; 1 drivers
v0x20e16e0_0 .net "address1", 0 0, v0x20e2310_0; 1 drivers
v0x20e1780_0 .net "in0", 0 0, v0x20e23c0_0; 1 drivers
v0x20e1820_0 .net "in1", 0 0, v0x20e2470_0; 1 drivers
v0x20e18a0_0 .net "in2", 0 0, v0x20e2550_0; 1 drivers
v0x20e1940_0 .net "in3", 0 0, v0x20e2600_0; 1 drivers
v0x20e19e0_0 .net "naddress0", 0 0, L_0x20e1c90; 1 drivers
v0x20e1a80_0 .net "naddress1", 0 0, L_0x20e2b90; 1 drivers
v0x20e1b70_0 .net "o0", 0 0, L_0x20e2e00; 1 drivers
v0x20e1c10_0 .net "o1", 0 0, L_0x20e2da0; 1 drivers
v0x20e1d10_0 .net "o2", 0 0, L_0x20e2d40; 1 drivers
v0x20e1db0_0 .net "o3", 0 0, L_0x20e2c40; 1 drivers
v0x20e1ec0_0 .alias "out", 0 0, v0x20e2680_0;
v0x20e1f60_0 .net "out0", 0 0, L_0x20e2ff0; 1 drivers
v0x20e2080_0 .net "out1", 0 0, L_0x20e3050; 1 drivers
v0x20e2120_0 .net "out2", 0 0, L_0x20e31a0; 1 drivers
v0x20e1fe0_0 .net "out3", 0 0, L_0x20e32a0; 1 drivers
    .scope S_0x209a2a0;
T_0 ;
    %set/v v0x20e2600_0, 2, 1;
    %set/v v0x20e2550_0, 2, 1;
    %set/v v0x20e2470_0, 2, 1;
    %set/v v0x20e23c0_0, 2, 1;
    %vpi_call 3 19 "$display", "addr0 addr1 | in3 in2 in1 in0 | Out | Expected Output";
    %set/v v0x20e2270_0, 0, 1;
    %set/v v0x20e2310_0, 0, 1;
    %set/v v0x20e2600_0, 2, 1;
    %set/v v0x20e2550_0, 2, 1;
    %set/v v0x20e2470_0, 2, 1;
    %set/v v0x20e23c0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 0", v0x20e2270_0, v0x20e2310_0, v0x20e2600_0, v0x20e2550_0, v0x20e2470_0, v0x20e23c0_0, v0x20e2680_0;
    %set/v v0x20e2270_0, 0, 1;
    %set/v v0x20e2310_0, 0, 1;
    %set/v v0x20e2600_0, 2, 1;
    %set/v v0x20e2550_0, 2, 1;
    %set/v v0x20e2470_0, 2, 1;
    %set/v v0x20e23c0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 1", v0x20e2270_0, v0x20e2310_0, v0x20e2600_0, v0x20e2550_0, v0x20e2470_0, v0x20e23c0_0, v0x20e2680_0;
    %set/v v0x20e2270_0, 1, 1;
    %set/v v0x20e2310_0, 0, 1;
    %set/v v0x20e2600_0, 2, 1;
    %set/v v0x20e2550_0, 2, 1;
    %set/v v0x20e2470_0, 0, 1;
    %set/v v0x20e23c0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 0", v0x20e2270_0, v0x20e2310_0, v0x20e2600_0, v0x20e2550_0, v0x20e2470_0, v0x20e23c0_0, v0x20e2680_0;
    %set/v v0x20e2270_0, 1, 1;
    %set/v v0x20e2310_0, 0, 1;
    %set/v v0x20e2600_0, 2, 1;
    %set/v v0x20e2550_0, 2, 1;
    %set/v v0x20e2470_0, 1, 1;
    %set/v v0x20e23c0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 1", v0x20e2270_0, v0x20e2310_0, v0x20e2600_0, v0x20e2550_0, v0x20e2470_0, v0x20e23c0_0, v0x20e2680_0;
    %set/v v0x20e2270_0, 0, 1;
    %set/v v0x20e2310_0, 1, 1;
    %set/v v0x20e2600_0, 2, 1;
    %set/v v0x20e2550_0, 0, 1;
    %set/v v0x20e2470_0, 2, 1;
    %set/v v0x20e23c0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 0", v0x20e2270_0, v0x20e2310_0, v0x20e2600_0, v0x20e2550_0, v0x20e2470_0, v0x20e23c0_0, v0x20e2680_0;
    %set/v v0x20e2270_0, 0, 1;
    %set/v v0x20e2310_0, 1, 1;
    %set/v v0x20e2600_0, 2, 1;
    %set/v v0x20e2550_0, 1, 1;
    %set/v v0x20e2470_0, 2, 1;
    %set/v v0x20e23c0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 32 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 1", v0x20e2270_0, v0x20e2310_0, v0x20e2600_0, v0x20e2550_0, v0x20e2470_0, v0x20e23c0_0, v0x20e2680_0;
    %set/v v0x20e2270_0, 1, 1;
    %set/v v0x20e2310_0, 1, 1;
    %set/v v0x20e2600_0, 0, 1;
    %set/v v0x20e2550_0, 2, 1;
    %set/v v0x20e2470_0, 2, 1;
    %set/v v0x20e23c0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 34 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 0", v0x20e2270_0, v0x20e2310_0, v0x20e2600_0, v0x20e2550_0, v0x20e2470_0, v0x20e23c0_0, v0x20e2680_0;
    %set/v v0x20e2270_0, 1, 1;
    %set/v v0x20e2310_0, 1, 1;
    %set/v v0x20e2600_0, 1, 1;
    %set/v v0x20e2550_0, 2, 1;
    %set/v v0x20e2470_0, 2, 1;
    %set/v v0x20e23c0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 36 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 1", v0x20e2270_0, v0x20e2310_0, v0x20e2600_0, v0x20e2550_0, v0x20e2470_0, v0x20e23c0_0, v0x20e2680_0;
    %vpi_call 3 38 "$dumpfile", "multiplexer.vcd";
    %vpi_call 3 39 "$dumpvars";
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./multiplexer.v";
    "multiplexer.t.v";
