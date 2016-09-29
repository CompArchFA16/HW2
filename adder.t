#! /usr/local/Cellar/icarus-verilog/10.0/bin/vvp
:ivl_version "10.0 (stable)" "(v10_0)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x7fe281d0f3e0 .scope module, "behavioralFullAdder" "behavioralFullAdder" 2 8;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "a"
    .port_info 3 /INPUT 1 "b"
    .port_info 4 /INPUT 1 "carryin"
L_0x106671050 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x7fe281d168a0_0 .net *"_s10", 0 0, L_0x106671050;  1 drivers
v0x7fe281d25f80_0 .net *"_s11", 1 0, L_0x7fe281d27850;  1 drivers
v0x7fe281d26020_0 .net *"_s13", 1 0, L_0x7fe281d279c0;  1 drivers
L_0x106671098 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x7fe281d260d0_0 .net *"_s16", 0 0, L_0x106671098;  1 drivers
v0x7fe281d26180_0 .net *"_s17", 1 0, L_0x7fe281d27aa0;  1 drivers
v0x7fe281d26270_0 .net *"_s3", 1 0, L_0x7fe281d275b0;  1 drivers
L_0x106671008 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v0x7fe281d26320_0 .net *"_s6", 0 0, L_0x106671008;  1 drivers
v0x7fe281d263d0_0 .net *"_s7", 1 0, L_0x7fe281d27710;  1 drivers
o0x10663f188 .functor BUFZ 1, C4<z>; HiZ drive
v0x7fe281d26480_0 .net "a", 0 0, o0x10663f188;  0 drivers
o0x10663f1b8 .functor BUFZ 1, C4<z>; HiZ drive
v0x7fe281d26590_0 .net "b", 0 0, o0x10663f1b8;  0 drivers
o0x10663f1e8 .functor BUFZ 1, C4<z>; HiZ drive
v0x7fe281d26620_0 .net "carryin", 0 0, o0x10663f1e8;  0 drivers
v0x7fe281d266c0_0 .net "carryout", 0 0, L_0x7fe281d273d0;  1 drivers
v0x7fe281d26760_0 .net "sum", 0 0, L_0x7fe281d274b0;  1 drivers
L_0x7fe281d273d0 .part L_0x7fe281d27aa0, 1, 1;
L_0x7fe281d274b0 .part L_0x7fe281d27aa0, 0, 1;
L_0x7fe281d275b0 .concat [ 1 1 0 0], o0x10663f188, L_0x106671008;
L_0x7fe281d27710 .concat [ 1 1 0 0], o0x10663f1b8, L_0x106671050;
L_0x7fe281d27850 .arith/sum 2, L_0x7fe281d275b0, L_0x7fe281d27710;
L_0x7fe281d279c0 .concat [ 1 1 0 0], o0x10663f1e8, L_0x106671098;
L_0x7fe281d27aa0 .arith/sum 2, L_0x7fe281d27850, L_0x7fe281d279c0;
S_0x7fe281d0f230 .scope module, "testFullAdder" "testFullAdder" 3 5;
 .timescale -9 -12;
v0x7fe281d27060_0 .var "a", 0 0;
v0x7fe281d27110_0 .var "b", 0 0;
v0x7fe281d271a0_0 .var "carryin", 0 0;
v0x7fe281d27250_0 .net "carryout", 0 0, L_0x7fe281d28140;  1 drivers
v0x7fe281d27300_0 .net "sum", 0 0, L_0x7fe281d27d50;  1 drivers
S_0x7fe281d26880 .scope module, "adder" "structuralFullAdder" 3 10, 2 20 0, S_0x7fe281d0f230;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "sum"
    .port_info 1 /OUTPUT 1 "carryout"
    .port_info 2 /INPUT 1 "a"
    .port_info 3 /INPUT 1 "b"
    .port_info 4 /INPUT 1 "carryin"
L_0x7fe281d27c20/d .functor XOR 1, v0x7fe281d27060_0, v0x7fe281d27110_0, C4<0>, C4<0>;
L_0x7fe281d27c20 .delay 1 (50000,50000,50000) L_0x7fe281d27c20/d;
L_0x7fe281d27d50/d .functor XOR 1, L_0x7fe281d27c20, v0x7fe281d271a0_0, C4<0>, C4<0>;
L_0x7fe281d27d50 .delay 1 (50000,50000,50000) L_0x7fe281d27d50/d;
L_0x7fe281d27f10/d .functor AND 1, v0x7fe281d27060_0, v0x7fe281d27110_0, C4<1>, C4<1>;
L_0x7fe281d27f10 .delay 1 (50000,50000,50000) L_0x7fe281d27f10/d;
L_0x7fe281d28050/d .functor AND 1, v0x7fe281d271a0_0, L_0x7fe281d27c20, C4<1>, C4<1>;
L_0x7fe281d28050 .delay 1 (50000,50000,50000) L_0x7fe281d28050/d;
L_0x7fe281d28140/d .functor OR 1, L_0x7fe281d27f10, L_0x7fe281d28050, C4<0>, C4<0>;
L_0x7fe281d28140 .delay 1 (50000,50000,50000) L_0x7fe281d28140/d;
v0x7fe281d26ab0_0 .net "a", 0 0, v0x7fe281d27060_0;  1 drivers
v0x7fe281d26b40_0 .net "aandb", 0 0, L_0x7fe281d27f10;  1 drivers
v0x7fe281d26bd0_0 .net "axorb", 0 0, L_0x7fe281d27c20;  1 drivers
v0x7fe281d26c80_0 .net "b", 0 0, v0x7fe281d27110_0;  1 drivers
v0x7fe281d26d20_0 .net "carryin", 0 0, v0x7fe281d271a0_0;  1 drivers
v0x7fe281d26e00_0 .net "carryinandaxorb", 0 0, L_0x7fe281d28050;  1 drivers
v0x7fe281d26ea0_0 .net "carryout", 0 0, L_0x7fe281d28140;  alias, 1 drivers
v0x7fe281d26f40_0 .net "sum", 0 0, L_0x7fe281d27d50;  alias, 1 drivers
    .scope S_0x7fe281d0f230;
T_0 ;
    %vpi_call 3 13 "$dumpfile", "adder.vcd" {0 0 0};
    %vpi_call 3 14 "$dumpvars" {0 0 0};
    %vpi_call 3 15 "$display", "a  b  ci | sum co | sum co (expected)" {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fe281d27060_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fe281d27110_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fe281d271a0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 17 "$display", "%b  %b   %b |   %b  %b |   0  0", v0x7fe281d27060_0, v0x7fe281d27110_0, v0x7fe281d271a0_0, v0x7fe281d27300_0, v0x7fe281d27250_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fe281d27060_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fe281d27110_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fe281d271a0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 19 "$display", "%b  %b   %b |   %b  %b |   1  0", v0x7fe281d27060_0, v0x7fe281d27110_0, v0x7fe281d271a0_0, v0x7fe281d27300_0, v0x7fe281d27250_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fe281d27060_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fe281d27110_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fe281d271a0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 21 "$display", "%b  %b   %b |   %b  %b |   1  0", v0x7fe281d27060_0, v0x7fe281d27110_0, v0x7fe281d271a0_0, v0x7fe281d27300_0, v0x7fe281d27250_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fe281d27060_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fe281d27110_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fe281d271a0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 23 "$display", "%b  %b   %b |   %b  %b |   0  1", v0x7fe281d27060_0, v0x7fe281d27110_0, v0x7fe281d271a0_0, v0x7fe281d27300_0, v0x7fe281d27250_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fe281d27060_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fe281d27110_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fe281d271a0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 25 "$display", "%b  %b   %b |   %b  %b |   1  0", v0x7fe281d27060_0, v0x7fe281d27110_0, v0x7fe281d271a0_0, v0x7fe281d27300_0, v0x7fe281d27250_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fe281d27060_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fe281d27110_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fe281d271a0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 27 "$display", "%b  %b   %b |   %b  %b |   0  1", v0x7fe281d27060_0, v0x7fe281d27110_0, v0x7fe281d271a0_0, v0x7fe281d27300_0, v0x7fe281d27250_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7fe281d27060_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fe281d27110_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fe281d271a0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 29 "$display", "%b  %b   %b |   %b  %b |   0  1", v0x7fe281d27060_0, v0x7fe281d27110_0, v0x7fe281d271a0_0, v0x7fe281d27300_0, v0x7fe281d27250_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fe281d27060_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fe281d27110_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7fe281d271a0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 31 "$display", "%b  %b   %b |   %b  %b |   1  1", v0x7fe281d27060_0, v0x7fe281d27110_0, v0x7fe281d271a0_0, v0x7fe281d27300_0, v0x7fe281d27250_0 {0 0 0};
    %vpi_call 3 32 "$dumpflush" {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./adder.v";
    "adder.t.v";
