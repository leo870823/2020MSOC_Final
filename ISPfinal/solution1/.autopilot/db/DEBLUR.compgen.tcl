# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 113 \
    name refImg_R \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename refImg_R \
    op interface \
    ports { refImg_R_address0 { O 14 vector } refImg_R_ce0 { O 1 bit } refImg_R_q0 { I 32 vector } refImg_R_address1 { O 14 vector } refImg_R_ce1 { O 1 bit } refImg_R_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'refImg_R'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name adjChImg_G \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename adjChImg_G \
    op interface \
    ports { adjChImg_G_address0 { O 14 vector } adjChImg_G_ce0 { O 1 bit } adjChImg_G_we0 { O 1 bit } adjChImg_G_d0 { O 32 vector } adjChImg_G_q0 { I 32 vector } adjChImg_G_address1 { O 14 vector } adjChImg_G_ce1 { O 1 bit } adjChImg_G_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adjChImg_G'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name adjChImg_B \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename adjChImg_B \
    op interface \
    ports { adjChImg_B_address0 { O 14 vector } adjChImg_B_ce0 { O 1 bit } adjChImg_B_we0 { O 1 bit } adjChImg_B_d0 { O 32 vector } adjChImg_B_q0 { I 32 vector } adjChImg_B_address1 { O 14 vector } adjChImg_B_ce1 { O 1 bit } adjChImg_B_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adjChImg_B'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name nominator_G_M_real \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nominator_G_M_real \
    op interface \
    ports { nominator_G_M_real_address0 { O 14 vector } nominator_G_M_real_ce0 { O 1 bit } nominator_G_M_real_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nominator_G_M_real'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 117 \
    name nominator_G_M_imag \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nominator_G_M_imag \
    op interface \
    ports { nominator_G_M_imag_address0 { O 14 vector } nominator_G_M_imag_ce0 { O 1 bit } nominator_G_M_imag_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nominator_G_M_imag'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 118 \
    name denominator_G \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename denominator_G \
    op interface \
    ports { denominator_G_address0 { O 14 vector } denominator_G_ce0 { O 1 bit } denominator_G_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'denominator_G'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 119 \
    name nominator_B_M_real \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nominator_B_M_real \
    op interface \
    ports { nominator_B_M_real_address0 { O 14 vector } nominator_B_M_real_ce0 { O 1 bit } nominator_B_M_real_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nominator_B_M_real'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 120 \
    name nominator_B_M_imag \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename nominator_B_M_imag \
    op interface \
    ports { nominator_B_M_imag_address0 { O 14 vector } nominator_B_M_imag_ce0 { O 1 bit } nominator_B_M_imag_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'nominator_B_M_imag'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 121 \
    name denominator_B \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename denominator_B \
    op interface \
    ports { denominator_B_address0 { O 14 vector } denominator_B_ce0 { O 1 bit } denominator_B_q0 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'denominator_B'"
}
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

