#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x2674d10 .scope module, "structuralMultiplexer" "structuralMultiplexer" 2 16;
 .timescale -9 -12;
v0x2698a30_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x26b7fd0_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x26b8070_0 .net "in0", 0 0, C4<z>; 0 drivers
v0x26b8110_0 .net "in1", 0 0, C4<z>; 0 drivers
v0x26b81c0_0 .net "in2", 0 0, C4<z>; 0 drivers
v0x26b8260_0 .net "in3", 0 0, C4<z>; 0 drivers
v0x26b8340_0 .net "out", 0 0, C4<z>; 0 drivers
S_0x26747c0 .scope module, "testMultiplexer" "testMultiplexer" 3 5;
 .timescale -9 -12;
v0x26b8b00_0 .var "addr0", 0 0;
v0x26b8ba0_0 .var "addr1", 0 0;
v0x26b8c50_0 .var "in0", 0 0;
v0x26b8d00_0 .var "in1", 0 0;
v0x26b8de0_0 .var "in2", 0 0;
v0x26b8e90_0 .var "in3", 0 0;
v0x26b8f10_0 .net "out", 0 0, L_0x26b9340; 1 drivers
S_0x26b83e0 .scope module, "multiplexer" "behavioralMultiplexer" 3 10, 2 3, S_0x26747c0;
 .timescale -9 -12;
v0x26b84d0_0 .net "address", 1 0, L_0x26b9200; 1 drivers
v0x26b8590_0 .net "address0", 0 0, v0x26b8b00_0; 1 drivers
v0x26b8630_0 .net "address1", 0 0, v0x26b8ba0_0; 1 drivers
v0x26b86d0_0 .net "in0", 0 0, v0x26b8c50_0; 1 drivers
v0x26b8750_0 .net "in1", 0 0, v0x26b8d00_0; 1 drivers
v0x26b87f0_0 .net "in2", 0 0, v0x26b8de0_0; 1 drivers
v0x26b88d0_0 .net "in3", 0 0, v0x26b8e90_0; 1 drivers
v0x26b8970_0 .net "inputs", 3 0, L_0x26b8fc0; 1 drivers
v0x26b8a60_0 .alias "out", 0 0, v0x26b8f10_0;
L_0x26b8fc0 .concat [ 1 1 1 1], v0x26b8c50_0, v0x26b8d00_0, v0x26b8de0_0, v0x26b8e90_0;
L_0x26b9200 .concat [ 1 1 0 0], v0x26b8b00_0, v0x26b8ba0_0;
L_0x26b9340 .part/v L_0x26b8fc0, L_0x26b9200, 1;
    .scope S_0x26747c0;
T_0 ;
    %set/v v0x26b8e90_0, 2, 1;
    %set/v v0x26b8de0_0, 2, 1;
    %set/v v0x26b8d00_0, 2, 1;
    %set/v v0x26b8c50_0, 2, 1;
    %vpi_call 3 15 "$display", "addr0 addr1 | in3 in2 in1 in0 | Out | Expected Output";
    %set/v v0x26b8b00_0, 0, 1;
    %set/v v0x26b8ba0_0, 0, 1;
    %set/v v0x26b8e90_0, 2, 1;
    %set/v v0x26b8de0_0, 2, 1;
    %set/v v0x26b8d00_0, 2, 1;
    %set/v v0x26b8c50_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 18 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 0", v0x26b8b00_0, v0x26b8ba0_0, v0x26b8e90_0, v0x26b8de0_0, v0x26b8d00_0, v0x26b8c50_0, v0x26b8f10_0;
    %set/v v0x26b8b00_0, 0, 1;
    %set/v v0x26b8ba0_0, 0, 1;
    %set/v v0x26b8e90_0, 2, 1;
    %set/v v0x26b8de0_0, 2, 1;
    %set/v v0x26b8d00_0, 2, 1;
    %set/v v0x26b8c50_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 21 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 1", v0x26b8b00_0, v0x26b8ba0_0, v0x26b8e90_0, v0x26b8de0_0, v0x26b8d00_0, v0x26b8c50_0, v0x26b8f10_0;
    %set/v v0x26b8b00_0, 0, 1;
    %set/v v0x26b8ba0_0, 1, 1;
    %set/v v0x26b8e90_0, 2, 1;
    %set/v v0x26b8de0_0, 2, 1;
    %set/v v0x26b8d00_0, 0, 1;
    %set/v v0x26b8c50_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 0", v0x26b8b00_0, v0x26b8ba0_0, v0x26b8e90_0, v0x26b8de0_0, v0x26b8d00_0, v0x26b8c50_0, v0x26b8f10_0;
    %set/v v0x26b8b00_0, 0, 1;
    %set/v v0x26b8ba0_0, 1, 1;
    %set/v v0x26b8e90_0, 2, 1;
    %set/v v0x26b8de0_0, 2, 1;
    %set/v v0x26b8d00_0, 1, 1;
    %set/v v0x26b8c50_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 27 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 1", v0x26b8b00_0, v0x26b8ba0_0, v0x26b8e90_0, v0x26b8de0_0, v0x26b8d00_0, v0x26b8c50_0, v0x26b8f10_0;
    %set/v v0x26b8b00_0, 1, 1;
    %set/v v0x26b8ba0_0, 0, 1;
    %set/v v0x26b8e90_0, 2, 1;
    %set/v v0x26b8de0_0, 0, 1;
    %set/v v0x26b8d00_0, 2, 1;
    %set/v v0x26b8c50_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 0", v0x26b8b00_0, v0x26b8ba0_0, v0x26b8e90_0, v0x26b8de0_0, v0x26b8d00_0, v0x26b8c50_0, v0x26b8f10_0;
    %set/v v0x26b8b00_0, 1, 1;
    %set/v v0x26b8ba0_0, 0, 1;
    %set/v v0x26b8e90_0, 2, 1;
    %set/v v0x26b8de0_0, 1, 1;
    %set/v v0x26b8d00_0, 2, 1;
    %set/v v0x26b8c50_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 33 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 1", v0x26b8b00_0, v0x26b8ba0_0, v0x26b8e90_0, v0x26b8de0_0, v0x26b8d00_0, v0x26b8c50_0, v0x26b8f10_0;
    %set/v v0x26b8b00_0, 1, 1;
    %set/v v0x26b8ba0_0, 1, 1;
    %set/v v0x26b8e90_0, 0, 1;
    %set/v v0x26b8de0_0, 2, 1;
    %set/v v0x26b8d00_0, 2, 1;
    %set/v v0x26b8c50_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 36 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 0", v0x26b8b00_0, v0x26b8ba0_0, v0x26b8e90_0, v0x26b8de0_0, v0x26b8d00_0, v0x26b8c50_0, v0x26b8f10_0;
    %set/v v0x26b8b00_0, 1, 1;
    %set/v v0x26b8ba0_0, 1, 1;
    %set/v v0x26b8e90_0, 1, 1;
    %set/v v0x26b8de0_0, 2, 1;
    %set/v v0x26b8d00_0, 2, 1;
    %set/v v0x26b8c50_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 39 "$display", "  %b    %b    |   %b   %b   %b   %b |  %b  | 1", v0x26b8b00_0, v0x26b8ba0_0, v0x26b8e90_0, v0x26b8de0_0, v0x26b8d00_0, v0x26b8c50_0, v0x26b8f10_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./multiplexer.v";
    "multiplexer.t.v";
