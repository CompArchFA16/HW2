#! /usr/local/Cellar/icarus-verilog/10.0/bin/vvp
:ivl_version "10.0 (stable)" "(v10_0)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x7f8492d0e7d0 .scope module, "behavioralMultiplexer" "behavioralMultiplexer" 2 8;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "address0"
    .port_info 2 /INPUT 1 "address1"
    .port_info 3 /INPUT 1 "in0"
    .port_info 4 /INPUT 1 "in1"
    .port_info 5 /INPUT 1 "in2"
    .port_info 6 /INPUT 1 "in3"
v0x7f8492d049f0_0 .net "address", 1 0, L_0x7f8492d235c0;  1 drivers
o0x100f2b038 .functor BUFZ 1, C4<z>; HiZ drive
v0x7f8492d21dc0_0 .net "address0", 0 0, o0x100f2b038;  0 drivers
o0x100f2b068 .functor BUFZ 1, C4<z>; HiZ drive
v0x7f8492d21e60_0 .net "address1", 0 0, o0x100f2b068;  0 drivers
o0x100f2b098 .functor BUFZ 1, C4<z>; HiZ drive
v0x7f8492d21ef0_0 .net "in0", 0 0, o0x100f2b098;  0 drivers
o0x100f2b0c8 .functor BUFZ 1, C4<z>; HiZ drive
v0x7f8492d21f90_0 .net "in1", 0 0, o0x100f2b0c8;  0 drivers
o0x100f2b0f8 .functor BUFZ 1, C4<z>; HiZ drive
v0x7f8492d22070_0 .net "in2", 0 0, o0x100f2b0f8;  0 drivers
o0x100f2b128 .functor BUFZ 1, C4<z>; HiZ drive
v0x7f8492d22110_0 .net "in3", 0 0, o0x100f2b128;  0 drivers
v0x7f8492d221b0_0 .net "inputs", 3 0, L_0x7f8492d23450;  1 drivers
v0x7f8492d22260_0 .net "out", 0 0, L_0x7f8492d236e0;  1 drivers
L_0x7f8492d23450 .concat [ 1 1 1 1], o0x100f2b098, o0x100f2b0c8, o0x100f2b0f8, o0x100f2b128;
L_0x7f8492d235c0 .concat [ 1 1 0 0], o0x100f2b038, o0x100f2b068;
L_0x7f8492d236e0 .part/v L_0x7f8492d23450, L_0x7f8492d235c0, 1;
S_0x7f8492d04890 .scope module, "testMultiplexer" "testMultiplexer" 3 5;
 .timescale -9 -12;
v0x7f8492d22f90_0 .var "addr0", 0 0;
v0x7f8492d23050_0 .var "addr1", 0 0;
v0x7f8492d230e0_0 .var "in0", 0 0;
v0x7f8492d23190_0 .var "in1", 0 0;
v0x7f8492d23220_0 .var "in2", 0 0;
v0x7f8492d232f0_0 .var "in3", 0 0;
v0x7f8492d233a0_0 .net "out", 0 0, L_0x7f8492d24090;  1 drivers
S_0x7f8492d223d0 .scope module, "multiplexer" "structuralMultiplexer" 3 12, 2 21 0, S_0x7f8492d04890;
 .timescale -9 -12;
    .port_info 0 /OUTPUT 1 "out"
    .port_info 1 /INPUT 1 "address0"
    .port_info 2 /INPUT 1 "address1"
    .port_info 3 /INPUT 1 "in0"
    .port_info 4 /INPUT 1 "in1"
    .port_info 5 /INPUT 1 "in2"
    .port_info 6 /INPUT 1 "in3"
L_0x7f8492d23820/d .functor NOT 1, v0x7f8492d22f90_0, C4<0>, C4<0>, C4<0>;
L_0x7f8492d23820 .delay 1 (50000,50000,50000) L_0x7f8492d23820/d;
L_0x7f8492d23910/d .functor NOT 1, v0x7f8492d23050_0, C4<0>, C4<0>, C4<0>;
L_0x7f8492d23910 .delay 1 (50000,50000,50000) L_0x7f8492d23910/d;
L_0x7f8492d23a50/d .functor AND 1, L_0x7f8492d23820, L_0x7f8492d23910, v0x7f8492d230e0_0, C4<1>;
L_0x7f8492d23a50 .delay 1 (50000,50000,50000) L_0x7f8492d23a50/d;
L_0x7f8492d23c50/d .functor AND 1, v0x7f8492d22f90_0, L_0x7f8492d23910, v0x7f8492d23190_0, C4<1>;
L_0x7f8492d23c50 .delay 1 (50000,50000,50000) L_0x7f8492d23c50/d;
L_0x7f8492d23d90/d .functor AND 1, L_0x7f8492d23820, v0x7f8492d23050_0, v0x7f8492d23220_0, C4<1>;
L_0x7f8492d23d90 .delay 1 (50000,50000,50000) L_0x7f8492d23d90/d;
L_0x7f8492d23ed0/d .functor AND 1, v0x7f8492d22f90_0, v0x7f8492d23050_0, v0x7f8492d232f0_0, C4<1>;
L_0x7f8492d23ed0 .delay 1 (50000,50000,50000) L_0x7f8492d23ed0/d;
L_0x7f8492d24090/d .functor OR 1, L_0x7f8492d23a50, L_0x7f8492d23c50, L_0x7f8492d23d90, L_0x7f8492d23ed0;
L_0x7f8492d24090 .delay 1 (50000,50000,50000) L_0x7f8492d24090/d;
v0x7f8492d22640_0 .net "address0", 0 0, v0x7f8492d22f90_0;  1 drivers
v0x7f8492d226f0_0 .net "address1", 0 0, v0x7f8492d23050_0;  1 drivers
v0x7f8492d22790_0 .net "in0", 0 0, v0x7f8492d230e0_0;  1 drivers
v0x7f8492d22840_0 .net "in1", 0 0, v0x7f8492d23190_0;  1 drivers
v0x7f8492d228e0_0 .net "in2", 0 0, v0x7f8492d23220_0;  1 drivers
v0x7f8492d229c0_0 .net "in3", 0 0, v0x7f8492d232f0_0;  1 drivers
v0x7f8492d22a60_0 .net "naddress0", 0 0, L_0x7f8492d23820;  1 drivers
v0x7f8492d22b00_0 .net "naddress1", 0 0, L_0x7f8492d23910;  1 drivers
v0x7f8492d22ba0_0 .net "out", 0 0, L_0x7f8492d24090;  alias, 1 drivers
v0x7f8492d22cb0_0 .net "sel0", 0 0, L_0x7f8492d23a50;  1 drivers
v0x7f8492d22d40_0 .net "sel1", 0 0, L_0x7f8492d23c50;  1 drivers
v0x7f8492d22de0_0 .net "sel2", 0 0, L_0x7f8492d23d90;  1 drivers
v0x7f8492d22e80_0 .net "sel3", 0 0, L_0x7f8492d23ed0;  1 drivers
    .scope S_0x7f8492d04890;
T_0 ;
    %vpi_call 3 15 "$dumpfile", "multiplexer.vcd" {0 0 0};
    %vpi_call 3 16 "$dumpvars" {0 0 0};
    %vpi_call 3 17 "$display", "A0 A1 | i0 i1 i2 i3| out | Expected Output" {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8492d22f90_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8492d23050_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8492d230e0_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d23190_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d23220_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d232f0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 19 "$display", "%b  %b  | %b  %b  %b  %b |   %b | 0", v0x7f8492d22f90_0, v0x7f8492d23050_0, v0x7f8492d230e0_0, v0x7f8492d23190_0, v0x7f8492d23220_0, v0x7f8492d232f0_0, v0x7f8492d233a0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8492d22f90_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8492d23050_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8492d230e0_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d23190_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d23220_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d232f0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 21 "$display", "%b  %b  | %b  %b  %b  %b |   %b | 1", v0x7f8492d22f90_0, v0x7f8492d23050_0, v0x7f8492d230e0_0, v0x7f8492d23190_0, v0x7f8492d23220_0, v0x7f8492d232f0_0, v0x7f8492d233a0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8492d22f90_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8492d23050_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d230e0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8492d23190_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d23220_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d232f0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 23 "$display", "%b  %b  | %b  %b  %b  %b |   %b | 0", v0x7f8492d22f90_0, v0x7f8492d23050_0, v0x7f8492d230e0_0, v0x7f8492d23190_0, v0x7f8492d23220_0, v0x7f8492d232f0_0, v0x7f8492d233a0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8492d22f90_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8492d23050_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d230e0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8492d23190_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d23220_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d232f0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 25 "$display", "%b  %b  | %b  %b  %b  %b |   %b | 1", v0x7f8492d22f90_0, v0x7f8492d23050_0, v0x7f8492d230e0_0, v0x7f8492d23190_0, v0x7f8492d23220_0, v0x7f8492d232f0_0, v0x7f8492d233a0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8492d22f90_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8492d23050_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d230e0_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d23190_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8492d23220_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d232f0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 27 "$display", "%b  %b  | %b  %b  %b  %b |   %b | 0", v0x7f8492d22f90_0, v0x7f8492d23050_0, v0x7f8492d230e0_0, v0x7f8492d23190_0, v0x7f8492d23220_0, v0x7f8492d232f0_0, v0x7f8492d233a0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8492d22f90_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8492d23050_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d230e0_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d23190_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8492d23220_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d232f0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 29 "$display", "%b  %b  | %b  %b  %b  %b |   %b | 1", v0x7f8492d22f90_0, v0x7f8492d23050_0, v0x7f8492d230e0_0, v0x7f8492d23190_0, v0x7f8492d23220_0, v0x7f8492d232f0_0, v0x7f8492d233a0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8492d22f90_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8492d23050_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d230e0_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d23190_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d23220_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8492d232f0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 31 "$display", "%b  %b  | %b  %b  %b  %b |   %b | 0", v0x7f8492d22f90_0, v0x7f8492d23050_0, v0x7f8492d230e0_0, v0x7f8492d23190_0, v0x7f8492d23220_0, v0x7f8492d232f0_0, v0x7f8492d233a0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8492d22f90_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8492d23050_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d230e0_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d23190_0, 0, 1;
    %pushi/vec4 1, 1, 1;
    %store/vec4 v0x7f8492d23220_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8492d232f0_0, 0, 1;
    %delay 500000, 0;
    %vpi_call 3 33 "$display", "%b  %b  | %b  %b  %b  %b |   %b | 1", v0x7f8492d22f90_0, v0x7f8492d23050_0, v0x7f8492d230e0_0, v0x7f8492d23190_0, v0x7f8492d23220_0, v0x7f8492d232f0_0, v0x7f8492d233a0_0 {0 0 0};
    %vpi_call 3 34 "$dumpflush" {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./multiplexer.v";
    "multiplexer.t.v";
