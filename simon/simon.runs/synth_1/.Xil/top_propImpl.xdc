set_property SRC_FILE_INFO {cfile:{C:/Users/matt/Documents/University/VRI 2023/Projects/simon/simon.srcs/constrs_1/imports/new/our_constraints.xdc} rfile:../../../simon.srcs/constrs_1/imports/new/our_constraints.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y9 [get_ports {clk}];  # "GCLK"
set_property src_info {type:XDC file:1 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y11  [get_ports {tx}];  # "JA1"
set_property src_info {type:XDC file:1 line:89 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN AA11 [get_ports {rx}];  # "JA2"
set_property src_info {type:XDC file:1 line:175 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T22 [get_ports {led[0]}];  # "LD0"
set_property src_info {type:XDC file:1 line:176 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T21 [get_ports {led[1]}];  # "LD1"
set_property src_info {type:XDC file:1 line:177 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN U22 [get_ports {led[2]}];  # "LD2"
set_property src_info {type:XDC file:1 line:362 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];
set_property src_info {type:XDC file:1 line:367 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];
set_property src_info {type:XDC file:1 line:372 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];
set_property src_info {type:XDC file:1 line:375 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];
set_property src_info {type:XDC file:1 line:384 export:INPUT save:INPUT read:READ} [current_design]
Stage 39
set_property src_info {type:XDC file:1 line:385 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[39].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[39].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[39].CARRY4_insti} {tp/gen_code_label2[156].LDPE_insti} {tp/gen_code_label2[157].LDPE_insti} {tp/gen_code_label2[158].LDPE_insti} {tp/gen_code_label2[159].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[39].CARRY4_insti}] -add {SLICE_X42Y44:SLICE_X43Y44}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[39].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:394 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[38].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[38].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[38].CARRY4_insti} {tp/gen_code_label2[152].LDPE_insti} {tp/gen_code_label2[153].LDPE_insti} {tp/gen_code_label2[154].LDPE_insti} {tp/gen_code_label2[155].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[38].CARRY4_insti}] -add {SLICE_X42Y43:SLICE_X43Y43}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[38].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:403 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[37].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[37].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[37].CARRY4_insti} {tp/gen_code_label2[148].LDPE_insti} {tp/gen_code_label2[149].LDPE_insti} {tp/gen_code_label2[150].LDPE_insti} {tp/gen_code_label2[151].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[37].CARRY4_insti}] -add {SLICE_X42Y42:SLICE_X43Y42}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[37].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:412 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[36].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[36].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[36].CARRY4_insti} {tp/gen_code_label2[144].LDPE_insti} {tp/gen_code_label2[145].LDPE_insti} {tp/gen_code_label2[146].LDPE_insti} {tp/gen_code_label2[147].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[36].CARRY4_insti}] -add {SLICE_X42Y41:SLICE_X43Y41}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[36].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:421 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[35].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[35].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[35].CARRY4_insti} {tp/gen_code_label2[140].LDPE_insti} {tp/gen_code_label2[141].LDPE_insti} {tp/gen_code_label2[142].LDPE_insti} {tp/gen_code_label2[143].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[35].CARRY4_insti}] -add {SLICE_X42Y40:SLICE_X43Y40}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[35].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:430 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[34].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[34].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[34].CARRY4_insti} {tp/gen_code_label2[136].LDPE_insti} {tp/gen_code_label2[137].LDPE_insti} {tp/gen_code_label2[138].LDPE_insti} {tp/gen_code_label2[139].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[34].CARRY4_insti}] -add {SLICE_X42Y39:SLICE_X43Y39}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[34].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:439 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[33].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[33].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[33].CARRY4_insti} {tp/gen_code_label2[132].LDPE_insti} {tp/gen_code_label2[133].LDPE_insti} {tp/gen_code_label2[134].LDPE_insti} {tp/gen_code_label2[135].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[33].CARRY4_insti}] -add {SLICE_X42Y38:SLICE_X43Y38}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[33].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:448 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[32].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[32].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[32].CARRY4_insti} {tp/gen_code_label2[128].LDPE_insti} {tp/gen_code_label2[129].LDPE_insti} {tp/gen_code_label2[130].LDPE_insti} {tp/gen_code_label2[131].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[32].CARRY4_insti}] -add {SLICE_X42Y37:SLICE_X43Y37}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[32].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:457 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[31].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[31].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[31].CARRY4_insti} {tp/gen_code_label2[124].LDPE_insti} {tp/gen_code_label2[125].LDPE_insti} {tp/gen_code_label2[126].LDPE_insti} {tp/gen_code_label2[127].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[31].CARRY4_insti}] -add {SLICE_X42Y36:SLICE_X43Y36}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[31].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:466 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[30].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[30].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[30].CARRY4_insti} {tp/gen_code_label2[120].LDPE_insti} {tp/gen_code_label2[121].LDPE_insti} {tp/gen_code_label2[122].LDPE_insti} {tp/gen_code_label2[123].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[30].CARRY4_insti}] -add {SLICE_X42Y35:SLICE_X43Y35}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[30].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:475 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[29].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[29].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[29].CARRY4_insti} {tp/gen_code_label2[116].LDPE_insti} {tp/gen_code_label2[117].LDPE_insti} {tp/gen_code_label2[118].LDPE_insti} {tp/gen_code_label2[119].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[29].CARRY4_insti}] -add {SLICE_X42Y34:SLICE_X43Y34}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[29].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:484 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[28].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[28].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[28].CARRY4_insti} {tp/gen_code_label2[112].LDPE_insti} {tp/gen_code_label2[113].LDPE_insti} {tp/gen_code_label2[114].LDPE_insti} {tp/gen_code_label2[115].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[28].CARRY4_insti}] -add {SLICE_X42Y33:SLICE_X43Y33}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[28].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:494 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[27].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[27].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[27].CARRY4_insti} {tp/gen_code_label2[108].LDPE_insti} {tp/gen_code_label2[109].LDPE_insti} {tp/gen_code_label2[110].LDPE_insti} {tp/gen_code_label2[111].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[27].CARRY4_insti}] -add {SLICE_X42Y32:SLICE_X43Y32}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[27].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:503 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[26].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[26].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[26].CARRY4_insti} {tp/gen_code_label2[104].LDPE_insti} {tp/gen_code_label2[105].LDPE_insti} {tp/gen_code_label2[106].LDPE_insti} {tp/gen_code_label2[107].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[26].CARRY4_insti}] -add {SLICE_X42Y31:SLICE_X43Y31}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[26].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:512 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[25].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[25].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[25].CARRY4_insti} {tp/gen_code_label2[100].LDPE_insti} {tp/gen_code_label2[101].LDPE_insti} {tp/gen_code_label2[102].LDPE_insti} {tp/gen_code_label2[103].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[25].CARRY4_insti}] -add {SLICE_X42Y30:SLICE_X43Y30}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[25].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:521 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[24].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[24].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[24].CARRY4_insti} {tp/gen_code_label2[96].LDPE_insti} {tp/gen_code_label2[97].LDPE_insti} {tp/gen_code_label2[98].LDPE_insti} {tp/gen_code_label2[99].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[24].CARRY4_insti}] -add {SLICE_X42Y29:SLICE_X43Y29}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[24].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:530 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[23].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[23].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[23].CARRY4_insti} {tp/gen_code_label2[92].LDPE_insti} {tp/gen_code_label2[93].LDPE_insti} {tp/gen_code_label2[94].LDPE_insti} {tp/gen_code_label2[95].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[23].CARRY4_insti}] -add {SLICE_X42Y28:SLICE_X43Y28}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[23].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:539 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[22].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[22].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[22].CARRY4_insti} {tp/gen_code_label2[88].LDPE_insti} {tp/gen_code_label2[89].LDPE_insti} {tp/gen_code_label2[90].LDPE_insti} {tp/gen_code_label2[91].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[22].CARRY4_insti}] -add {SLICE_X42Y27:SLICE_X43Y27}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[22].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:548 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[21].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[21].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[21].CARRY4_insti} {tp/gen_code_label2[84].LDPE_insti} {tp/gen_code_label2[85].LDPE_insti} {tp/gen_code_label2[86].LDPE_insti} {tp/gen_code_label2[87].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[21].CARRY4_insti}] -add {SLICE_X42Y26:SLICE_X43Y26}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[21].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:557 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[20].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[20].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[20].CARRY4_insti} {tp/gen_code_label2[80].LDPE_insti} {tp/gen_code_label2[81].LDPE_insti} {tp/gen_code_label2[82].LDPE_insti} {tp/gen_code_label2[83].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[20].CARRY4_insti}] -add {SLICE_X42Y25:SLICE_X43Y25}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[20].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:566 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[19].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[19].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[19].CARRY4_insti} {tp/gen_code_label2[76].LDPE_insti} {tp/gen_code_label2[77].LDPE_insti} {tp/gen_code_label2[78].LDPE_insti} {tp/gen_code_label2[79].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[19].CARRY4_insti}] -add {SLICE_X42Y24:SLICE_X43Y24}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[19].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:575 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[18].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[18].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[18].CARRY4_insti} {tp/gen_code_label2[72].LDPE_insti} {tp/gen_code_label2[73].LDPE_insti} {tp/gen_code_label2[74].LDPE_insti} {tp/gen_code_label2[75].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[18].CARRY4_insti}] -add {SLICE_X42Y23:SLICE_X43Y23}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[18].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:584 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[17].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[17].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[17].CARRY4_insti} {tp/gen_code_label2[68].LDPE_insti} {tp/gen_code_label2[69].LDPE_insti} {tp/gen_code_label2[70].LDPE_insti} {tp/gen_code_label2[71].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[17].CARRY4_insti}] -add {SLICE_X42Y22:SLICE_X43Y22}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[17].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:593 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[16].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[16].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[16].CARRY4_insti} {tp/gen_code_label2[64].LDPE_insti} {tp/gen_code_label2[65].LDPE_insti} {tp/gen_code_label2[66].LDPE_insti} {tp/gen_code_label2[67].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[16].CARRY4_insti}] -add {SLICE_X42Y21:SLICE_X43Y21}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[16].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:602 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[15].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[15].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[15].CARRY4_insti} {tp/gen_code_label2[60].LDPE_insti} {tp/gen_code_label2[61].LDPE_insti} {tp/gen_code_label2[62].LDPE_insti} {tp/gen_code_label2[63].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[15].CARRY4_insti}] -add {SLICE_X42Y20:SLICE_X43Y20}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[15].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:611 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[14].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[14].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[14].CARRY4_insti} {tp/gen_code_label2[56].LDPE_insti} {tp/gen_code_label2[57].LDPE_insti} {tp/gen_code_label2[58].LDPE_insti} {tp/gen_code_label2[59].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[14].CARRY4_insti}] -add {SLICE_X42Y19:SLICE_X43Y19}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[14].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:620 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[13].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[13].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[13].CARRY4_insti} {tp/gen_code_label2[52].LDPE_insti} {tp/gen_code_label2[53].LDPE_insti} {tp/gen_code_label2[54].LDPE_insti} {tp/gen_code_label2[55].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[13].CARRY4_insti}] -add {SLICE_X42Y18:SLICE_X43Y18}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[13].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:629 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[12].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[12].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[12].CARRY4_insti} {tp/gen_code_label2[48].LDPE_insti} {tp/gen_code_label2[49].LDPE_insti} {tp/gen_code_label2[50].LDPE_insti} {tp/gen_code_label2[51].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[12].CARRY4_insti}] -add {SLICE_X42Y17:SLICE_X43Y17}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[12].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:638 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[11].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[11].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[11].CARRY4_insti} {tp/gen_code_label2[44].LDPE_insti} {tp/gen_code_label2[45].LDPE_insti} {tp/gen_code_label2[46].LDPE_insti} {tp/gen_code_label2[47].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[11].CARRY4_insti}] -add {SLICE_X42Y16:SLICE_X43Y16}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[11].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:647 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[10].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[10].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[10].CARRY4_insti} {tp/gen_code_label2[40].LDPE_insti} {tp/gen_code_label2[41].LDPE_insti} {tp/gen_code_label2[42].LDPE_insti} {tp/gen_code_label2[43].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[10].CARRY4_insti}] -add {SLICE_X42Y15:SLICE_X43Y15}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[10].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:656 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[9].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[9].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[9].CARRY4_insti} {tp/gen_code_label2[36].LDPE_insti} {tp/gen_code_label2[37].LDPE_insti} {tp/gen_code_label2[38].LDPE_insti} {tp/gen_code_label2[39].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[9].CARRY4_insti}] -add {SLICE_X42Y14:SLICE_X43Y14}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[9].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:665 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[8].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[8].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[8].CARRY4_insti} {tp/gen_code_label2[32].LDPE_insti} {tp/gen_code_label2[33].LDPE_insti} {tp/gen_code_label2[34].LDPE_insti} {tp/gen_code_label2[35].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[8].CARRY4_insti}] -add {SLICE_X42Y13:SLICE_X43Y13}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[8].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:674 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[7].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[7].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[7].CARRY4_insti} {tp/gen_code_label2[28].LDPE_insti} {tp/gen_code_label2[29].LDPE_insti} {tp/gen_code_label2[30].LDPE_insti} {tp/gen_code_label2[31].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[7].CARRY4_insti}] -add {SLICE_X42Y12:SLICE_X43Y12}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[7].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:683 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[6].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[6].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[6].CARRY4_insti} {tp/gen_code_label2[24].LDPE_insti} {tp/gen_code_label2[25].LDPE_insti} {tp/gen_code_label2[26].LDPE_insti} {tp/gen_code_label2[27].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[6].CARRY4_insti}] -add {SLICE_X42Y11:SLICE_X43Y11}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[6].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:692 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[5].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[5].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[5].CARRY4_insti} {tp/gen_code_label2[20].LDPE_insti} {tp/gen_code_label2[21].LDPE_insti} {tp/gen_code_label2[22].LDPE_insti} {tp/gen_code_label2[23].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[5].CARRY4_insti}] -add {SLICE_X42Y10:SLICE_X43Y10}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[5].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:701 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[4].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[4].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[4].CARRY4_insti} {tp/gen_code_label2[16].LDPE_insti} {tp/gen_code_label2[17].LDPE_insti} {tp/gen_code_label2[18].LDPE_insti} {tp/gen_code_label2[19].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[4].CARRY4_insti}] -add {SLICE_X42Y9:SLICE_X43Y9}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[4].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:710 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[3].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[3].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[3].CARRY4_insti} {tp/gen_code_label2[12].LDPE_insti} {tp/gen_code_label2[13].LDPE_insti} {tp/gen_code_label2[14].LDPE_insti} {tp/gen_code_label2[15].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[3].CARRY4_insti}] -add {SLICE_X42Y8:SLICE_X43Y8}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[3].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:719 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[2].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[2].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[2].CARRY4_insti} {tp/gen_code_label2[10].LDPE_insti} {tp/gen_code_label2[11].LDPE_insti} {tp/gen_code_label2[8].LDPE_insti} {tp/gen_code_label2[9].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[2].CARRY4_insti}] -add {SLICE_X42Y7:SLICE_X43Y7}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[2].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:728 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[1].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[1].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[1].CARRY4_insti} {tp/gen_code_label2[4].LDPE_insti} {tp/gen_code_label2[5].LDPE_insti} {tp/gen_code_label2[6].LDPE_insti} {tp/gen_code_label2[7].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[1].CARRY4_insti}] -add {SLICE_X42Y6:SLICE_X43Y6}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[1].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:737 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_tp_2[0].CARRY4_insti}
add_cells_to_pblock [get_pblocks {pblock_tp_2[0].CARRY4_insti}] [get_cells -quiet [list {tp/gen_code_label1[0].CARRY4_insti} {tp/gen_code_label2[0].LDPE_insti} {tp/gen_code_label2[1].LDPE_insti} {tp/gen_code_label2[2].LDPE_insti} {tp/gen_code_label2[3].LDPE_insti}]]
resize_pblock [get_pblocks {pblock_tp_2[0].CARRY4_insti}] -add {SLICE_X42Y5:SLICE_X43Y5}
set_property IS_SOFT FALSE [get_pblocks {pblock_tp_2[0].CARRY4_insti}]
set_property src_info {type:XDC file:1 line:748 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_idelay2[3]}
add_cells_to_pblock [get_pblocks {pblock_idelay2[3]}] [get_cells -quiet [list {tp/gen_code_label3[12].LDCE_Delayi} {tp/gen_code_label3[12].LUT1_insti} {tp/gen_code_label3[13].LDCE_Delayi} {tp/gen_code_label3[13].LUT1_insti} {tp/gen_code_label3[14].LDCE_Delayi} {tp/gen_code_label3[14].LUT1_insti} {tp/gen_code_label3[15].LDCE_Delayi} {tp/gen_code_label3[15].LUT1_insti}]]
resize_pblock [get_pblocks {pblock_idelay2[3]}] -add {SLICE_X42Y4:SLICE_X43Y4}
set_property IS_SOFT FALSE [get_pblocks {pblock_idelay2[3]}]
set_property src_info {type:XDC file:1 line:760 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_idelay2[2]}
add_cells_to_pblock [get_pblocks {pblock_idelay2[2]}] [get_cells -quiet [list {tp/gen_code_label3[10].LDCE_Delayi} {tp/gen_code_label3[10].LUT1_insti} {tp/gen_code_label3[11].LDCE_Delayi} {tp/gen_code_label3[11].LUT1_insti} {tp/gen_code_label3[8].LDCE_Delayi} {tp/gen_code_label3[8].LUT1_insti} {tp/gen_code_label3[9].LDCE_Delayi} {tp/gen_code_label3[9].LUT1_insti}]]
resize_pblock [get_pblocks {pblock_idelay2[2]}] -add {SLICE_X42Y3:SLICE_X43Y3}
set_property IS_SOFT FALSE [get_pblocks {pblock_idelay2[2]}]
set_property src_info {type:XDC file:1 line:772 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_idelay2[1]}
add_cells_to_pblock [get_pblocks {pblock_idelay2[1]}] [get_cells -quiet [list {tp/gen_code_label3[4].LDCE_Delayi} {tp/gen_code_label3[4].LUT1_insti} {tp/gen_code_label3[5].LDCE_Delayi} {tp/gen_code_label3[5].LUT1_insti} {tp/gen_code_label3[6].LDCE_Delayi} {tp/gen_code_label3[6].LUT1_insti} {tp/gen_code_label3[7].LDCE_Delayi} {tp/gen_code_label3[7].LUT1_insti}]]
resize_pblock [get_pblocks {pblock_idelay2[1]}] -add {SLICE_X42Y2:SLICE_X43Y2}
set_property IS_SOFT FALSE [get_pblocks {pblock_idelay2[1]}]
set_property src_info {type:XDC file:1 line:784 export:INPUT save:INPUT read:READ} [current_design]
create_pblock {pblock_idelay2[0]}
add_cells_to_pblock [get_pblocks {pblock_idelay2[0]}] [get_cells -quiet [list {tp/gen_code_label3[0].LDCE_Delayi} {tp/gen_code_label3[0].LUT1_insti} {tp/gen_code_label3[1].LDCE_Delayi} {tp/gen_code_label3[1].LUT1_insti} {tp/gen_code_label3[2].LDCE_Delayi} {tp/gen_code_label3[2].LUT1_insti} {tp/gen_code_label3[3].LDCE_Delayi} {tp/gen_code_label3[3].LUT1_insti}]]
resize_pblock [get_pblocks {pblock_idelay2[0]}] -add {SLICE_X42Y1:SLICE_X43Y1}
set_property IS_SOFT FALSE [get_pblocks {pblock_idelay2[0]}]
set_property src_info {type:XDC file:1 line:796 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_aes
add_cells_to_pblock [get_pblocks pblock_aes] [get_cells -quiet [list s0 s1 s2 s3 s4]]
resize_pblock [get_pblocks pblock_aes] -add {SLICE_X0Y0:SLICE_X49Y48}
resize_pblock [get_pblocks pblock_aes] -add {DSP48_X0Y0:DSP48_X2Y17}
resize_pblock [get_pblocks pblock_aes] -add {RAMB18_X0Y0:RAMB18_X2Y17}
resize_pblock [get_pblocks pblock_aes] -add {RAMB36_X0Y0:RAMB36_X2Y8}
set_property IS_SOFT FALSE [get_pblocks pblock_aes]
