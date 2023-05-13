# This script segment is generated automatically by AutoPilot

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
    id 1 \
    name A_A1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_A1 \
    op interface \
    ports { A_A1 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name A_A2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_A2 \
    op interface \
    ports { A_A2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name A_A3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_A3 \
    op interface \
    ports { A_A3 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name A_A4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_A4 \
    op interface \
    ports { A_A4 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name A_A5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_A5 \
    op interface \
    ports { A_A5 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name A_A6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_A6 \
    op interface \
    ports { A_A6 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name A_A7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_A7 \
    op interface \
    ports { A_A7 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name A_A8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_A8 \
    op interface \
    ports { A_A8 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name A_A9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_A9 \
    op interface \
    ports { A_A9 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name A_A10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_A_A10 \
    op interface \
    ports { A_A10 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name B \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_B \
    op interface \
    ports { B { O 32 vector } B_ap_vld { O 1 bit } } \
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



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


