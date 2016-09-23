#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1e22810 .scope module, "behavioralMultiplexer" "behavioralMultiplexer" 2 7;
 .timescale -9 -12;
v0x1e2da30_0 .net "address", 1 0, L_0x1e504a0; 1 drivers
v0x1e4ee50_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x1e4eef0_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x1e4ef90_0 .net "in0", 0 0, C4<z>; 0 drivers
v0x1e4f040_0 .net "in1", 0 0, C4<z>; 0 drivers
v0x1e4f0e0_0 .net "in2", 0 0, C4<z>; 0 drivers
v0x1e4f1c0_0 .net "in3", 0 0, C4<z>; 0 drivers
v0x1e4f260_0 .net "inputs", 3 0, L_0x1e502e0; 1 drivers
v0x1e4f350_0 .net "out", 0 0, L_0x1e505d0; 1 drivers
L_0x1e502e0 .concat [ 1 1 1 1], C4<z>, C4<z>, C4<z>, C4<z>;
L_0x1e504a0 .concat [ 1 1 0 0], C4<z>, C4<z>;
L_0x1e505d0 .part/v L_0x1e502e0, L_0x1e504a0, 1;
S_0x1e0a490 .scope module, "testMultiplexer" "testMultiplexer" 3 5;
 .timescale -9 -12;
v0x1e4fe20_0 .var "addr0", 0 0;
v0x1e4fec0_0 .var "addr1", 0 0;
v0x1e4ff70_0 .var "in0", 0 0;
v0x1e50020_0 .var "in1", 0 0;
v0x1e50100_0 .var "in2", 0 0;
v0x1e501b0_0 .var "in3", 0 0;
v0x1e50230_0 .net "out", 0 0, L_0x1e50e90; 1 drivers
S_0x1e4f3f0 .scope module, "multiplexer" "structuralMultiplexer" 3 12, 2 20, S_0x1e0a490;
 .timescale -9 -12;
L_0x1e4fb50/d .functor NOT 1, v0x1e4fe20_0, C4<0>, C4<0>, C4<0>;
L_0x1e4fb50 .delay (50000,50000,50000) L_0x1e4fb50/d;
L_0x1e507d0/d .functor NOT 1, v0x1e4fec0_0, C4<0>, C4<0>, C4<0>;
L_0x1e507d0 .delay (50000,50000,50000) L_0x1e507d0/d;
L_0x1e508c0/d .functor AND 1, L_0x1e4fb50, L_0x1e507d0, v0x1e4ff70_0, C4<1>;
L_0x1e508c0 .delay (50000,50000,50000) L_0x1e508c0/d;
L_0x1e50a50/d .functor AND 1, v0x1e4fe20_0, L_0x1e507d0, v0x1e50020_0, C4<1>;
L_0x1e50a50 .delay (50000,50000,50000) L_0x1e50a50/d;
L_0x1e50b40/d .functor AND 1, L_0x1e4fb50, v0x1e4fec0_0, v0x1e50100_0, C4<1>;
L_0x1e50b40 .delay (50000,50000,50000) L_0x1e50b40/d;
L_0x1e50c60/d .functor AND 1, v0x1e4fe20_0, v0x1e4fec0_0, v0x1e501b0_0, C4<1>;
L_0x1e50c60 .delay (50000,50000,50000) L_0x1e50c60/d;
L_0x1e50e90/d .functor OR 1, L_0x1e50c60, L_0x1e50b40, L_0x1e50a50, L_0x1e508c0;
L_0x1e50e90 .delay (50000,50000,50000) L_0x1e50e90/d;
v0x1e4f4e0_0 .net "address0", 0 0, v0x1e4fe20_0; 1 drivers
v0x1e4f5a0_0 .net "address1", 0 0, v0x1e4fec0_0; 1 drivers
v0x1e4f640_0 .net "in0", 0 0, v0x1e4ff70_0; 1 drivers
v0x1e4f6e0_0 .net "in1", 0 0, v0x1e50020_0; 1 drivers
v0x1e4f760_0 .net "in2", 0 0, v0x1e50100_0; 1 drivers
v0x1e4f800_0 .net "in3", 0 0, v0x1e501b0_0; 1 drivers
v0x1e4f8a0_0 .net "inter0", 0 0, L_0x1e508c0; 1 drivers
v0x1e4f940_0 .net "inter1", 0 0, L_0x1e50a50; 1 drivers
v0x1e4fa30_0 .net "inter2", 0 0, L_0x1e50b40; 1 drivers
v0x1e4fad0_0 .net "inter3", 0 0, L_0x1e50c60; 1 drivers
v0x1e4fbd0_0 .net "nadd0", 0 0, L_0x1e4fb50; 1 drivers
v0x1e4fc70_0 .net "nadd1", 0 0, L_0x1e507d0; 1 drivers
v0x1e4fd80_0 .alias "out", 0 0, v0x1e50230_0;
    .scope S_0x1e0a490;
T_0 ;
    %vpi_call 3 15 "$dumpfile", "multiplexer.vcd";
    %vpi_call 3 16 "$dumpvars";
    %vpi_call 3 18 "$display", "A0 A1| I0 I1 I2 I3 |  O | Expected Output";
    %set/v v0x1e4fe20_0, 0, 1;
    %set/v v0x1e4fec0_0, 0, 1;
    %set/v v0x1e4ff70_0, 0, 1;
    %set/v v0x1e50020_0, 2, 1;
    %set/v v0x1e50100_0, 2, 1;
    %set/v v0x1e501b0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0x1e4fe20_0, v0x1e4fec0_0, v0x1e4ff70_0, v0x1e50020_0, v0x1e50100_0, v0x1e501b0_0, v0x1e50230_0;
    %set/v v0x1e4fe20_0, 0, 1;
    %set/v v0x1e4fec0_0, 0, 1;
    %set/v v0x1e4ff70_0, 1, 1;
    %set/v v0x1e50020_0, 2, 1;
    %set/v v0x1e50100_0, 2, 1;
    %set/v v0x1e501b0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0x1e4fe20_0, v0x1e4fec0_0, v0x1e4ff70_0, v0x1e50020_0, v0x1e50100_0, v0x1e501b0_0, v0x1e50230_0;
    %set/v v0x1e4fe20_0, 1, 1;
    %set/v v0x1e4fec0_0, 0, 1;
    %set/v v0x1e4ff70_0, 2, 1;
    %set/v v0x1e50020_0, 0, 1;
    %set/v v0x1e50100_0, 2, 1;
    %set/v v0x1e501b0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0x1e4fe20_0, v0x1e4fec0_0, v0x1e4ff70_0, v0x1e50020_0, v0x1e50100_0, v0x1e501b0_0, v0x1e50230_0;
    %set/v v0x1e4fe20_0, 1, 1;
    %set/v v0x1e4fec0_0, 0, 1;
    %set/v v0x1e4ff70_0, 2, 1;
    %set/v v0x1e50020_0, 1, 1;
    %set/v v0x1e50100_0, 2, 1;
    %set/v v0x1e501b0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0x1e4fe20_0, v0x1e4fec0_0, v0x1e4ff70_0, v0x1e50020_0, v0x1e50100_0, v0x1e501b0_0, v0x1e50230_0;
    %set/v v0x1e4fe20_0, 0, 1;
    %set/v v0x1e4fec0_0, 1, 1;
    %set/v v0x1e4ff70_0, 2, 1;
    %set/v v0x1e50020_0, 2, 1;
    %set/v v0x1e50100_0, 0, 1;
    %set/v v0x1e501b0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0x1e4fe20_0, v0x1e4fec0_0, v0x1e4ff70_0, v0x1e50020_0, v0x1e50100_0, v0x1e501b0_0, v0x1e50230_0;
    %set/v v0x1e4fe20_0, 0, 1;
    %set/v v0x1e4fec0_0, 1, 1;
    %set/v v0x1e4ff70_0, 2, 1;
    %set/v v0x1e50020_0, 2, 1;
    %set/v v0x1e50100_0, 1, 1;
    %set/v v0x1e501b0_0, 2, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0x1e4fe20_0, v0x1e4fec0_0, v0x1e4ff70_0, v0x1e50020_0, v0x1e50100_0, v0x1e501b0_0, v0x1e50230_0;
    %set/v v0x1e4fe20_0, 1, 1;
    %set/v v0x1e4fec0_0, 1, 1;
    %set/v v0x1e4ff70_0, 2, 1;
    %set/v v0x1e50020_0, 2, 1;
    %set/v v0x1e50100_0, 2, 1;
    %set/v v0x1e501b0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 32 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 0", v0x1e4fe20_0, v0x1e4fec0_0, v0x1e4ff70_0, v0x1e50020_0, v0x1e50100_0, v0x1e501b0_0, v0x1e50230_0;
    %set/v v0x1e4fe20_0, 1, 1;
    %set/v v0x1e4fec0_0, 1, 1;
    %set/v v0x1e4ff70_0, 2, 1;
    %set/v v0x1e50020_0, 2, 1;
    %set/v v0x1e50100_0, 2, 1;
    %set/v v0x1e501b0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 34 "$display", "%b  %b |  %b  %b  %b  %b |  %b | 1", v0x1e4fe20_0, v0x1e4fec0_0, v0x1e4ff70_0, v0x1e50020_0, v0x1e50100_0, v0x1e501b0_0, v0x1e50230_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./multiplexer.v";
    "multiplexer.t.v";
