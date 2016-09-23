#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x26e59d0 .scope module, "behavioralMultiplexer" "behavioralMultiplexer" 2 3;
 .timescale -9 -12;
v0x2708a30_0 .net "address", 1 0, L_0x272d3d0; 1 drivers
v0x272ba70_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x272bb10_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x272bbb0_0 .net "in0", 0 0, C4<z>; 0 drivers
v0x272bc60_0 .net "in1", 0 0, C4<z>; 0 drivers
v0x272bd00_0 .net "in2", 0 0, C4<z>; 0 drivers
v0x272bde0_0 .net "in3", 0 0, C4<z>; 0 drivers
v0x272be80_0 .net "inputs", 3 0, L_0x272d210; 1 drivers
v0x272bf70_0 .net "out", 0 0, L_0x272d500; 1 drivers
L_0x272d210 .concat [ 1 1 1 1], C4<z>, C4<z>, C4<z>, C4<z>;
L_0x272d3d0 .concat [ 1 1 0 0], C4<z>, C4<z>;
L_0x272d500 .part/v L_0x272d210, L_0x272d3d0, 1;
S_0x26e5040 .scope module, "testMultiplexer" "testMultiplexer" 3 5;
 .timescale -9 -12;
v0x272cd50_0 .var "addr0", 0 0;
v0x272cdf0_0 .var "addr1", 0 0;
v0x272cea0_0 .var "in0", 0 0;
v0x272cf50_0 .var "in1", 0 0;
v0x272d030_0 .var "in2", 0 0;
v0x272d0e0_0 .var "in3", 0 0;
v0x272d160_0 .net "out", 0 0, L_0x272dee0; 1 drivers
S_0x272c010 .scope module, "multiplexer" "structuralMultiplexer" 3 11, 2 16, S_0x26e5040;
 .timescale -9 -12;
L_0x272c770 .functor NOT 1, v0x272cd50_0, C4<0>, C4<0>, C4<0>;
L_0x272d670 .functor NOT 1, v0x272cdf0_0, C4<0>, C4<0>, C4<0>;
L_0x272d720 .functor AND 1, L_0x272c770, L_0x272d670, C4<1>, C4<1>;
L_0x272d820 .functor AND 1, v0x272cd50_0, L_0x272d670, C4<1>, C4<1>;
L_0x272d880 .functor AND 1, L_0x272c770, v0x272cdf0_0, C4<1>, C4<1>;
L_0x272d8e0 .functor AND 1, v0x272cd50_0, v0x272cdf0_0, C4<1>, C4<1>;
L_0x272dad0 .functor AND 1, L_0x272d8e0, v0x272d0e0_0, C4<1>, C4<1>;
L_0x272db30 .functor AND 1, L_0x272d880, v0x272d030_0, C4<1>, C4<1>;
L_0x272dc80 .functor AND 1, L_0x272d820, v0x272cf50_0, C4<1>, C4<1>;
L_0x272dd80 .functor AND 1, L_0x272d720, v0x272cea0_0, C4<1>, C4<1>;
L_0x272dee0 .functor OR 1, L_0x272dad0, L_0x272db30, L_0x272dc80, L_0x272dd80;
v0x272c100_0 .net "address0", 0 0, v0x272cd50_0; 1 drivers
v0x272c1c0_0 .net "address1", 0 0, v0x272cdf0_0; 1 drivers
v0x272c260_0 .net "in0", 0 0, v0x272cea0_0; 1 drivers
v0x272c300_0 .net "in1", 0 0, v0x272cf50_0; 1 drivers
v0x272c380_0 .net "in2", 0 0, v0x272d030_0; 1 drivers
v0x272c420_0 .net "in3", 0 0, v0x272d0e0_0; 1 drivers
v0x272c4c0_0 .net "naddress0", 0 0, L_0x272c770; 1 drivers
v0x272c560_0 .net "naddress1", 0 0, L_0x272d670; 1 drivers
v0x272c650_0 .net "o0", 0 0, L_0x272d8e0; 1 drivers
v0x272c6f0_0 .net "o1", 0 0, L_0x272d880; 1 drivers
v0x272c7f0_0 .net "o2", 0 0, L_0x272d820; 1 drivers
v0x272c890_0 .net "o3", 0 0, L_0x272d720; 1 drivers
v0x272c9a0_0 .alias "out", 0 0, v0x272d160_0;
v0x272ca40_0 .net "out0", 0 0, L_0x272dad0; 1 drivers
v0x272cb60_0 .net "out1", 0 0, L_0x272db30; 1 drivers
v0x272cc00_0 .net "out2", 0 0, L_0x272dc80; 1 drivers
v0x272cac0_0 .net "out3", 0 0, L_0x272dd80; 1 drivers
    .scope S_0x26e5040;
T_0 ;
    %set/v v0x272d0e0_0, 2, 1;
    %set/v v0x272d030_0, 2, 1;
    %set/v v0x272cf50_0, 2, 1;
    %set/v v0x272cea0_0, 2, 1;
    %vpi_call 3 16 "$display", "addr0 addr1 | in3 in2 in1 in0 | Out | Expected Output";
    %set/v v0x272cd50_0, 0, 1;
    %set/v v0x272cdf0_0, 0, 1;
    %set/v v0x272d0e0_0, 2, 1;
    %set/v v0x272d030_0, 2, 1;
    %set/v v0x272cf50_0, 2, 1;
    %set/v v0x272cea0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 19 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 0", v0x272cd50_0, v0x272cdf0_0, v0x272d0e0_0, v0x272d030_0, v0x272cf50_0, v0x272cea0_0, v0x272d160_0;
    %set/v v0x272cd50_0, 0, 1;
    %set/v v0x272cdf0_0, 0, 1;
    %set/v v0x272d0e0_0, 2, 1;
    %set/v v0x272d030_0, 2, 1;
    %set/v v0x272cf50_0, 2, 1;
    %set/v v0x272cea0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 1", v0x272cd50_0, v0x272cdf0_0, v0x272d0e0_0, v0x272d030_0, v0x272cf50_0, v0x272cea0_0, v0x272d160_0;
    %set/v v0x272cd50_0, 1, 1;
    %set/v v0x272cdf0_0, 0, 1;
    %set/v v0x272d0e0_0, 2, 1;
    %set/v v0x272d030_0, 2, 1;
    %set/v v0x272cf50_0, 0, 1;
    %set/v v0x272cea0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 25 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 0", v0x272cd50_0, v0x272cdf0_0, v0x272d0e0_0, v0x272d030_0, v0x272cf50_0, v0x272cea0_0, v0x272d160_0;
    %set/v v0x272cd50_0, 1, 1;
    %set/v v0x272cdf0_0, 0, 1;
    %set/v v0x272d0e0_0, 2, 1;
    %set/v v0x272d030_0, 2, 1;
    %set/v v0x272cf50_0, 1, 1;
    %set/v v0x272cea0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 1", v0x272cd50_0, v0x272cdf0_0, v0x272d0e0_0, v0x272d030_0, v0x272cf50_0, v0x272cea0_0, v0x272d160_0;
    %set/v v0x272cd50_0, 0, 1;
    %set/v v0x272cdf0_0, 1, 1;
    %set/v v0x272d0e0_0, 2, 1;
    %set/v v0x272d030_0, 0, 1;
    %set/v v0x272cf50_0, 2, 1;
    %set/v v0x272cea0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 31 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 0", v0x272cd50_0, v0x272cdf0_0, v0x272d0e0_0, v0x272d030_0, v0x272cf50_0, v0x272cea0_0, v0x272d160_0;
    %set/v v0x272cd50_0, 0, 1;
    %set/v v0x272cdf0_0, 1, 1;
    %set/v v0x272d0e0_0, 2, 1;
    %set/v v0x272d030_0, 1, 1;
    %set/v v0x272cf50_0, 2, 1;
    %set/v v0x272cea0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 34 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 1", v0x272cd50_0, v0x272cdf0_0, v0x272d0e0_0, v0x272d030_0, v0x272cf50_0, v0x272cea0_0, v0x272d160_0;
    %set/v v0x272cd50_0, 1, 1;
    %set/v v0x272cdf0_0, 1, 1;
    %set/v v0x272d0e0_0, 0, 1;
    %set/v v0x272d030_0, 2, 1;
    %set/v v0x272cf50_0, 2, 1;
    %set/v v0x272cea0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 37 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 0", v0x272cd50_0, v0x272cdf0_0, v0x272d0e0_0, v0x272d030_0, v0x272cf50_0, v0x272cea0_0, v0x272d160_0;
    %set/v v0x272cd50_0, 1, 1;
    %set/v v0x272cdf0_0, 1, 1;
    %set/v v0x272d0e0_0, 1, 1;
    %set/v v0x272d030_0, 2, 1;
    %set/v v0x272cf50_0, 2, 1;
    %set/v v0x272cea0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 40 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 1", v0x272cd50_0, v0x272cdf0_0, v0x272d0e0_0, v0x272d030_0, v0x272cf50_0, v0x272cea0_0, v0x272d160_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./multiplexer.v";
    "multiplexer.t.v";
