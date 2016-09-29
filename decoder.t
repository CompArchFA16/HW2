#! /usr/local/Cellar/icarus-verilog/10.0/bin/vvp
:ivl_version "10.0 (stable)" "(v10_0)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x7fc651c05100 .scope module, "behavioralDecoder" "behavioralDecoder" 2 7;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "out0"
    .port_info 1 /OUTPUT 1 "out1"
    .port_info 2 /OUTPUT 1 "out2"
    .port_info 3 /OUTPUT 1 "out3"
    .port_info 4 /INPUT 1 "address0"
    .port_info 5 /INPUT 1 "address1"
    .port_info 6 /INPUT 1 "enable"
v0x7fc651c03e20_0 .net *"_s11", 3 0, L_0x7fc651c23a10;  1 drivers
v0x7fc651c21ed0_0 .net *"_s5", 3 0, L_0x7fc651c23800;  1 drivers
L_0x10f5fc008 .functor BUFT 1, C4<000>, C4<0>, C4<0>, C4<0>;
v0x7fc651c21f70_0 .net *"_s8", 2 0, L_0x10f5fc008;  1 drivers
v0x7fc651c22020_0 .net *"_s9", 1 0, L_0x7fc651c23950;  1 drivers
o0x10f5ca0c8 .functor BUFZ 1, C4<z>; HiZ drive
v0x7fc651c220d0_0 .net "address0", 0 0, o0x10f5ca0c8;  0 drivers
o0x10f5ca0f8 .functor BUFZ 1, C4<z>; HiZ drive
v0x7fc651c221b0_0 .net "address1", 0 0, o0x10f5ca0f8;  0 drivers
o0x10f5ca128 .functor BUFZ 1, C4<z>; HiZ drive
v0x7fc651c22250_0 .net "enable", 0 0, o0x10f5ca128;  0 drivers
v0x7fc651c222f0_0 .net "out0", 0 0, L_0x7fc651c236e0;  1 drivers
v0x7fc651c22390_0 .net "out1", 0 0, L_0x7fc651c23620;  1 drivers
v0x7fc651c224a0_0 .net "out2", 0 0, L_0x7fc651c23520;  1 drivers
v0x7fc651c22530_0 .net "out3", 0 0, L_0x7fc651c23440;  1 drivers
L_0x7fc651c23440 .part L_0x7fc651c23a10, 3, 1;
L_0x7fc651c23520 .part L_0x7fc651c23a10, 2, 1;
L_0x7fc651c23620 .part L_0x7fc651c23a10, 1, 1;
L_0x7fc651c236e0 .part L_0x7fc651c23a10, 0, 1;
L_0x7fc651c23800 .concat [ 1 3 0 0], o0x10f5ca128, L_0x10f5fc008;
L_0x7fc651c23950 .concat [ 1 1 0 0], o0x10f5ca0c8, o0x10f5ca0f8;
L_0x7fc651c23a10 .shift/l 4, L_0x7fc651c23800, L_0x7fc651c23950;
S_0x7fc651c03cc0 .scope module, "testDecoder" "testDecoder" 3 5;
 .timescale -9 -12;
v0x7fc651c22f80_0 .var "addr0", 0 0;
v0x7fc651c23040_0 .var "addr1", 0 0;
v0x7fc651c230d0_0 .var "enable", 0 0;
v0x7fc651c23180_0 .net "out0", 0 0, L_0x7fc651c23d60;  1 drivers
v0x7fc651c23210_0 .net "out1", 0 0, L_0x7fc651c23f60;  1 drivers
v0x7fc651c232e0_0 .net "out2", 0 0, L_0x7fc651c240a0;  1 drivers
v0x7fc651c23390_0 .net "out3", 0 0, L_0x7fc651c24260;  1 drivers
S_0x7fc651c22640 .scope module, "decoder" "structuralDecoder" 3 11, 2 18 0, S_0x7fc651c03cc0;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "out0"
    .port_info 1 /OUTPUT 1 "out1"
    .port_info 2 /OUTPUT 1 "out2"
    .port_info 3 /OUTPUT 1 "out3"
    .port_info 4 /INPUT 1 "address0"
    .port_info 5 /INPUT 1 "address1"
    .port_info 6 /INPUT 1 "enable"
L_0x7fc651c23b70/d .functor NOT 1, v0x7fc651c22f80_0, C4<0>, C4<0>, C4<0>;
L_0x7fc651c23b70 .delay 1 (50000,50000,50000) L_0x7fc651c23b70/d;
L_0x7fc651c23c20/d .functor NOT 1, v0x7fc651c23040_0, C4<0>, C4<0>, C4<0>;
L_0x7fc651c23c20 .delay 1 (50000,50000,50000) L_0x7fc651c23c20/d;
L_0x7fc651c23d60/d .functor AND 1, L_0x7fc651c23b70, L_0x7fc651c23c20, v0x7fc651c230d0_0, C4<1>;
L_0x7fc651c23d60 .delay 1 (50000,50000,50000) L_0x7fc651c23d60/d;
L_0x7fc651c23f60/d .functor AND 1, v0x7fc651c22f80_0, L_0x7fc651c23c20, v0x7fc651c230d0_0, C4<1>;
L_0x7fc651c23f60 .delay 1 (50000,50000,50000) L_0x7fc651c23f60/d;
L_0x7fc651c240a0/d .functor AND 1, L_0x7fc651c23b70, v0x7fc651c23040_0, v0x7fc651c230d0_0, C4<1>;
L_0x7fc651c240a0 .delay 1 (50000,50000,50000) L_0x7fc651c240a0/d;
L_0x7fc651c24260/d .functor AND 1, v0x7fc651c22f80_0, v0x7fc651c23040_0, v0x7fc651c230d0_0, C4<1>;
L_0x7fc651c24260 .delay 1 (50000,50000,50000) L_0x7fc651c24260/d;
v0x7fc651c228b0_0 .net "address0", 0 0, v0x7fc651c22f80_0;  1 drivers
v0x7fc651c22960_0 .net "address1", 0 0, v0x7fc651c23040_0;  1 drivers
v0x7fc651c22a00_0 .net "enable", 0 0, v0x7fc651c230d0_0;  1 drivers
v0x7fc651c22ab0_0 .net "naddress0", 0 0, L_0x7fc651c23b70;  1 drivers
v0x7fc651c22b50_0 .net "naddress1", 0 0, L_0x7fc651c23c20;  1 drivers
v0x7fc651c22c30_0 .net "out0", 0 0, L_0x7fc651c23d60;  alias, 1 drivers
v0x7fc651c22cd0_0 .net "out1", 0 0, L_0x7fc651c23f60;  alias, 1 drivers
v0x7fc651c22d70_0 .net "out2", 0 0, L_0x7fc651c240a0;  alias, 1 drivers
v0x7fc651c22e10_0 .net "out3", 0 0, L_0x7fc651c24260;  alias, 1 drivers
    .scope S_0x7fc651c03cc0;
T_0 ;
    %vpi_call 3 14 "$dumpfile", "decoder.vcd" {0 0 0};
    %vpi_call 3 15 "$dumpvars" {0 0 0};
    %vpi_call 3 16 "$display", "En A0 A1| O0 O1 O2 O3 | Expected Output" {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fc651c230d0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fc651c22f80_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fc651c23040_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 18 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x7fc651c230d0_0, v0x7fc651c22f80_0, v0x7fc651c23040_0, v0x7fc651c23180_0, v0x7fc651c23210_0, v0x7fc651c232e0_0, v0x7fc651c23390_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fc651c230d0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fc651c22f80_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fc651c23040_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 20 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x7fc651c230d0_0, v0x7fc651c22f80_0, v0x7fc651c23040_0, v0x7fc651c23180_0, v0x7fc651c23210_0, v0x7fc651c232e0_0, v0x7fc651c23390_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fc651c230d0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fc651c22f80_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fc651c23040_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 22 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x7fc651c230d0_0, v0x7fc651c22f80_0, v0x7fc651c23040_0, v0x7fc651c23180_0, v0x7fc651c23210_0, v0x7fc651c232e0_0, v0x7fc651c23390_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fc651c230d0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fc651c22f80_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fc651c23040_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 24 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x7fc651c230d0_0, v0x7fc651c22f80_0, v0x7fc651c23040_0, v0x7fc651c23180_0, v0x7fc651c23210_0, v0x7fc651c232e0_0, v0x7fc651c23390_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fc651c230d0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fc651c22f80_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fc651c23040_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 26 "$display", "%b  %b  %b |  %b  %b  %b  %b | O0 Only", v0x7fc651c230d0_0, v0x7fc651c22f80_0, v0x7fc651c23040_0, v0x7fc651c23180_0, v0x7fc651c23210_0, v0x7fc651c232e0_0, v0x7fc651c23390_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fc651c230d0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fc651c22f80_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fc651c23040_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 28 "$display", "%b  %b  %b |  %b  %b  %b  %b | O1 Only", v0x7fc651c230d0_0, v0x7fc651c22f80_0, v0x7fc651c23040_0, v0x7fc651c23180_0, v0x7fc651c23210_0, v0x7fc651c232e0_0, v0x7fc651c23390_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fc651c230d0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fc651c22f80_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fc651c23040_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 30 "$display", "%b  %b  %b |  %b  %b  %b  %b | O2 Only", v0x7fc651c230d0_0, v0x7fc651c22f80_0, v0x7fc651c23040_0, v0x7fc651c23180_0, v0x7fc651c23210_0, v0x7fc651c232e0_0, v0x7fc651c23390_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fc651c230d0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fc651c22f80_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fc651c23040_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 32 "$display", "%b  %b  %b |  %b  %b  %b  %b | O3 Only", v0x7fc651c230d0_0, v0x7fc651c22f80_0, v0x7fc651c23040_0, v0x7fc651c23180_0, v0x7fc651c23210_0, v0x7fc651c232e0_0, v0x7fc651c23390_0 {0 0 0};
    %vpi_call 3 33 "$dumpflush" {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./decoder.v";
    "decoder.t.v";
