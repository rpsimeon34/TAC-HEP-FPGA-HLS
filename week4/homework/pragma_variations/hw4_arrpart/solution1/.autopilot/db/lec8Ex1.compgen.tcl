# This script segment is generated automatically by AutoPilot

set id 1
set name lec8Ex1_mux_606_3bkb
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 32
set din4_signed 0
set din5_width 32
set din5_signed 0
set din6_width 32
set din6_signed 0
set din7_width 32
set din7_signed 0
set din8_width 32
set din8_signed 0
set din9_width 32
set din9_signed 0
set din10_width 32
set din10_signed 0
set din11_width 32
set din11_signed 0
set din12_width 32
set din12_signed 0
set din13_width 32
set din13_signed 0
set din14_width 32
set din14_signed 0
set din15_width 32
set din15_signed 0
set din16_width 32
set din16_signed 0
set din17_width 32
set din17_signed 0
set din18_width 32
set din18_signed 0
set din19_width 32
set din19_signed 0
set din20_width 32
set din20_signed 0
set din21_width 32
set din21_signed 0
set din22_width 32
set din22_signed 0
set din23_width 32
set din23_signed 0
set din24_width 32
set din24_signed 0
set din25_width 32
set din25_signed 0
set din26_width 32
set din26_signed 0
set din27_width 32
set din27_signed 0
set din28_width 32
set din28_signed 0
set din29_width 32
set din29_signed 0
set din30_width 32
set din30_signed 0
set din31_width 32
set din31_signed 0
set din32_width 32
set din32_signed 0
set din33_width 32
set din33_signed 0
set din34_width 32
set din34_signed 0
set din35_width 32
set din35_signed 0
set din36_width 32
set din36_signed 0
set din37_width 32
set din37_signed 0
set din38_width 32
set din38_signed 0
set din39_width 32
set din39_signed 0
set din40_width 32
set din40_signed 0
set din41_width 32
set din41_signed 0
set din42_width 32
set din42_signed 0
set din43_width 32
set din43_signed 0
set din44_width 32
set din44_signed 0
set din45_width 32
set din45_signed 0
set din46_width 32
set din46_signed 0
set din47_width 32
set din47_signed 0
set din48_width 32
set din48_signed 0
set din49_width 32
set din49_signed 0
set din50_width 32
set din50_signed 0
set din51_width 32
set din51_signed 0
set din52_width 32
set din52_signed 0
set din53_width 32
set din53_signed 0
set din54_width 32
set din54_signed 0
set din55_width 32
set din55_signed 0
set din56_width 32
set din56_signed 0
set din57_width 32
set din57_signed 0
set din58_width 32
set din58_signed 0
set din59_width 32
set din59_signed 0
set din60_width 6
set din60_signed 0
set dout_width 32
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    din33_width ${din33_width} \
    din33_signed ${din33_signed} \
    din34_width ${din34_width} \
    din34_signed ${din34_signed} \
    din35_width ${din35_width} \
    din35_signed ${din35_signed} \
    din36_width ${din36_width} \
    din36_signed ${din36_signed} \
    din37_width ${din37_width} \
    din37_signed ${din37_signed} \
    din38_width ${din38_width} \
    din38_signed ${din38_signed} \
    din39_width ${din39_width} \
    din39_signed ${din39_signed} \
    din40_width ${din40_width} \
    din40_signed ${din40_signed} \
    din41_width ${din41_width} \
    din41_signed ${din41_signed} \
    din42_width ${din42_width} \
    din42_signed ${din42_signed} \
    din43_width ${din43_width} \
    din43_signed ${din43_signed} \
    din44_width ${din44_width} \
    din44_signed ${din44_signed} \
    din45_width ${din45_width} \
    din45_signed ${din45_signed} \
    din46_width ${din46_width} \
    din46_signed ${din46_signed} \
    din47_width ${din47_width} \
    din47_signed ${din47_signed} \
    din48_width ${din48_width} \
    din48_signed ${din48_signed} \
    din49_width ${din49_width} \
    din49_signed ${din49_signed} \
    din50_width ${din50_width} \
    din50_signed ${din50_signed} \
    din51_width ${din51_width} \
    din51_signed ${din51_signed} \
    din52_width ${din52_width} \
    din52_signed ${din52_signed} \
    din53_width ${din53_width} \
    din53_signed ${din53_signed} \
    din54_width ${din54_width} \
    din54_signed ${din54_signed} \
    din55_width ${din55_width} \
    din55_signed ${din55_signed} \
    din56_width ${din56_width} \
    din56_signed ${din56_signed} \
    din57_width ${din57_width} \
    din57_signed ${din57_signed} \
    din58_width ${din58_width} \
    din58_signed ${din58_signed} \
    din59_width ${din59_width} \
    din59_signed ${din59_signed} \
    din60_width ${din60_width} \
    din60_signed ${din60_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    din33_width ${din33_width} \
    din33_signed ${din33_signed} \
    din34_width ${din34_width} \
    din34_signed ${din34_signed} \
    din35_width ${din35_width} \
    din35_signed ${din35_signed} \
    din36_width ${din36_width} \
    din36_signed ${din36_signed} \
    din37_width ${din37_width} \
    din37_signed ${din37_signed} \
    din38_width ${din38_width} \
    din38_signed ${din38_signed} \
    din39_width ${din39_width} \
    din39_signed ${din39_signed} \
    din40_width ${din40_width} \
    din40_signed ${din40_signed} \
    din41_width ${din41_width} \
    din41_signed ${din41_signed} \
    din42_width ${din42_width} \
    din42_signed ${din42_signed} \
    din43_width ${din43_width} \
    din43_signed ${din43_signed} \
    din44_width ${din44_width} \
    din44_signed ${din44_signed} \
    din45_width ${din45_width} \
    din45_signed ${din45_signed} \
    din46_width ${din46_width} \
    din46_signed ${din46_signed} \
    din47_width ${din47_width} \
    din47_signed ${din47_signed} \
    din48_width ${din48_width} \
    din48_signed ${din48_signed} \
    din49_width ${din49_width} \
    din49_signed ${din49_signed} \
    din50_width ${din50_width} \
    din50_signed ${din50_signed} \
    din51_width ${din51_width} \
    din51_signed ${din51_signed} \
    din52_width ${din52_width} \
    din52_signed ${din52_signed} \
    din53_width ${din53_width} \
    din53_signed ${din53_signed} \
    din54_width ${din54_width} \
    din54_signed ${din54_signed} \
    din55_width ${din55_width} \
    din55_signed ${din55_signed} \
    din56_width ${din56_width} \
    din56_signed ${din56_signed} \
    din57_width ${din57_width} \
    din57_signed ${din57_signed} \
    din58_width ${din58_width} \
    din58_signed ${din58_signed} \
    din59_width ${din59_width} \
    din59_signed ${din59_signed} \
    din60_width ${din60_width} \
    din60_signed ${din60_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name in_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_0 \
    op interface \
    ports { in_0 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name in_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_1 \
    op interface \
    ports { in_1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name in_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_2 \
    op interface \
    ports { in_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name in_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_3 \
    op interface \
    ports { in_3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name in_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_4 \
    op interface \
    ports { in_4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name in_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_5 \
    op interface \
    ports { in_5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name in_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_6 \
    op interface \
    ports { in_6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name in_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_7 \
    op interface \
    ports { in_7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name in_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_8 \
    op interface \
    ports { in_8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name in_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_9 \
    op interface \
    ports { in_9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name in_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_10 \
    op interface \
    ports { in_10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name in_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_11 \
    op interface \
    ports { in_11 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name in_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_12 \
    op interface \
    ports { in_12 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name in_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_13 \
    op interface \
    ports { in_13 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name in_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_14 \
    op interface \
    ports { in_14 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name in_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_15 \
    op interface \
    ports { in_15 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name in_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_16 \
    op interface \
    ports { in_16 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name in_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_17 \
    op interface \
    ports { in_17 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name in_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_18 \
    op interface \
    ports { in_18 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name in_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_19 \
    op interface \
    ports { in_19 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name in_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_20 \
    op interface \
    ports { in_20 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name in_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_21 \
    op interface \
    ports { in_21 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name in_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_22 \
    op interface \
    ports { in_22 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name in_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_23 \
    op interface \
    ports { in_23 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name in_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_24 \
    op interface \
    ports { in_24 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name in_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_25 \
    op interface \
    ports { in_25 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name in_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_26 \
    op interface \
    ports { in_26 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name in_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_27 \
    op interface \
    ports { in_27 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name in_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_28 \
    op interface \
    ports { in_28 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name in_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_29 \
    op interface \
    ports { in_29 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name in_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_30 \
    op interface \
    ports { in_30 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name in_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_31 \
    op interface \
    ports { in_31 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name in_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_32 \
    op interface \
    ports { in_32 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name in_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_33 \
    op interface \
    ports { in_33 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name in_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_34 \
    op interface \
    ports { in_34 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name in_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_35 \
    op interface \
    ports { in_35 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name in_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_36 \
    op interface \
    ports { in_36 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name in_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_37 \
    op interface \
    ports { in_37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name in_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_38 \
    op interface \
    ports { in_38 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name in_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_39 \
    op interface \
    ports { in_39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name in_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_40 \
    op interface \
    ports { in_40 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name in_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_41 \
    op interface \
    ports { in_41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name in_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_42 \
    op interface \
    ports { in_42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name in_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_43 \
    op interface \
    ports { in_43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name in_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_44 \
    op interface \
    ports { in_44 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name in_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_45 \
    op interface \
    ports { in_45 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name in_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_46 \
    op interface \
    ports { in_46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name in_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_47 \
    op interface \
    ports { in_47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name in_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_48 \
    op interface \
    ports { in_48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name in_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_49 \
    op interface \
    ports { in_49 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name in_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_50 \
    op interface \
    ports { in_50 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name in_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_51 \
    op interface \
    ports { in_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name in_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_52 \
    op interface \
    ports { in_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name in_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_53 \
    op interface \
    ports { in_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name in_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_54 \
    op interface \
    ports { in_54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name in_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_55 \
    op interface \
    ports { in_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name in_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_56 \
    op interface \
    ports { in_56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name in_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_57 \
    op interface \
    ports { in_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name in_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_58 \
    op interface \
    ports { in_58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name in_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_59 \
    op interface \
    ports { in_59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name a \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_a \
    op interface \
    ports { a { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name b \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_b \
    op interface \
    ports { b { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name c \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c \
    op interface \
    ports { c { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name out_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_0 \
    op interface \
    ports { out_0 { O 32 vector } out_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name out_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_1 \
    op interface \
    ports { out_1 { O 32 vector } out_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name out_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_2 \
    op interface \
    ports { out_2 { O 32 vector } out_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name out_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_3 \
    op interface \
    ports { out_3 { O 32 vector } out_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name out_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_4 \
    op interface \
    ports { out_4 { O 32 vector } out_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name out_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_5 \
    op interface \
    ports { out_5 { O 32 vector } out_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name out_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_6 \
    op interface \
    ports { out_6 { O 32 vector } out_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name out_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_7 \
    op interface \
    ports { out_7 { O 32 vector } out_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name out_8 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_8 \
    op interface \
    ports { out_8 { O 32 vector } out_8_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name out_9 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_9 \
    op interface \
    ports { out_9 { O 32 vector } out_9_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name out_10 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_10 \
    op interface \
    ports { out_10 { O 32 vector } out_10_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name out_11 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_11 \
    op interface \
    ports { out_11 { O 32 vector } out_11_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name out_12 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_12 \
    op interface \
    ports { out_12 { O 32 vector } out_12_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name out_13 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_13 \
    op interface \
    ports { out_13 { O 32 vector } out_13_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name out_14 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_14 \
    op interface \
    ports { out_14 { O 32 vector } out_14_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name out_15 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_15 \
    op interface \
    ports { out_15 { O 32 vector } out_15_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name out_16 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_16 \
    op interface \
    ports { out_16 { O 32 vector } out_16_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name out_17 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_17 \
    op interface \
    ports { out_17 { O 32 vector } out_17_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name out_18 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_18 \
    op interface \
    ports { out_18 { O 32 vector } out_18_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name out_19 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_19 \
    op interface \
    ports { out_19 { O 32 vector } out_19_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name out_20 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_20 \
    op interface \
    ports { out_20 { O 32 vector } out_20_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name out_21 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_21 \
    op interface \
    ports { out_21 { O 32 vector } out_21_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name out_22 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_22 \
    op interface \
    ports { out_22 { O 32 vector } out_22_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name out_23 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_23 \
    op interface \
    ports { out_23 { O 32 vector } out_23_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name out_24 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_24 \
    op interface \
    ports { out_24 { O 32 vector } out_24_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name out_25 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_25 \
    op interface \
    ports { out_25 { O 32 vector } out_25_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name out_26 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_26 \
    op interface \
    ports { out_26 { O 32 vector } out_26_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name out_27 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_27 \
    op interface \
    ports { out_27 { O 32 vector } out_27_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name out_28 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_28 \
    op interface \
    ports { out_28 { O 32 vector } out_28_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name out_29 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_29 \
    op interface \
    ports { out_29 { O 32 vector } out_29_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name out_30 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_30 \
    op interface \
    ports { out_30 { O 32 vector } out_30_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name out_31 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_31 \
    op interface \
    ports { out_31 { O 32 vector } out_31_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name out_32 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_32 \
    op interface \
    ports { out_32 { O 32 vector } out_32_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name out_33 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_33 \
    op interface \
    ports { out_33 { O 32 vector } out_33_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name out_34 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_34 \
    op interface \
    ports { out_34 { O 32 vector } out_34_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name out_35 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_35 \
    op interface \
    ports { out_35 { O 32 vector } out_35_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name out_36 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_36 \
    op interface \
    ports { out_36 { O 32 vector } out_36_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name out_37 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_37 \
    op interface \
    ports { out_37 { O 32 vector } out_37_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name out_38 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_38 \
    op interface \
    ports { out_38 { O 32 vector } out_38_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name out_39 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_39 \
    op interface \
    ports { out_39 { O 32 vector } out_39_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name out_40 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_40 \
    op interface \
    ports { out_40 { O 32 vector } out_40_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name out_41 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_41 \
    op interface \
    ports { out_41 { O 32 vector } out_41_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name out_42 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_42 \
    op interface \
    ports { out_42 { O 32 vector } out_42_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name out_43 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_43 \
    op interface \
    ports { out_43 { O 32 vector } out_43_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name out_44 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_44 \
    op interface \
    ports { out_44 { O 32 vector } out_44_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name out_45 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_45 \
    op interface \
    ports { out_45 { O 32 vector } out_45_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name out_46 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_46 \
    op interface \
    ports { out_46 { O 32 vector } out_46_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name out_47 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_47 \
    op interface \
    ports { out_47 { O 32 vector } out_47_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name out_48 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_48 \
    op interface \
    ports { out_48 { O 32 vector } out_48_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name out_49 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_49 \
    op interface \
    ports { out_49 { O 32 vector } out_49_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name out_50 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_50 \
    op interface \
    ports { out_50 { O 32 vector } out_50_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name out_51 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_51 \
    op interface \
    ports { out_51 { O 32 vector } out_51_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name out_52 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_52 \
    op interface \
    ports { out_52 { O 32 vector } out_52_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name out_53 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_53 \
    op interface \
    ports { out_53 { O 32 vector } out_53_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name out_54 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_54 \
    op interface \
    ports { out_54 { O 32 vector } out_54_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name out_55 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_55 \
    op interface \
    ports { out_55 { O 32 vector } out_55_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name out_56 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_56 \
    op interface \
    ports { out_56 { O 32 vector } out_56_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name out_57 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_57 \
    op interface \
    ports { out_57 { O 32 vector } out_57_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name out_58 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_58 \
    op interface \
    ports { out_58 { O 32 vector } out_58_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name out_59 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_59 \
    op interface \
    ports { out_59 { O 32 vector } out_59_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


