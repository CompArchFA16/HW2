#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0x17f3fe0 .scope module, "behavioralDecoder" "behavioralDecoder" 2 6;
 .timescale -9 -12;
v0x17f6280_0 .net *"_s11", 3 0, L_0x18162c0; 1 drivers
v0x1814630_0 .net *"_s5", 3 0, L_0x1816010; 1 drivers
v0x18146d0_0 .net *"_s8", 2 0, C4<000>; 1 drivers
v0x1814770_0 .net *"_s9", 1 0, L_0x1816180; 1 drivers
v0x1814820_0 .net "address0", 0 0, C4<z>; 0 drivers
v0x18148c0_0 .net "address1", 0 0, C4<z>; 0 drivers
v0x18149a0_0 .net "enable", 0 0, C4<z>; 0 drivers
v0x1814a40_0 .net "out0", 0 0, L_0x1815e80; 1 drivers
v0x1814b30_0 .net "out1", 0 0, L_0x1815de0; 1 drivers
v0x1814bd0_0 .net "out2", 0 0, L_0x1815d10; 1 drivers
v0x1814cd0_0 .net "out3", 0 0, L_0x1815c10; 1 drivers
L_0x1815c10 .part L_0x18162c0, 3, 1;
L_0x1815d10 .part L_0x18162c0, 2, 1;
L_0x1815de0 .part L_0x18162c0, 1, 1;
L_0x1815e80 .part L_0x18162c0, 0, 1;
L_0x1816010 .concat [ 1 3 0 0], C4<z>, C4<000>;
L_0x1816180 .concat [ 1 1 0 0], C4<z>, C4<z>;
L_0x18162c0 .shift/l 4, L_0x1816010, L_0x1816180;
S_0x17f40d0 .scope module, "testDecoder" "testDecoder" 3 5;
 .timescale -9 -12;
v0x1815750_0 .var "addr0", 0 0;
v0x18157f0_0 .var "addr1", 0 0;
v0x18158a0_0 .var "enable", 0 0;
v0x1815950_0 .net "out0", 0 0, L_0x1816880; 1 drivers
v0x1815a30_0 .net "out1", 0 0, L_0x1816930; 1 drivers
v0x1815ae0_0 .net "out2", 0 0, L_0x1816a80; 1 drivers
v0x1815b60_0 .net "out3", 0 0, L_0x1816c10; 1 drivers
S_0x1814d70 .scope module, "decoder" "structuralDecoder" 3 11, 2 17, S_0x17f40d0;
 .timescale -9 -12;
L_0x1815480 .functor NOT 1, v0x1815750_0, C4<0>, C4<0>, C4<0>;
L_0x1816450 .functor NOT 1, v0x18157f0_0, C4<0>, C4<0>, C4<0>;
L_0x1816500 .functor AND 1, L_0x1815480, L_0x1816450, C4<1>, C4<1>;
L_0x1816600 .functor AND 1, v0x1815750_0, L_0x1816450, C4<1>, C4<1>;
L_0x1816660 .functor AND 1, L_0x1815480, v0x18157f0_0, C4<1>, C4<1>;
L_0x18166c0 .functor AND 1, v0x1815750_0, v0x18157f0_0, C4<1>, C4<1>;
L_0x1816880 .functor AND 1, L_0x1816500, v0x18158a0_0, C4<1>, C4<1>;
L_0x1816930 .functor AND 1, L_0x1816600, v0x18158a0_0, C4<1>, C4<1>;
L_0x1816a80 .functor AND 1, L_0x1816660, v0x18158a0_0, C4<1>, C4<1>;
L_0x1816c10 .functor AND 1, L_0x18166c0, v0x18158a0_0, C4<1>, C4<1>;
v0x1814e60_0 .net "address0", 0 0, v0x1815750_0; 1 drivers
v0x1814f20_0 .net "address1", 0 0, v0x18157f0_0; 1 drivers
v0x1814fc0_0 .net "enable", 0 0, v0x18158a0_0; 1 drivers
v0x1815060_0 .net "naddress0", 0 0, L_0x1815480; 1 drivers
v0x18150e0_0 .net "naddress1", 0 0, L_0x1816450; 1 drivers
v0x1815180_0 .net "o0", 0 0, L_0x1816500; 1 drivers
v0x1815220_0 .net "o1", 0 0, L_0x1816600; 1 drivers
v0x18152c0_0 .net "o2", 0 0, L_0x1816660; 1 drivers
v0x1815360_0 .net "o3", 0 0, L_0x18166c0; 1 drivers
v0x1815400_0 .alias "out0", 0 0, v0x1815950_0;
v0x1815500_0 .alias "out1", 0 0, v0x1815a30_0;
v0x18155a0_0 .alias "out2", 0 0, v0x1815ae0_0;
v0x18156b0_0 .alias "out3", 0 0, v0x1815b60_0;
    .scope S_0x17f40d0;
T_0 ;
    %vpi_call 3 14 "$display", "En A0 A1| O0 O1 O2 O3 | Expected Output";
    %set/v v0x18158a0_0, 0, 1;
    %set/v v0x1815750_0, 0, 1;
    %set/v v0x18157f0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 16 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x18158a0_0, v0x1815750_0, v0x18157f0_0, v0x1815950_0, v0x1815a30_0, v0x1815ae0_0, v0x1815b60_0;
    %set/v v0x18158a0_0, 0, 1;
    %set/v v0x1815750_0, 1, 1;
    %set/v v0x18157f0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 18 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x18158a0_0, v0x1815750_0, v0x18157f0_0, v0x1815950_0, v0x1815a30_0, v0x1815ae0_0, v0x1815b60_0;
    %set/v v0x18158a0_0, 0, 1;
    %set/v v0x1815750_0, 0, 1;
    %set/v v0x18157f0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x18158a0_0, v0x1815750_0, v0x18157f0_0, v0x1815950_0, v0x1815a30_0, v0x1815ae0_0, v0x1815b60_0;
    %set/v v0x18158a0_0, 0, 1;
    %set/v v0x1815750_0, 1, 1;
    %set/v v0x18157f0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0x18158a0_0, v0x1815750_0, v0x18157f0_0, v0x1815950_0, v0x1815a30_0, v0x1815ae0_0, v0x1815b60_0;
    %set/v v0x18158a0_0, 1, 1;
    %set/v v0x1815750_0, 0, 1;
    %set/v v0x18157f0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b  %b  %b |  %b  %b  %b  %b | O0 Only", v0x18158a0_0, v0x1815750_0, v0x18157f0_0, v0x1815950_0, v0x1815a30_0, v0x1815ae0_0, v0x1815b60_0;
    %set/v v0x18158a0_0, 1, 1;
    %set/v v0x1815750_0, 1, 1;
    %set/v v0x18157f0_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b  %b  %b |  %b  %b  %b  %b | O1 Only", v0x18158a0_0, v0x1815750_0, v0x18157f0_0, v0x1815950_0, v0x1815a30_0, v0x1815ae0_0, v0x1815b60_0;
    %set/v v0x18158a0_0, 1, 1;
    %set/v v0x1815750_0, 0, 1;
    %set/v v0x18157f0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b  %b  %b |  %b  %b  %b  %b | O2 Only", v0x18158a0_0, v0x1815750_0, v0x18157f0_0, v0x1815950_0, v0x1815a30_0, v0x1815ae0_0, v0x1815b60_0;
    %set/v v0x18158a0_0, 1, 1;
    %set/v v0x1815750_0, 1, 1;
    %set/v v0x18157f0_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b  %b  %b |  %b  %b  %b  %b | O3 Only", v0x18158a0_0, v0x1815750_0, v0x18157f0_0, v0x1815950_0, v0x1815a30_0, v0x1815ae0_0, v0x1815b60_0;
    %vpi_call 3 32 "$dumpfile", "decoder.vcd";
    %vpi_call 3 33 "$dumpvars";
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./decoder.v";
    "decoder.t.v";
