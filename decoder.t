#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x1d457b0 .scope module, "behavioralDecoder" "behavioralDecoder" 2 6;
 .timescale -9 -12;
v0x1d51280_0 .net *"_s11", 3 0, L_0x1d712d0; 1 drivers
v0x1d6f640_0 .net *"_s5", 3 0, L_0x1d71020; 1 drivers
v0x1d6f6e0_0 .net *"_s8", 2 0, C4<000>; 1 drivers
v0x1d6f780_0 .net *"_s9", 1 0, L_0x1d71190; 1 drivers
v0x1d6f830_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x1d6f8d0_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x1d6f9b0_0 .net "enable", 0 0, C4<z>; 0 drivers
v0x1d6fa50_0 .net "out0", 0 0, L_0x1d70e90; 1 drivers
v0x1d6fb40_0 .net "out1", 0 0, L_0x1d70df0; 1 drivers
v0x1d6fbe0_0 .net "out2", 0 0, L_0x1d70d20; 1 drivers
v0x1d6fce0_0 .net "out3", 0 0, L_0x1d70c20; 1 drivers
L_0x1d70c20 .part L_0x1d712d0, 3, 1;
L_0x1d70d20 .part L_0x1d712d0, 2, 1;
L_0x1d70df0 .part L_0x1d712d0, 1, 1;
L_0x1d70e90 .part L_0x1d712d0, 0, 1;
L_0x1d71020 .concat [ 1 3 0 0], C4<z>, C4<000>;
L_0x1d71190 .concat [ 1 1 0 0], C4<z>, C4<z>;
L_0x1d712d0 .shift/l 4, L_0x1d71020, L_0x1d71190;
S_0x1d4ef40 .scope module, "testDecoder" "testDecoder" 3 5;
 .timescale -9 -12;
v0x1d70760_0 .var "addr0", 0 0;
v0x1d70800_0 .var "addr1", 0 0;
v0x1d708b0_0 .var "enable", 0 0;
v0x1d70960_0 .net "out0", 0 0, L_0x1d71890; 1 drivers
v0x1d70a40_0 .net "out1", 0 0, L_0x1d71940; 1 drivers
v0x1d70af0_0 .net "out2", 0 0, L_0x1d71a90; 1 drivers
v0x1d70b70_0 .net "out3", 0 0, L_0x1d71c20; 1 drivers
S_0x1d6fd80 .scope module, "decoder" "structuralDecoder" 3 11, 2 17, S_0x1d4ef40;
 .timescale -9 -12;
L_0x1d70490 .functor NOT 1, v0x1d70760_0, C4<0>, C4<0>, C4<0>;
L_0x1d71460 .functor NOT 1, v0x1d70800_0, C4<0>, C4<0>, C4<0>;
L_0x1d71510 .functor AND 1, L_0x1d70490, L_0x1d71460, C4<1>, C4<1>;
L_0x1d71610 .functor AND 1, v0x1d70760_0, L_0x1d71460, C4<1>, C4<1>;
L_0x1d71670 .functor AND 1, L_0x1d70490, v0x1d70800_0, C4<1>, C4<1>;
L_0x1d716d0 .functor AND 1, v0x1d70760_0, v0x1d70800_0, C4<1>, C4<1>;
L_0x1d71890 .functor AND 1, L_0x1d71510, v0x1d708b0_0, C4<1>, C4<1>;
L_0x1d71940 .functor AND 1, L_0x1d71610, v0x1d708b0_0, C4<1>, C4<1>;
L_0x1d71a90 .functor AND 1, L_0x1d71670, v0x1d708b0_0, C4<1>, C4<1>;
L_0x1d71c20 .functor AND 1, L_0x1d716d0, v0x1d708b0_0, C4<1>, C4<1>;
v0x1d6fe70_0 .net "address0", 0 0, v0x1d70760_0; 1 drivers
v0x1d6ff30_0 .net "address1", 0 0, v0x1d70800_0; 1 drivers
v0x1d6ffd0_0 .net "enable", 0 0, v0x1d708b0_0; 1 drivers
v0x1d70070_0 .net "naddress0", 0 0, L_0x1d70490; 1 drivers
v0x1d700f0_0 .net "naddress1", 0 0, L_0x1d71460; 1 drivers
v0x1d70190_0 .net "o0", 0 0, L_0x1d71510; 1 drivers
v0x1d70230_0 .net "o1", 0 0, L_0x1d71610; 1 drivers
v0x1d702d0_0 .net "o2", 0 0, L_0x1d71670; 1 drivers
v0x1d70370_0 .net "o3", 0 0, L_0x1d716d0; 1 drivers
v0x1d70410_0 .alias "out0", 0 0, v0x1d70960_0;
v0x1d70510_0 .alias "out1", 0 0, v0x1d70a40_0;
v0x1d705b0_0 .alias "out2", 0 0, v0x1d70af0_0;
v0x1d706c0_0 .alias "out3", 0 0, v0x1d70b70_0;
    .scope S_0x1d4ef40;
T_0 ;
    %vpi_call 3 14 "$dumpfile", "decoder.vcd";
    %vpi_call 3 15 "$dumpvars";
    %vpi_call 3 17 "$display", "En A0 A1| O0 O1 O2 O3 | Expected Output";
    %set/v v0x1d708b0_0, 0, 1;
    %set/v v0x1d70760_0, 0, 1;
    %set/v v0x1d70800_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 19 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x1d708b0_0, v0x1d70760_0, v0x1d70800_0, v0x1d70960_0, v0x1d70a40_0, v0x1d70af0_0, v0x1d70b70_0;
    %set/v v0x1d708b0_0, 0, 1;
    %set/v v0x1d70760_0, 1, 1;
    %set/v v0x1d70800_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 21 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x1d708b0_0, v0x1d70760_0, v0x1d70800_0, v0x1d70960_0, v0x1d70a40_0, v0x1d70af0_0, v0x1d70b70_0;
    %set/v v0x1d708b0_0, 0, 1;
    %set/v v0x1d70760_0, 0, 1;
    %set/v v0x1d70800_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 23 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x1d708b0_0, v0x1d70760_0, v0x1d70800_0, v0x1d70960_0, v0x1d70a40_0, v0x1d70af0_0, v0x1d70b70_0;
    %set/v v0x1d708b0_0, 0, 1;
    %set/v v0x1d70760_0, 1, 1;
    %set/v v0x1d70800_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 25 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x1d708b0_0, v0x1d70760_0, v0x1d70800_0, v0x1d70960_0, v0x1d70a40_0, v0x1d70af0_0, v0x1d70b70_0;
    %set/v v0x1d708b0_0, 1, 1;
    %set/v v0x1d70760_0, 0, 1;
    %set/v v0x1d70800_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 27 "$display", "%b  %b  %b |  %b  %b  %b  %b | O0 Only", v0x1d708b0_0, v0x1d70760_0, v0x1d70800_0, v0x1d70960_0, v0x1d70a40_0, v0x1d70af0_0, v0x1d70b70_0;
    %set/v v0x1d708b0_0, 1, 1;
    %set/v v0x1d70760_0, 1, 1;
    %set/v v0x1d70800_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 29 "$display", "%b  %b  %b |  %b  %b  %b  %b | O1 Only", v0x1d708b0_0, v0x1d70760_0, v0x1d70800_0, v0x1d70960_0, v0x1d70a40_0, v0x1d70af0_0, v0x1d70b70_0;
    %set/v v0x1d708b0_0, 1, 1;
    %set/v v0x1d70760_0, 0, 1;
    %set/v v0x1d70800_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 31 "$display", "%b  %b  %b |  %b  %b  %b  %b | O2 Only", v0x1d708b0_0, v0x1d70760_0, v0x1d70800_0, v0x1d70960_0, v0x1d70a40_0, v0x1d70af0_0, v0x1d70b70_0;
    %set/v v0x1d708b0_0, 1, 1;
    %set/v v0x1d70760_0, 1, 1;
    %set/v v0x1d70800_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 33 "$display", "%b  %b  %b |  %b  %b  %b  %b | O3 Only", v0x1d708b0_0, v0x1d70760_0, v0x1d70800_0, v0x1d70960_0, v0x1d70a40_0, v0x1d70af0_0, v0x1d70b70_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./decoder.v";
    "decoder.t.v";
