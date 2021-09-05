# This script segment is generated automatically by AutoPilot

set id 538
set name execute_contract_fpga_mul_7s_3ns_9_1_1
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 7
set in0_signed 1
set in1_width 3
set in1_signed 0
set out_width 9
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename Multiplier
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


set id 554
set name execute_contract_fpga_mul_64ns_66ns_129_1_1
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 64
set in0_signed 0
set in1_width 66
set in1_signed 0
set out_width 129
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename Multiplier
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul] == "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul"} {
eval "::AESL_LIB_VIRTEX::xil_gen_multicycle_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_multicycle_mul, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 557
set hasByteEnable 0
set MemName execute_contract_fpga_default_op_table_M_elems_gas_cost
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 16
set AddrRange 256
set AddrWd 8
set impl_style auto
set TrueReset 0
set IsROM 1
set ROMData { "0000000000000000" "0000000000000011" "0000000000000101" "0000000000000011" "0000000000000101" "0000000000000101" "0000000000000101" "0000000000000101" "0000000000001000" "0000000000001000" "0000000000001010" "0000000000000101" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "1111111111111111" "1111111111111111" "0000000000011110" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "0000000000000010" "0000000001100100" "0000000000000010" "0000000000000010" "0000000000000010" "0000000000000011" "0000000000000010" "0000000000000011" "0000000000000010" "0000000000000011" "0000000000000010" "0000000001100100" "0000000001100100" "0000000000000010" "0000000000000011" "0000000001100100" "0000000000010100" "0000000000000010" "0000000000000010" "0000000000000010" "0000000000000010" "0000000000000010" "0000000000000010" "0000000000000101" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "0000000000000010" "0000000000000011" "0000000000000011" "0000000000000011" "0000000001100100" "0000000000000000" "0000000000001000" "0000000000001010" "0000000000000010" "0000000000000010" "0000000000000010" "0000000000000001" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000000000011" "0000000101110111" "0000001011101110" "0000010001100101" "0000010111011100" "0000011101010011" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "0111110100000000" "0000000001100100" "0000000001100100" "0000000000000000" "0000000001100100" "0111110100000000" "1111111111111111" "1111111111111111" "1111111111111111" "1111111111111111" "0000000001100100" "1111111111111111" "1111111111111111" "0000000000000000" "0000000000000000" "0001001110001000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.297
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


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
    id 558 \
    name msg \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename msg \
    op interface \
    ports { msg_address0 { O 4 vector } msg_ce0 { O 1 bit } msg_q0 { I 256 vector } msg_address1 { O 4 vector } msg_ce1 { O 1 bit } msg_q1 { I 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'msg'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 561 \
    name state \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename state \
    op interface \
    ports { state_address0 { O 14 vector } state_ce0 { O 1 bit } state_we0 { O 32 vector } state_d0 { O 256 vector } state_q0 { I 256 vector } state_address1 { O 14 vector } state_ce1 { O 1 bit } state_we1 { O 32 vector } state_d1 { O 256 vector } state_q1 { I 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'state'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 564 \
    name result \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename result \
    op interface \
    ports { result_address0 { O 9 vector } result_ce0 { O 1 bit } result_we0 { O 20 vector } result_d0 { O 160 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'result'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 559 \
    name code \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_code \
    op interface \
    ports { code { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 560 \
    name code_size \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_code_size \
    op interface \
    ports { code_size { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 562 \
    name storage_stream_in_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_storage_stream_in_V \
    op interface \
    ports { storage_stream_in_V_dout { I 256 vector } storage_stream_in_V_empty_n { I 1 bit } storage_stream_in_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 563 \
    name storage_stream_out_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_storage_stream_out_V \
    op interface \
    ports { storage_stream_out_V_din { O 256 vector } storage_stream_out_V_full_n { I 1 bit } storage_stream_out_V_write { O 1 bit } } \
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


