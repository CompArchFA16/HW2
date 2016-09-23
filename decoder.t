#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x27cdf40 .scope module, "behavioralDecoder" "behavioralDecoder" 2 7;
 .timescale -9 -12;
v0x27cedf0_0 .net *"_s11", 3 0, L_0x27efc60; 1 drivers
v0x27ee160_0 .net *"_s5", 3 0, L_0x27ef9f0; 1 drivers
v0x27ee200_0 .net *"_s8", 2 0, C4<000>; 1 drivers
v0x27ee2a0_0 .net *"_s9", 1 0, L_0x27efb20; 1 drivers
v0x27ee350_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x27ee3f0_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x27ee4d0_0 .net "enable", 0 0, C4<z>; 0 drivers
v0x27ee570_0 .net "out0", 0 0, L_0x27ef860; 1 drivers
v0x27ee660_0 .net "out1", 0 0, L_0x27ef7c0; 1 drivers
v0x27ee700_0 .net "out2", 0 0, L_0x27ef6a0; 1 drivers
v0x27ee800_0 .net "out3", 0 0, L_0x27ef5a0; 1 drivers
L_0x27ef5a0 .part L_0x27efc60, 3, 1;
L_0x27ef6a0 .part L_0x27efc60, 2, 1;
L_0x27ef7c0 .part L_0x27efc60, 1, 1;
L_0x27ef860 .part L_0x27efc60, 0, 1;
L_0x27ef9f0 .concat [ 1 3 0 0], C4<z>, C4<000>;
L_0x27efb20 .concat [ 1 1 0 0], C4<z>, C4<z>;
L_0x27efc60 .shift/l 4, L_0x27ef9f0, L_0x27efb20;
S_0x27ce030 .scope module, "testDecoder" "testDecoder" 3 5;
 .timescale -9 -12;
v0x27eef30_0 .var "addr0", 0 0;
v0x27eefd0_0 .var "addr1", 0 0;
v0x27ef080_0 .var "enable", 0 0;
v0x27ef130_0 .net "nadd0", 0 0, L_0x27efda0; 1 drivers
v0x27ef210_0 .net "nadd1", 0 0, L_0x27eff30; 1 drivers
v0x27ef2c0_0 .net "out0", 0 0, L_0x27f0070; 1 drivers
v0x27ef340_0 .net "out1", 0 0, L_0x27f01b0; 1 drivers
v0x27ef3f0_0 .net "out2", 0 0, L_0x27f02e0; 1 drivers
v0x27ef4f0_0 .net "out3", 0 0, L_0x27f04a0; 1 drivers
S_0x27ee8a0 .scope module, "decoder" "structuralDecoder" 3 12, 2 18, S_0x27ce030;
 .timescale -9 -12;
L_0x27efda0/d .functor NOT 1, v0x27eef30_0, C4<0>, C4<0>, C4<0>;
L_0x27efda0 .delay (50000,50000,50000) L_0x27efda0/d;
L_0x27eff30/d .functor NOT 1, v0x27eefd0_0, C4<0>, C4<0>, C4<0>;
L_0x27eff30 .delay (50000,50000,50000) L_0x27eff30/d;
L_0x27f0070/d .functor AND 1, L_0x27efda0, L_0x27eff30, v0x27ef080_0, C4<1>;
L_0x27f0070 .delay (50000,50000,50000) L_0x27f0070/d;
L_0x27f01b0/d .functor AND 1, L_0x27eff30, v0x27eef30_0, v0x27ef080_0, C4<1>;
L_0x27f01b0 .delay (50000,50000,50000) L_0x27f01b0/d;
L_0x27f02e0/d .functor AND 1, v0x27eefd0_0, L_0x27efda0, v0x27ef080_0, C4<1>;
L_0x27f02e0 .delay (50000,50000,50000) L_0x27f02e0/d;
L_0x27f04a0/d .functor AND 1, v0x27eef30_0, v0x27eefd0_0, v0x27ef080_0, C4<1>;
L_0x27f04a0 .delay (50000,50000,50000) L_0x27f04a0/d;
v0x27ee990_0 .net "address0", 0 0, v0x27eef30_0; 1 drivers
v0x27eea50_0 .net "address1", 0 0, v0x27eefd0_0; 1 drivers
v0x27eeaf0_0 .net "enable", 0 0, v0x27ef080_0; 1 drivers
v0x27eeb90_0 .alias "nadd0", 0 0, v0x27ef130_0;
v0x27eec10_0 .alias "nadd1", 0 0, v0x27ef210_0;
v0x27eecb0_0 .alias "out0", 0 0, v0x27ef2c0_0;
v0x27eed50_0 .alias "out1", 0 0, v0x27ef340_0;
v0x27eedf0_0 .alias "out2", 0 0, v0x27ef3f0_0;
v0x27eee90_0 .alias "out3", 0 0, v0x27ef4f0_0;
    .scope S_0x27ce030;
T_0 ;
    %vpi_call 3 15 "$dumpfile", "decoder.vcd";
    %vpi_call 3 16 "$dumpvars";
    %vpi_call 3 18 "$display", "En A0 A1| O0 O1 O2 O3 | Expected Output";
    %set/v v0x27ef080_0, 0, 1;
    %set/v v0x27eef30_0, 0, 1;
    %set/v v0x27eefd0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x27ef080_0, v0x27eef30_0, v0x27eefd0_0, v0x27ef2c0_0, v0x27ef340_0, v0x27ef3f0_0, v0x27ef4f0_0;
    %set/v v0x27ef080_0, 0, 1;
    %set/v v0x27eef30_0, 1, 1;
    %set/v v0x27eefd0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x27ef080_0, v0x27eef30_0, v0x27eefd0_0, v0x27ef2c0_0, v0x27ef340_0, v0x27ef3f0_0, v0x27ef4f0_0;
    %set/v v0x27ef080_0, 0, 1;
    %set/v v0x27eef30_0, 0, 1;
    %set/v v0x27eefd0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x27ef080_0, v0x27eef30_0, v0x27eefd0_0, v0x27ef2c0_0, v0x27ef340_0, v0x27ef3f0_0, v0x27ef4f0_0;
    %set/v v0x27ef080_0, 0, 1;
    %set/v v0x27eef30_0, 1, 1;
    %set/v v0x27eefd0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x27ef080_0, v0x27eef30_0, v0x27eefd0_0, v0x27ef2c0_0, v0x27ef340_0, v0x27ef3f0_0, v0x27ef4f0_0;
    %set/v v0x27ef080_0, 1, 1;
    %set/v v0x27eef30_0, 0, 1;
    %set/v v0x27eefd0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b  %b  %b |  %b  %b  %b  %b | O0 Only", v0x27ef080_0, v0x27eef30_0, v0x27eefd0_0, v0x27ef2c0_0, v0x27ef340_0, v0x27ef3f0_0, v0x27ef4f0_0;
    %set/v v0x27ef080_0, 1, 1;
    %set/v v0x27eef30_0, 1, 1;
    %set/v v0x27eefd0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b  %b  %b |  %b  %b  %b  %b | O1 Only", v0x27ef080_0, v0x27eef30_0, v0x27eefd0_0, v0x27ef2c0_0, v0x27ef340_0, v0x27ef3f0_0, v0x27ef4f0_0;
    %set/v v0x27ef080_0, 1, 1;
    %set/v v0x27eef30_0, 0, 1;
    %set/v v0x27eefd0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 32 "$display", "%b  %b  %b |  %b  %b  %b  %b | O2 Only", v0x27ef080_0, v0x27eef30_0, v0x27eefd0_0, v0x27ef2c0_0, v0x27ef340_0, v0x27ef3f0_0, v0x27ef4f0_0;
    %set/v v0x27ef080_0, 1, 1;
    %set/v v0x27eef30_0, 1, 1;
    %set/v v0x27eefd0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 34 "$display", "%b  %b  %b |  %b  %b  %b  %b | O3 Only", v0x27ef080_0, v0x27eef30_0, v0x27eefd0_0, v0x27ef2c0_0, v0x27ef340_0, v0x27ef3f0_0, v0x27ef4f0_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./decoder.v";
    "decoder.t.v";
