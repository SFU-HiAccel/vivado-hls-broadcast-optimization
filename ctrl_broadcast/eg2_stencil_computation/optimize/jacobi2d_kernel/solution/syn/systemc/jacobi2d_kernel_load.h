// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _jacobi2d_kernel_load_HH_
#define _jacobi2d_kernel_load_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct jacobi2d_kernel_load : public sc_module {
    // Port declarations 61
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<512> > to_V_V_din;
    sc_in< sc_logic > to_V_V_full_n;
    sc_out< sc_logic > to_V_V_write;
    sc_out< sc_logic > m_axi_from_V_AWVALID;
    sc_in< sc_logic > m_axi_from_V_AWREADY;
    sc_out< sc_lv<32> > m_axi_from_V_AWADDR;
    sc_out< sc_lv<1> > m_axi_from_V_AWID;
    sc_out< sc_lv<32> > m_axi_from_V_AWLEN;
    sc_out< sc_lv<3> > m_axi_from_V_AWSIZE;
    sc_out< sc_lv<2> > m_axi_from_V_AWBURST;
    sc_out< sc_lv<2> > m_axi_from_V_AWLOCK;
    sc_out< sc_lv<4> > m_axi_from_V_AWCACHE;
    sc_out< sc_lv<3> > m_axi_from_V_AWPROT;
    sc_out< sc_lv<4> > m_axi_from_V_AWQOS;
    sc_out< sc_lv<4> > m_axi_from_V_AWREGION;
    sc_out< sc_lv<1> > m_axi_from_V_AWUSER;
    sc_out< sc_logic > m_axi_from_V_WVALID;
    sc_in< sc_logic > m_axi_from_V_WREADY;
    sc_out< sc_lv<512> > m_axi_from_V_WDATA;
    sc_out< sc_lv<64> > m_axi_from_V_WSTRB;
    sc_out< sc_logic > m_axi_from_V_WLAST;
    sc_out< sc_lv<1> > m_axi_from_V_WID;
    sc_out< sc_lv<1> > m_axi_from_V_WUSER;
    sc_out< sc_logic > m_axi_from_V_ARVALID;
    sc_in< sc_logic > m_axi_from_V_ARREADY;
    sc_out< sc_lv<32> > m_axi_from_V_ARADDR;
    sc_out< sc_lv<1> > m_axi_from_V_ARID;
    sc_out< sc_lv<32> > m_axi_from_V_ARLEN;
    sc_out< sc_lv<3> > m_axi_from_V_ARSIZE;
    sc_out< sc_lv<2> > m_axi_from_V_ARBURST;
    sc_out< sc_lv<2> > m_axi_from_V_ARLOCK;
    sc_out< sc_lv<4> > m_axi_from_V_ARCACHE;
    sc_out< sc_lv<3> > m_axi_from_V_ARPROT;
    sc_out< sc_lv<4> > m_axi_from_V_ARQOS;
    sc_out< sc_lv<4> > m_axi_from_V_ARREGION;
    sc_out< sc_lv<1> > m_axi_from_V_ARUSER;
    sc_in< sc_logic > m_axi_from_V_RVALID;
    sc_out< sc_logic > m_axi_from_V_RREADY;
    sc_in< sc_lv<512> > m_axi_from_V_RDATA;
    sc_in< sc_logic > m_axi_from_V_RLAST;
    sc_in< sc_lv<1> > m_axi_from_V_RID;
    sc_in< sc_lv<1> > m_axi_from_V_RUSER;
    sc_in< sc_lv<2> > m_axi_from_V_RRESP;
    sc_in< sc_logic > m_axi_from_V_BVALID;
    sc_out< sc_logic > m_axi_from_V_BREADY;
    sc_in< sc_lv<2> > m_axi_from_V_BRESP;
    sc_in< sc_lv<1> > m_axi_from_V_BID;
    sc_in< sc_lv<1> > m_axi_from_V_BUSER;
    sc_in< sc_lv<32> > from_V_offset_dout;
    sc_in< sc_logic > from_V_offset_empty_n;
    sc_out< sc_logic > from_V_offset_read;
    sc_in< sc_lv<64> > coalesced_data_num_dout;
    sc_in< sc_logic > coalesced_data_num_empty_n;
    sc_out< sc_logic > coalesced_data_num_read;


    // Module declarations
    jacobi2d_kernel_load(sc_module_name name);
    SC_HAS_PROCESS(jacobi2d_kernel_load);

    ~jacobi2d_kernel_load();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<129> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > from_V_blk_n_AR;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > from_V_blk_n_R;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > tmp_i_i_i_reg_195;
    sc_signal< sc_logic > from_V_offset_blk_n;
    sc_signal< sc_logic > coalesced_data_num_blk_n;
    sc_signal< sc_lv<31> > i_i_i_i_reg_128;
    sc_signal< sc_lv<26> > from_V_offset1_i_reg_178;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<32> > tmp_fu_149_p1;
    sc_signal< sc_lv<32> > tmp_reg_183;
    sc_signal< sc_logic > ap_sig_ioackin_m_axi_from_V_ARREADY;
    sc_signal< sc_lv<1> > tmp_i_i_i_fu_167_p2;
    sc_signal< bool > ap_block_state128_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state129_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state130_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > tmp_i_i_i_reg_195_pp0_iter1_reg;
    sc_signal< sc_lv<31> > i_fu_172_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<512> > tmp_V_reg_204;
    sc_signal< sc_logic > ap_CS_fsm_state127;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state128;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<64> > tmp_i_fu_153_p1;
    sc_signal< sc_logic > ap_reg_ioackin_m_axi_from_V_ARREADY;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<32> > i_cast_i_i_i_fu_163_p1;
    sc_signal< sc_logic > ap_CS_fsm_state131;
    sc_signal< sc_lv<129> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<129> ap_ST_fsm_state1;
    static const sc_lv<129> ap_ST_fsm_state2;
    static const sc_lv<129> ap_ST_fsm_state3;
    static const sc_lv<129> ap_ST_fsm_state4;
    static const sc_lv<129> ap_ST_fsm_state5;
    static const sc_lv<129> ap_ST_fsm_state6;
    static const sc_lv<129> ap_ST_fsm_state7;
    static const sc_lv<129> ap_ST_fsm_state8;
    static const sc_lv<129> ap_ST_fsm_state9;
    static const sc_lv<129> ap_ST_fsm_state10;
    static const sc_lv<129> ap_ST_fsm_state11;
    static const sc_lv<129> ap_ST_fsm_state12;
    static const sc_lv<129> ap_ST_fsm_state13;
    static const sc_lv<129> ap_ST_fsm_state14;
    static const sc_lv<129> ap_ST_fsm_state15;
    static const sc_lv<129> ap_ST_fsm_state16;
    static const sc_lv<129> ap_ST_fsm_state17;
    static const sc_lv<129> ap_ST_fsm_state18;
    static const sc_lv<129> ap_ST_fsm_state19;
    static const sc_lv<129> ap_ST_fsm_state20;
    static const sc_lv<129> ap_ST_fsm_state21;
    static const sc_lv<129> ap_ST_fsm_state22;
    static const sc_lv<129> ap_ST_fsm_state23;
    static const sc_lv<129> ap_ST_fsm_state24;
    static const sc_lv<129> ap_ST_fsm_state25;
    static const sc_lv<129> ap_ST_fsm_state26;
    static const sc_lv<129> ap_ST_fsm_state27;
    static const sc_lv<129> ap_ST_fsm_state28;
    static const sc_lv<129> ap_ST_fsm_state29;
    static const sc_lv<129> ap_ST_fsm_state30;
    static const sc_lv<129> ap_ST_fsm_state31;
    static const sc_lv<129> ap_ST_fsm_state32;
    static const sc_lv<129> ap_ST_fsm_state33;
    static const sc_lv<129> ap_ST_fsm_state34;
    static const sc_lv<129> ap_ST_fsm_state35;
    static const sc_lv<129> ap_ST_fsm_state36;
    static const sc_lv<129> ap_ST_fsm_state37;
    static const sc_lv<129> ap_ST_fsm_state38;
    static const sc_lv<129> ap_ST_fsm_state39;
    static const sc_lv<129> ap_ST_fsm_state40;
    static const sc_lv<129> ap_ST_fsm_state41;
    static const sc_lv<129> ap_ST_fsm_state42;
    static const sc_lv<129> ap_ST_fsm_state43;
    static const sc_lv<129> ap_ST_fsm_state44;
    static const sc_lv<129> ap_ST_fsm_state45;
    static const sc_lv<129> ap_ST_fsm_state46;
    static const sc_lv<129> ap_ST_fsm_state47;
    static const sc_lv<129> ap_ST_fsm_state48;
    static const sc_lv<129> ap_ST_fsm_state49;
    static const sc_lv<129> ap_ST_fsm_state50;
    static const sc_lv<129> ap_ST_fsm_state51;
    static const sc_lv<129> ap_ST_fsm_state52;
    static const sc_lv<129> ap_ST_fsm_state53;
    static const sc_lv<129> ap_ST_fsm_state54;
    static const sc_lv<129> ap_ST_fsm_state55;
    static const sc_lv<129> ap_ST_fsm_state56;
    static const sc_lv<129> ap_ST_fsm_state57;
    static const sc_lv<129> ap_ST_fsm_state58;
    static const sc_lv<129> ap_ST_fsm_state59;
    static const sc_lv<129> ap_ST_fsm_state60;
    static const sc_lv<129> ap_ST_fsm_state61;
    static const sc_lv<129> ap_ST_fsm_state62;
    static const sc_lv<129> ap_ST_fsm_state63;
    static const sc_lv<129> ap_ST_fsm_state64;
    static const sc_lv<129> ap_ST_fsm_state65;
    static const sc_lv<129> ap_ST_fsm_state66;
    static const sc_lv<129> ap_ST_fsm_state67;
    static const sc_lv<129> ap_ST_fsm_state68;
    static const sc_lv<129> ap_ST_fsm_state69;
    static const sc_lv<129> ap_ST_fsm_state70;
    static const sc_lv<129> ap_ST_fsm_state71;
    static const sc_lv<129> ap_ST_fsm_state72;
    static const sc_lv<129> ap_ST_fsm_state73;
    static const sc_lv<129> ap_ST_fsm_state74;
    static const sc_lv<129> ap_ST_fsm_state75;
    static const sc_lv<129> ap_ST_fsm_state76;
    static const sc_lv<129> ap_ST_fsm_state77;
    static const sc_lv<129> ap_ST_fsm_state78;
    static const sc_lv<129> ap_ST_fsm_state79;
    static const sc_lv<129> ap_ST_fsm_state80;
    static const sc_lv<129> ap_ST_fsm_state81;
    static const sc_lv<129> ap_ST_fsm_state82;
    static const sc_lv<129> ap_ST_fsm_state83;
    static const sc_lv<129> ap_ST_fsm_state84;
    static const sc_lv<129> ap_ST_fsm_state85;
    static const sc_lv<129> ap_ST_fsm_state86;
    static const sc_lv<129> ap_ST_fsm_state87;
    static const sc_lv<129> ap_ST_fsm_state88;
    static const sc_lv<129> ap_ST_fsm_state89;
    static const sc_lv<129> ap_ST_fsm_state90;
    static const sc_lv<129> ap_ST_fsm_state91;
    static const sc_lv<129> ap_ST_fsm_state92;
    static const sc_lv<129> ap_ST_fsm_state93;
    static const sc_lv<129> ap_ST_fsm_state94;
    static const sc_lv<129> ap_ST_fsm_state95;
    static const sc_lv<129> ap_ST_fsm_state96;
    static const sc_lv<129> ap_ST_fsm_state97;
    static const sc_lv<129> ap_ST_fsm_state98;
    static const sc_lv<129> ap_ST_fsm_state99;
    static const sc_lv<129> ap_ST_fsm_state100;
    static const sc_lv<129> ap_ST_fsm_state101;
    static const sc_lv<129> ap_ST_fsm_state102;
    static const sc_lv<129> ap_ST_fsm_state103;
    static const sc_lv<129> ap_ST_fsm_state104;
    static const sc_lv<129> ap_ST_fsm_state105;
    static const sc_lv<129> ap_ST_fsm_state106;
    static const sc_lv<129> ap_ST_fsm_state107;
    static const sc_lv<129> ap_ST_fsm_state108;
    static const sc_lv<129> ap_ST_fsm_state109;
    static const sc_lv<129> ap_ST_fsm_state110;
    static const sc_lv<129> ap_ST_fsm_state111;
    static const sc_lv<129> ap_ST_fsm_state112;
    static const sc_lv<129> ap_ST_fsm_state113;
    static const sc_lv<129> ap_ST_fsm_state114;
    static const sc_lv<129> ap_ST_fsm_state115;
    static const sc_lv<129> ap_ST_fsm_state116;
    static const sc_lv<129> ap_ST_fsm_state117;
    static const sc_lv<129> ap_ST_fsm_state118;
    static const sc_lv<129> ap_ST_fsm_state119;
    static const sc_lv<129> ap_ST_fsm_state120;
    static const sc_lv<129> ap_ST_fsm_state121;
    static const sc_lv<129> ap_ST_fsm_state122;
    static const sc_lv<129> ap_ST_fsm_state123;
    static const sc_lv<129> ap_ST_fsm_state124;
    static const sc_lv<129> ap_ST_fsm_state125;
    static const sc_lv<129> ap_ST_fsm_state126;
    static const sc_lv<129> ap_ST_fsm_state127;
    static const sc_lv<129> ap_ST_fsm_pp0_stage0;
    static const sc_lv<129> ap_ST_fsm_state131;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<512> ap_const_lv512_lc_1;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_7F;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_7E;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<32> ap_const_lv32_80;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state127();
    void thread_ap_CS_fsm_state131();
    void thread_ap_CS_fsm_state2();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state128_pp0_stage0_iter0();
    void thread_ap_block_state129_pp0_stage0_iter1();
    void thread_ap_block_state130_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state128();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_ap_sig_ioackin_m_axi_from_V_ARREADY();
    void thread_coalesced_data_num_blk_n();
    void thread_coalesced_data_num_read();
    void thread_from_V_blk_n_AR();
    void thread_from_V_blk_n_R();
    void thread_from_V_offset_blk_n();
    void thread_from_V_offset_read();
    void thread_i_cast_i_i_i_fu_163_p1();
    void thread_i_fu_172_p2();
    void thread_m_axi_from_V_ARADDR();
    void thread_m_axi_from_V_ARBURST();
    void thread_m_axi_from_V_ARCACHE();
    void thread_m_axi_from_V_ARID();
    void thread_m_axi_from_V_ARLEN();
    void thread_m_axi_from_V_ARLOCK();
    void thread_m_axi_from_V_ARPROT();
    void thread_m_axi_from_V_ARQOS();
    void thread_m_axi_from_V_ARREGION();
    void thread_m_axi_from_V_ARSIZE();
    void thread_m_axi_from_V_ARUSER();
    void thread_m_axi_from_V_ARVALID();
    void thread_m_axi_from_V_AWADDR();
    void thread_m_axi_from_V_AWBURST();
    void thread_m_axi_from_V_AWCACHE();
    void thread_m_axi_from_V_AWID();
    void thread_m_axi_from_V_AWLEN();
    void thread_m_axi_from_V_AWLOCK();
    void thread_m_axi_from_V_AWPROT();
    void thread_m_axi_from_V_AWQOS();
    void thread_m_axi_from_V_AWREGION();
    void thread_m_axi_from_V_AWSIZE();
    void thread_m_axi_from_V_AWUSER();
    void thread_m_axi_from_V_AWVALID();
    void thread_m_axi_from_V_BREADY();
    void thread_m_axi_from_V_RREADY();
    void thread_m_axi_from_V_WDATA();
    void thread_m_axi_from_V_WID();
    void thread_m_axi_from_V_WLAST();
    void thread_m_axi_from_V_WSTRB();
    void thread_m_axi_from_V_WUSER();
    void thread_m_axi_from_V_WVALID();
    void thread_tmp_fu_149_p1();
    void thread_tmp_i_fu_153_p1();
    void thread_tmp_i_i_i_fu_167_p2();
    void thread_to_V_V_din();
    void thread_to_V_V_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
