#! /usr/bin/vvp
:ivl_version "0.9.7 " "(v0_9_7)";
:vpi_time_precision - 12;
:vpi_module "system";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xcbc540 .scope module, "behavioralDecoder" "behavioralDecoder" 2 3;
 .timescale -9 -12;
v0xcc8280_0 .net *"_s11", 3 0, L_0xce7e40; 1 drivers
v0xce61b0_0 .net *"_s5", 3 0, L_0xce7b90; 1 drivers
v0xce6250_0 .net *"_s8", 2 0, C4<000>; 1 drivers
v0xce62f0_0 .net *"_s9", 1 0, L_0xce7d00; 1 drivers
v0xce63a0_0 .net "address0", 0 0, C4<z>; 0 drivers
v0xce6440_0 .net "address1", 0 0, C4<z>; 0 drivers
v0xce6520_0 .net "enable", 0 0, C4<z>; 0 drivers
v0xce65c0_0 .net "out0", 0 0, L_0xce7a00; 1 drivers
v0xce66b0_0 .net "out1", 0 0, L_0xce7960; 1 drivers
v0xce6750_0 .net "out2", 0 0, L_0xce7890; 1 drivers
v0xce6850_0 .net "out3", 0 0, L_0xce7790; 1 drivers
L_0xce7790 .part L_0xce7e40, 3, 1;
L_0xce7890 .part L_0xce7e40, 2, 1;
L_0xce7960 .part L_0xce7e40, 1, 1;
L_0xce7a00 .part L_0xce7e40, 0, 1;
L_0xce7b90 .concat [ 1 3 0 0], C4<z>, C4<000>;
L_0xce7d00 .concat [ 1 1 0 0], C4<z>, C4<z>;
L_0xce7e40 .shift/l 4, L_0xce7b90, L_0xce7d00;
S_0xcc5f40 .scope module, "testDecoder" "testDecoder" 3 5;
 .timescale -9 -12;
v0xce72d0_0 .var "addr0", 0 0;
v0xce7370_0 .var "addr1", 0 0;
v0xce7420_0 .var "enable", 0 0;
v0xce74d0_0 .net "out0", 0 0, L_0xce8400; 1 drivers
v0xce75b0_0 .net "out1", 0 0, L_0xce84b0; 1 drivers
v0xce7660_0 .net "out2", 0 0, L_0xce8600; 1 drivers
v0xce76e0_0 .net "out3", 0 0, L_0xce8790; 1 drivers
S_0xce68f0 .scope module, "decoder" "structuralDecoder" 3 11, 2 14, S_0xcc5f40;
 .timescale -9 -12;
L_0xce7000 .functor NOT 1, v0xce72d0_0, C4<0>, C4<0>, C4<0>;
L_0xce7fd0 .functor NOT 1, v0xce7370_0, C4<0>, C4<0>, C4<0>;
L_0xce8080 .functor AND 1, L_0xce7000, L_0xce7fd0, C4<1>, C4<1>;
L_0xce8180 .functor AND 1, v0xce72d0_0, L_0xce7fd0, C4<1>, C4<1>;
L_0xce81e0 .functor AND 1, L_0xce7000, v0xce7370_0, C4<1>, C4<1>;
L_0xce8240 .functor AND 1, v0xce72d0_0, v0xce7370_0, C4<1>, C4<1>;
L_0xce8400 .functor AND 1, L_0xce8080, v0xce7420_0, C4<1>, C4<1>;
L_0xce84b0 .functor AND 1, L_0xce8180, v0xce7420_0, C4<1>, C4<1>;
L_0xce8600 .functor AND 1, L_0xce81e0, v0xce7420_0, C4<1>, C4<1>;
L_0xce8790 .functor AND 1, L_0xce8240, v0xce7420_0, C4<1>, C4<1>;
v0xce69e0_0 .net "address0", 0 0, v0xce72d0_0; 1 drivers
v0xce6aa0_0 .net "address1", 0 0, v0xce7370_0; 1 drivers
v0xce6b40_0 .net "enable", 0 0, v0xce7420_0; 1 drivers
v0xce6be0_0 .net "naddress0", 0 0, L_0xce7000; 1 drivers
v0xce6c60_0 .net "naddress1", 0 0, L_0xce7fd0; 1 drivers
v0xce6d00_0 .net "o0", 0 0, L_0xce8080; 1 drivers
v0xce6da0_0 .net "o1", 0 0, L_0xce8180; 1 drivers
v0xce6e40_0 .net "o2", 0 0, L_0xce81e0; 1 drivers
v0xce6ee0_0 .net "o3", 0 0, L_0xce8240; 1 drivers
v0xce6f80_0 .alias "out0", 0 0, v0xce74d0_0;
v0xce7080_0 .alias "out1", 0 0, v0xce75b0_0;
v0xce7120_0 .alias "out2", 0 0, v0xce7660_0;
v0xce7230_0 .alias "out3", 0 0, v0xce76e0_0;
    .scope S_0xcc5f40;
T_0 ;
    %vpi_call 3 14 "$display", "En A0 A1| O0 O1 O2 O3 | Expected Output";
    %set/v v0xce7420_0, 0, 1;
    %set/v v0xce72d0_0, 0, 1;
    %set/v v0xce7370_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 16 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0xce7420_0, v0xce72d0_0, v0xce7370_0, v0xce74d0_0, v0xce75b0_0, v0xce7660_0, v0xce76e0_0;
    %set/v v0xce7420_0, 0, 1;
    %set/v v0xce72d0_0, 1, 1;
    %set/v v0xce7370_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 18 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0xce7420_0, v0xce72d0_0, v0xce7370_0, v0xce74d0_0, v0xce75b0_0, v0xce7660_0, v0xce76e0_0;
    %set/v v0xce7420_0, 0, 1;
    %set/v v0xce72d0_0, 0, 1;
    %set/v v0xce7370_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 20 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0xce7420_0, v0xce72d0_0, v0xce7370_0, v0xce74d0_0, v0xce75b0_0, v0xce7660_0, v0xce76e0_0;
    %set/v v0xce7420_0, 0, 1;
    %set/v v0xce72d0_0, 1, 1;
    %set/v v0xce7370_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 22 "$display", "%b  %b  %b |  %b  %b  %b  %b | All false", v0xce7420_0, v0xce72d0_0, v0xce7370_0, v0xce74d0_0, v0xce75b0_0, v0xce7660_0, v0xce76e0_0;
    %set/v v0xce7420_0, 1, 1;
    %set/v v0xce72d0_0, 0, 1;
    %set/v v0xce7370_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 24 "$display", "%b  %b  %b |  %b  %b  %b  %b | O0 Only", v0xce7420_0, v0xce72d0_0, v0xce7370_0, v0xce74d0_0, v0xce75b0_0, v0xce7660_0, v0xce76e0_0;
    %set/v v0xce7420_0, 1, 1;
    %set/v v0xce72d0_0, 1, 1;
    %set/v v0xce7370_0, 0, 1;
    %delay 1000000, 0;
    %vpi_call 3 26 "$display", "%b  %b  %b |  %b  %b  %b  %b | O1 Only", v0xce7420_0, v0xce72d0_0, v0xce7370_0, v0xce74d0_0, v0xce75b0_0, v0xce7660_0, v0xce76e0_0;
    %set/v v0xce7420_0, 1, 1;
    %set/v v0xce72d0_0, 0, 1;
    %set/v v0xce7370_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 28 "$display", "%b  %b  %b |  %b  %b  %b  %b | O2 Only", v0xce7420_0, v0xce72d0_0, v0xce7370_0, v0xce74d0_0, v0xce75b0_0, v0xce7660_0, v0xce76e0_0;
    %set/v v0xce7420_0, 1, 1;
    %set/v v0xce72d0_0, 1, 1;
    %set/v v0xce7370_0, 1, 1;
    %delay 1000000, 0;
    %vpi_call 3 30 "$display", "%b  %b  %b |  %b  %b  %b  %b | O3 Only", v0xce7420_0, v0xce72d0_0, v0xce7370_0, v0xce74d0_0, v0xce75b0_0, v0xce7660_0, v0xce76e0_0;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "./decoder.v";
    "decoder.t.v";
