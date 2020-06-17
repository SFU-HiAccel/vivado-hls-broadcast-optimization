// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module jacobi2d_kernel_store42 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        m_axi_var_output_0_1_V_AWVALID,
        m_axi_var_output_0_1_V_AWREADY,
        m_axi_var_output_0_1_V_AWADDR,
        m_axi_var_output_0_1_V_AWID,
        m_axi_var_output_0_1_V_AWLEN,
        m_axi_var_output_0_1_V_AWSIZE,
        m_axi_var_output_0_1_V_AWBURST,
        m_axi_var_output_0_1_V_AWLOCK,
        m_axi_var_output_0_1_V_AWCACHE,
        m_axi_var_output_0_1_V_AWPROT,
        m_axi_var_output_0_1_V_AWQOS,
        m_axi_var_output_0_1_V_AWREGION,
        m_axi_var_output_0_1_V_AWUSER,
        m_axi_var_output_0_1_V_WVALID,
        m_axi_var_output_0_1_V_WREADY,
        m_axi_var_output_0_1_V_WDATA,
        m_axi_var_output_0_1_V_WSTRB,
        m_axi_var_output_0_1_V_WLAST,
        m_axi_var_output_0_1_V_WID,
        m_axi_var_output_0_1_V_WUSER,
        m_axi_var_output_0_1_V_ARVALID,
        m_axi_var_output_0_1_V_ARREADY,
        m_axi_var_output_0_1_V_ARADDR,
        m_axi_var_output_0_1_V_ARID,
        m_axi_var_output_0_1_V_ARLEN,
        m_axi_var_output_0_1_V_ARSIZE,
        m_axi_var_output_0_1_V_ARBURST,
        m_axi_var_output_0_1_V_ARLOCK,
        m_axi_var_output_0_1_V_ARCACHE,
        m_axi_var_output_0_1_V_ARPROT,
        m_axi_var_output_0_1_V_ARQOS,
        m_axi_var_output_0_1_V_ARREGION,
        m_axi_var_output_0_1_V_ARUSER,
        m_axi_var_output_0_1_V_RVALID,
        m_axi_var_output_0_1_V_RREADY,
        m_axi_var_output_0_1_V_RDATA,
        m_axi_var_output_0_1_V_RLAST,
        m_axi_var_output_0_1_V_RID,
        m_axi_var_output_0_1_V_RUSER,
        m_axi_var_output_0_1_V_RRESP,
        m_axi_var_output_0_1_V_BVALID,
        m_axi_var_output_0_1_V_BREADY,
        m_axi_var_output_0_1_V_BRESP,
        m_axi_var_output_0_1_V_BID,
        m_axi_var_output_0_1_V_BUSER,
        var_output_0_1_V_offset_dout,
        var_output_0_1_V_offset_empty_n,
        var_output_0_1_V_offset_read,
        output_stream_0_1_V_V_dout,
        output_stream_0_1_V_V_empty_n,
        output_stream_0_1_V_V_read,
        coalesced_data_num_dout,
        coalesced_data_num_empty_n,
        coalesced_data_num_read
);

parameter    ap_ST_fsm_state1 = 127'd1;
parameter    ap_ST_fsm_state2 = 127'd2;
parameter    ap_ST_fsm_pp0_stage0 = 127'd4;
parameter    ap_ST_fsm_state6 = 127'd8;
parameter    ap_ST_fsm_state7 = 127'd16;
parameter    ap_ST_fsm_state8 = 127'd32;
parameter    ap_ST_fsm_state9 = 127'd64;
parameter    ap_ST_fsm_state10 = 127'd128;
parameter    ap_ST_fsm_state11 = 127'd256;
parameter    ap_ST_fsm_state12 = 127'd512;
parameter    ap_ST_fsm_state13 = 127'd1024;
parameter    ap_ST_fsm_state14 = 127'd2048;
parameter    ap_ST_fsm_state15 = 127'd4096;
parameter    ap_ST_fsm_state16 = 127'd8192;
parameter    ap_ST_fsm_state17 = 127'd16384;
parameter    ap_ST_fsm_state18 = 127'd32768;
parameter    ap_ST_fsm_state19 = 127'd65536;
parameter    ap_ST_fsm_state20 = 127'd131072;
parameter    ap_ST_fsm_state21 = 127'd262144;
parameter    ap_ST_fsm_state22 = 127'd524288;
parameter    ap_ST_fsm_state23 = 127'd1048576;
parameter    ap_ST_fsm_state24 = 127'd2097152;
parameter    ap_ST_fsm_state25 = 127'd4194304;
parameter    ap_ST_fsm_state26 = 127'd8388608;
parameter    ap_ST_fsm_state27 = 127'd16777216;
parameter    ap_ST_fsm_state28 = 127'd33554432;
parameter    ap_ST_fsm_state29 = 127'd67108864;
parameter    ap_ST_fsm_state30 = 127'd134217728;
parameter    ap_ST_fsm_state31 = 127'd268435456;
parameter    ap_ST_fsm_state32 = 127'd536870912;
parameter    ap_ST_fsm_state33 = 127'd1073741824;
parameter    ap_ST_fsm_state34 = 127'd2147483648;
parameter    ap_ST_fsm_state35 = 127'd4294967296;
parameter    ap_ST_fsm_state36 = 127'd8589934592;
parameter    ap_ST_fsm_state37 = 127'd17179869184;
parameter    ap_ST_fsm_state38 = 127'd34359738368;
parameter    ap_ST_fsm_state39 = 127'd68719476736;
parameter    ap_ST_fsm_state40 = 127'd137438953472;
parameter    ap_ST_fsm_state41 = 127'd274877906944;
parameter    ap_ST_fsm_state42 = 127'd549755813888;
parameter    ap_ST_fsm_state43 = 127'd1099511627776;
parameter    ap_ST_fsm_state44 = 127'd2199023255552;
parameter    ap_ST_fsm_state45 = 127'd4398046511104;
parameter    ap_ST_fsm_state46 = 127'd8796093022208;
parameter    ap_ST_fsm_state47 = 127'd17592186044416;
parameter    ap_ST_fsm_state48 = 127'd35184372088832;
parameter    ap_ST_fsm_state49 = 127'd70368744177664;
parameter    ap_ST_fsm_state50 = 127'd140737488355328;
parameter    ap_ST_fsm_state51 = 127'd281474976710656;
parameter    ap_ST_fsm_state52 = 127'd562949953421312;
parameter    ap_ST_fsm_state53 = 127'd1125899906842624;
parameter    ap_ST_fsm_state54 = 127'd2251799813685248;
parameter    ap_ST_fsm_state55 = 127'd4503599627370496;
parameter    ap_ST_fsm_state56 = 127'd9007199254740992;
parameter    ap_ST_fsm_state57 = 127'd18014398509481984;
parameter    ap_ST_fsm_state58 = 127'd36028797018963968;
parameter    ap_ST_fsm_state59 = 127'd72057594037927936;
parameter    ap_ST_fsm_state60 = 127'd144115188075855872;
parameter    ap_ST_fsm_state61 = 127'd288230376151711744;
parameter    ap_ST_fsm_state62 = 127'd576460752303423488;
parameter    ap_ST_fsm_state63 = 127'd1152921504606846976;
parameter    ap_ST_fsm_state64 = 127'd2305843009213693952;
parameter    ap_ST_fsm_state65 = 127'd4611686018427387904;
parameter    ap_ST_fsm_state66 = 127'd9223372036854775808;
parameter    ap_ST_fsm_state67 = 127'd18446744073709551616;
parameter    ap_ST_fsm_state68 = 127'd36893488147419103232;
parameter    ap_ST_fsm_state69 = 127'd73786976294838206464;
parameter    ap_ST_fsm_state70 = 127'd147573952589676412928;
parameter    ap_ST_fsm_state71 = 127'd295147905179352825856;
parameter    ap_ST_fsm_state72 = 127'd590295810358705651712;
parameter    ap_ST_fsm_state73 = 127'd1180591620717411303424;
parameter    ap_ST_fsm_state74 = 127'd2361183241434822606848;
parameter    ap_ST_fsm_state75 = 127'd4722366482869645213696;
parameter    ap_ST_fsm_state76 = 127'd9444732965739290427392;
parameter    ap_ST_fsm_state77 = 127'd18889465931478580854784;
parameter    ap_ST_fsm_state78 = 127'd37778931862957161709568;
parameter    ap_ST_fsm_state79 = 127'd75557863725914323419136;
parameter    ap_ST_fsm_state80 = 127'd151115727451828646838272;
parameter    ap_ST_fsm_state81 = 127'd302231454903657293676544;
parameter    ap_ST_fsm_state82 = 127'd604462909807314587353088;
parameter    ap_ST_fsm_state83 = 127'd1208925819614629174706176;
parameter    ap_ST_fsm_state84 = 127'd2417851639229258349412352;
parameter    ap_ST_fsm_state85 = 127'd4835703278458516698824704;
parameter    ap_ST_fsm_state86 = 127'd9671406556917033397649408;
parameter    ap_ST_fsm_state87 = 127'd19342813113834066795298816;
parameter    ap_ST_fsm_state88 = 127'd38685626227668133590597632;
parameter    ap_ST_fsm_state89 = 127'd77371252455336267181195264;
parameter    ap_ST_fsm_state90 = 127'd154742504910672534362390528;
parameter    ap_ST_fsm_state91 = 127'd309485009821345068724781056;
parameter    ap_ST_fsm_state92 = 127'd618970019642690137449562112;
parameter    ap_ST_fsm_state93 = 127'd1237940039285380274899124224;
parameter    ap_ST_fsm_state94 = 127'd2475880078570760549798248448;
parameter    ap_ST_fsm_state95 = 127'd4951760157141521099596496896;
parameter    ap_ST_fsm_state96 = 127'd9903520314283042199192993792;
parameter    ap_ST_fsm_state97 = 127'd19807040628566084398385987584;
parameter    ap_ST_fsm_state98 = 127'd39614081257132168796771975168;
parameter    ap_ST_fsm_state99 = 127'd79228162514264337593543950336;
parameter    ap_ST_fsm_state100 = 127'd158456325028528675187087900672;
parameter    ap_ST_fsm_state101 = 127'd316912650057057350374175801344;
parameter    ap_ST_fsm_state102 = 127'd633825300114114700748351602688;
parameter    ap_ST_fsm_state103 = 127'd1267650600228229401496703205376;
parameter    ap_ST_fsm_state104 = 127'd2535301200456458802993406410752;
parameter    ap_ST_fsm_state105 = 127'd5070602400912917605986812821504;
parameter    ap_ST_fsm_state106 = 127'd10141204801825835211973625643008;
parameter    ap_ST_fsm_state107 = 127'd20282409603651670423947251286016;
parameter    ap_ST_fsm_state108 = 127'd40564819207303340847894502572032;
parameter    ap_ST_fsm_state109 = 127'd81129638414606681695789005144064;
parameter    ap_ST_fsm_state110 = 127'd162259276829213363391578010288128;
parameter    ap_ST_fsm_state111 = 127'd324518553658426726783156020576256;
parameter    ap_ST_fsm_state112 = 127'd649037107316853453566312041152512;
parameter    ap_ST_fsm_state113 = 127'd1298074214633706907132624082305024;
parameter    ap_ST_fsm_state114 = 127'd2596148429267413814265248164610048;
parameter    ap_ST_fsm_state115 = 127'd5192296858534827628530496329220096;
parameter    ap_ST_fsm_state116 = 127'd10384593717069655257060992658440192;
parameter    ap_ST_fsm_state117 = 127'd20769187434139310514121985316880384;
parameter    ap_ST_fsm_state118 = 127'd41538374868278621028243970633760768;
parameter    ap_ST_fsm_state119 = 127'd83076749736557242056487941267521536;
parameter    ap_ST_fsm_state120 = 127'd166153499473114484112975882535043072;
parameter    ap_ST_fsm_state121 = 127'd332306998946228968225951765070086144;
parameter    ap_ST_fsm_state122 = 127'd664613997892457936451903530140172288;
parameter    ap_ST_fsm_state123 = 127'd1329227995784915872903807060280344576;
parameter    ap_ST_fsm_state124 = 127'd2658455991569831745807614120560689152;
parameter    ap_ST_fsm_state125 = 127'd5316911983139663491615228241121378304;
parameter    ap_ST_fsm_state126 = 127'd10633823966279326983230456482242756608;
parameter    ap_ST_fsm_state127 = 127'd21267647932558653966460912964485513216;
parameter    ap_ST_fsm_state128 = 127'd42535295865117307932921825928971026432;
parameter    ap_ST_fsm_state129 = 127'd85070591730234615865843651857942052864;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   m_axi_var_output_0_1_V_AWVALID;
input   m_axi_var_output_0_1_V_AWREADY;
output  [31:0] m_axi_var_output_0_1_V_AWADDR;
output  [0:0] m_axi_var_output_0_1_V_AWID;
output  [31:0] m_axi_var_output_0_1_V_AWLEN;
output  [2:0] m_axi_var_output_0_1_V_AWSIZE;
output  [1:0] m_axi_var_output_0_1_V_AWBURST;
output  [1:0] m_axi_var_output_0_1_V_AWLOCK;
output  [3:0] m_axi_var_output_0_1_V_AWCACHE;
output  [2:0] m_axi_var_output_0_1_V_AWPROT;
output  [3:0] m_axi_var_output_0_1_V_AWQOS;
output  [3:0] m_axi_var_output_0_1_V_AWREGION;
output  [0:0] m_axi_var_output_0_1_V_AWUSER;
output   m_axi_var_output_0_1_V_WVALID;
input   m_axi_var_output_0_1_V_WREADY;
output  [511:0] m_axi_var_output_0_1_V_WDATA;
output  [63:0] m_axi_var_output_0_1_V_WSTRB;
output   m_axi_var_output_0_1_V_WLAST;
output  [0:0] m_axi_var_output_0_1_V_WID;
output  [0:0] m_axi_var_output_0_1_V_WUSER;
output   m_axi_var_output_0_1_V_ARVALID;
input   m_axi_var_output_0_1_V_ARREADY;
output  [31:0] m_axi_var_output_0_1_V_ARADDR;
output  [0:0] m_axi_var_output_0_1_V_ARID;
output  [31:0] m_axi_var_output_0_1_V_ARLEN;
output  [2:0] m_axi_var_output_0_1_V_ARSIZE;
output  [1:0] m_axi_var_output_0_1_V_ARBURST;
output  [1:0] m_axi_var_output_0_1_V_ARLOCK;
output  [3:0] m_axi_var_output_0_1_V_ARCACHE;
output  [2:0] m_axi_var_output_0_1_V_ARPROT;
output  [3:0] m_axi_var_output_0_1_V_ARQOS;
output  [3:0] m_axi_var_output_0_1_V_ARREGION;
output  [0:0] m_axi_var_output_0_1_V_ARUSER;
input   m_axi_var_output_0_1_V_RVALID;
output   m_axi_var_output_0_1_V_RREADY;
input  [511:0] m_axi_var_output_0_1_V_RDATA;
input   m_axi_var_output_0_1_V_RLAST;
input  [0:0] m_axi_var_output_0_1_V_RID;
input  [0:0] m_axi_var_output_0_1_V_RUSER;
input  [1:0] m_axi_var_output_0_1_V_RRESP;
input   m_axi_var_output_0_1_V_BVALID;
output   m_axi_var_output_0_1_V_BREADY;
input  [1:0] m_axi_var_output_0_1_V_BRESP;
input  [0:0] m_axi_var_output_0_1_V_BID;
input  [0:0] m_axi_var_output_0_1_V_BUSER;
input  [31:0] var_output_0_1_V_offset_dout;
input   var_output_0_1_V_offset_empty_n;
output   var_output_0_1_V_offset_read;
input  [511:0] output_stream_0_1_V_V_dout;
input   output_stream_0_1_V_V_empty_n;
output   output_stream_0_1_V_V_read;
input  [63:0] coalesced_data_num_dout;
input   coalesced_data_num_empty_n;
output   coalesced_data_num_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_var_output_0_1_V_AWVALID;
reg m_axi_var_output_0_1_V_WVALID;
reg m_axi_var_output_0_1_V_BREADY;
reg var_output_0_1_V_offset_read;
reg output_stream_0_1_V_V_read;
reg coalesced_data_num_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [126:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    var_output_0_1_V_blk_n_AW;
wire    ap_CS_fsm_state2;
reg    var_output_0_1_V_blk_n_W;
reg    ap_enable_reg_pp0_iter2;
wire    ap_block_pp0_stage0;
reg   [0:0] tmp_i_i_i_reg_202;
reg   [0:0] tmp_i_i_i_reg_202_pp0_iter1_reg;
reg    var_output_0_1_V_blk_n_B;
wire    ap_CS_fsm_state129;
reg    var_output_0_1_V_offset_blk_n;
reg    output_stream_0_1_V_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
reg    coalesced_data_num_blk_n;
reg   [30:0] i_i_i_i_reg_135;
reg   [25:0] var_output_0_1_V_offset1_i_reg_185;
reg    ap_block_state1;
wire   [31:0] tmp_fu_156_p1;
reg   [31:0] tmp_reg_190;
reg    ap_sig_ioackin_m_axi_var_output_0_1_V_AWREADY;
wire   [0:0] tmp_i_i_i_fu_174_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state5_pp0_stage0_iter2;
reg    ap_sig_ioackin_m_axi_var_output_0_1_V_WREADY;
reg    ap_block_state5_io;
reg    ap_block_pp0_stage0_11001;
wire   [30:0] i_fu_179_p2;
reg    ap_enable_reg_pp0_iter0;
reg   [511:0] tmp_V_reg_211;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
wire   [63:0] tmp_i_fu_160_p1;
reg    ap_reg_ioackin_m_axi_var_output_0_1_V_AWREADY;
reg    ap_reg_ioackin_m_axi_var_output_0_1_V_WREADY;
reg    ap_block_pp0_stage0_01001;
wire   [31:0] i_cast_i_i_i_fu_170_p1;
reg   [126:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 127'd1;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_reg_ioackin_m_axi_var_output_0_1_V_AWREADY = 1'b0;
#0 ap_reg_ioackin_m_axi_var_output_0_1_V_WREADY = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state129) & (m_axi_var_output_0_1_V_BVALID == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_sig_ioackin_m_axi_var_output_0_1_V_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state3)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((ap_sig_ioackin_m_axi_var_output_0_1_V_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_var_output_0_1_V_AWREADY <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            if ((ap_sig_ioackin_m_axi_var_output_0_1_V_AWREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_var_output_0_1_V_AWREADY <= 1'b0;
            end else if ((m_axi_var_output_0_1_V_AWREADY == 1'b1)) begin
                ap_reg_ioackin_m_axi_var_output_0_1_V_AWREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_ioackin_m_axi_var_output_0_1_V_WREADY <= 1'b0;
    end else begin
        if (((tmp_i_i_i_reg_202_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            if ((1'b0 == ap_block_pp0_stage0_11001)) begin
                ap_reg_ioackin_m_axi_var_output_0_1_V_WREADY <= 1'b0;
            end else if (((1'b0 == ap_block_pp0_stage0_01001) & (m_axi_var_output_0_1_V_WREADY == 1'b1))) begin
                ap_reg_ioackin_m_axi_var_output_0_1_V_WREADY <= 1'b1;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_i_i_fu_174_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_i_i_i_reg_135 <= i_fu_179_p2;
    end else if (((ap_sig_ioackin_m_axi_var_output_0_1_V_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        i_i_i_i_reg_135 <= 31'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_i_i_reg_202 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_V_reg_211 <= output_stream_0_1_V_V_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_i_i_i_reg_202 <= tmp_i_i_i_fu_174_p2;
        tmp_i_i_i_reg_202_pp0_iter1_reg <= tmp_i_i_i_reg_202;
    end
end

always @ (posedge ap_clk) begin
    if ((~((coalesced_data_num_empty_n == 1'b0) | (var_output_0_1_V_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_reg_190 <= tmp_fu_156_p1;
        var_output_0_1_V_offset1_i_reg_185 <= {{var_output_0_1_V_offset_dout[31:6]}};
    end
end

always @ (*) begin
    if ((tmp_i_i_i_fu_174_p2 == 1'd0)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state129) & (m_axi_var_output_0_1_V_BVALID == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state129) & (m_axi_var_output_0_1_V_BVALID == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_var_output_0_1_V_AWREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_var_output_0_1_V_AWREADY = m_axi_var_output_0_1_V_AWREADY;
    end else begin
        ap_sig_ioackin_m_axi_var_output_0_1_V_AWREADY = 1'b1;
    end
end

always @ (*) begin
    if ((ap_reg_ioackin_m_axi_var_output_0_1_V_WREADY == 1'b0)) begin
        ap_sig_ioackin_m_axi_var_output_0_1_V_WREADY = m_axi_var_output_0_1_V_WREADY;
    end else begin
        ap_sig_ioackin_m_axi_var_output_0_1_V_WREADY = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        coalesced_data_num_blk_n = coalesced_data_num_empty_n;
    end else begin
        coalesced_data_num_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((coalesced_data_num_empty_n == 1'b0) | (var_output_0_1_V_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        coalesced_data_num_read = 1'b1;
    end else begin
        coalesced_data_num_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_reg_ioackin_m_axi_var_output_0_1_V_AWREADY == 1'b0) & (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_var_output_0_1_V_AWVALID = 1'b1;
    end else begin
        m_axi_var_output_0_1_V_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state129) & (m_axi_var_output_0_1_V_BVALID == 1'b1))) begin
        m_axi_var_output_0_1_V_BREADY = 1'b1;
    end else begin
        m_axi_var_output_0_1_V_BREADY = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_01001) & (ap_reg_ioackin_m_axi_var_output_0_1_V_WREADY == 1'b0) & (tmp_i_i_i_reg_202_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        m_axi_var_output_0_1_V_WVALID = 1'b1;
    end else begin
        m_axi_var_output_0_1_V_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_i_i_i_reg_202 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_stream_0_1_V_V_blk_n = output_stream_0_1_V_V_empty_n;
    end else begin
        output_stream_0_1_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (tmp_i_i_i_reg_202 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_stream_0_1_V_V_read = 1'b1;
    end else begin
        output_stream_0_1_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        var_output_0_1_V_blk_n_AW = m_axi_var_output_0_1_V_AWREADY;
    end else begin
        var_output_0_1_V_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state129)) begin
        var_output_0_1_V_blk_n_B = m_axi_var_output_0_1_V_BVALID;
    end else begin
        var_output_0_1_V_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if (((tmp_i_i_i_reg_202_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        var_output_0_1_V_blk_n_W = m_axi_var_output_0_1_V_WREADY;
    end else begin
        var_output_0_1_V_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        var_output_0_1_V_offset_blk_n = var_output_0_1_V_offset_empty_n;
    end else begin
        var_output_0_1_V_offset_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((coalesced_data_num_empty_n == 1'b0) | (var_output_0_1_V_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        var_output_0_1_V_offset_read = 1'b1;
    end else begin
        var_output_0_1_V_offset_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((coalesced_data_num_empty_n == 1'b0) | (var_output_0_1_V_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((ap_sig_ioackin_m_axi_var_output_0_1_V_AWREADY == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (tmp_i_i_i_fu_174_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (tmp_i_i_i_fu_174_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            ap_NS_fsm = ap_ST_fsm_state33;
        end
        ap_ST_fsm_state33 : begin
            ap_NS_fsm = ap_ST_fsm_state34;
        end
        ap_ST_fsm_state34 : begin
            ap_NS_fsm = ap_ST_fsm_state35;
        end
        ap_ST_fsm_state35 : begin
            ap_NS_fsm = ap_ST_fsm_state36;
        end
        ap_ST_fsm_state36 : begin
            ap_NS_fsm = ap_ST_fsm_state37;
        end
        ap_ST_fsm_state37 : begin
            ap_NS_fsm = ap_ST_fsm_state38;
        end
        ap_ST_fsm_state38 : begin
            ap_NS_fsm = ap_ST_fsm_state39;
        end
        ap_ST_fsm_state39 : begin
            ap_NS_fsm = ap_ST_fsm_state40;
        end
        ap_ST_fsm_state40 : begin
            ap_NS_fsm = ap_ST_fsm_state41;
        end
        ap_ST_fsm_state41 : begin
            ap_NS_fsm = ap_ST_fsm_state42;
        end
        ap_ST_fsm_state42 : begin
            ap_NS_fsm = ap_ST_fsm_state43;
        end
        ap_ST_fsm_state43 : begin
            ap_NS_fsm = ap_ST_fsm_state44;
        end
        ap_ST_fsm_state44 : begin
            ap_NS_fsm = ap_ST_fsm_state45;
        end
        ap_ST_fsm_state45 : begin
            ap_NS_fsm = ap_ST_fsm_state46;
        end
        ap_ST_fsm_state46 : begin
            ap_NS_fsm = ap_ST_fsm_state47;
        end
        ap_ST_fsm_state47 : begin
            ap_NS_fsm = ap_ST_fsm_state48;
        end
        ap_ST_fsm_state48 : begin
            ap_NS_fsm = ap_ST_fsm_state49;
        end
        ap_ST_fsm_state49 : begin
            ap_NS_fsm = ap_ST_fsm_state50;
        end
        ap_ST_fsm_state50 : begin
            ap_NS_fsm = ap_ST_fsm_state51;
        end
        ap_ST_fsm_state51 : begin
            ap_NS_fsm = ap_ST_fsm_state52;
        end
        ap_ST_fsm_state52 : begin
            ap_NS_fsm = ap_ST_fsm_state53;
        end
        ap_ST_fsm_state53 : begin
            ap_NS_fsm = ap_ST_fsm_state54;
        end
        ap_ST_fsm_state54 : begin
            ap_NS_fsm = ap_ST_fsm_state55;
        end
        ap_ST_fsm_state55 : begin
            ap_NS_fsm = ap_ST_fsm_state56;
        end
        ap_ST_fsm_state56 : begin
            ap_NS_fsm = ap_ST_fsm_state57;
        end
        ap_ST_fsm_state57 : begin
            ap_NS_fsm = ap_ST_fsm_state58;
        end
        ap_ST_fsm_state58 : begin
            ap_NS_fsm = ap_ST_fsm_state59;
        end
        ap_ST_fsm_state59 : begin
            ap_NS_fsm = ap_ST_fsm_state60;
        end
        ap_ST_fsm_state60 : begin
            ap_NS_fsm = ap_ST_fsm_state61;
        end
        ap_ST_fsm_state61 : begin
            ap_NS_fsm = ap_ST_fsm_state62;
        end
        ap_ST_fsm_state62 : begin
            ap_NS_fsm = ap_ST_fsm_state63;
        end
        ap_ST_fsm_state63 : begin
            ap_NS_fsm = ap_ST_fsm_state64;
        end
        ap_ST_fsm_state64 : begin
            ap_NS_fsm = ap_ST_fsm_state65;
        end
        ap_ST_fsm_state65 : begin
            ap_NS_fsm = ap_ST_fsm_state66;
        end
        ap_ST_fsm_state66 : begin
            ap_NS_fsm = ap_ST_fsm_state67;
        end
        ap_ST_fsm_state67 : begin
            ap_NS_fsm = ap_ST_fsm_state68;
        end
        ap_ST_fsm_state68 : begin
            ap_NS_fsm = ap_ST_fsm_state69;
        end
        ap_ST_fsm_state69 : begin
            ap_NS_fsm = ap_ST_fsm_state70;
        end
        ap_ST_fsm_state70 : begin
            ap_NS_fsm = ap_ST_fsm_state71;
        end
        ap_ST_fsm_state71 : begin
            ap_NS_fsm = ap_ST_fsm_state72;
        end
        ap_ST_fsm_state72 : begin
            ap_NS_fsm = ap_ST_fsm_state73;
        end
        ap_ST_fsm_state73 : begin
            ap_NS_fsm = ap_ST_fsm_state74;
        end
        ap_ST_fsm_state74 : begin
            ap_NS_fsm = ap_ST_fsm_state75;
        end
        ap_ST_fsm_state75 : begin
            ap_NS_fsm = ap_ST_fsm_state76;
        end
        ap_ST_fsm_state76 : begin
            ap_NS_fsm = ap_ST_fsm_state77;
        end
        ap_ST_fsm_state77 : begin
            ap_NS_fsm = ap_ST_fsm_state78;
        end
        ap_ST_fsm_state78 : begin
            ap_NS_fsm = ap_ST_fsm_state79;
        end
        ap_ST_fsm_state79 : begin
            ap_NS_fsm = ap_ST_fsm_state80;
        end
        ap_ST_fsm_state80 : begin
            ap_NS_fsm = ap_ST_fsm_state81;
        end
        ap_ST_fsm_state81 : begin
            ap_NS_fsm = ap_ST_fsm_state82;
        end
        ap_ST_fsm_state82 : begin
            ap_NS_fsm = ap_ST_fsm_state83;
        end
        ap_ST_fsm_state83 : begin
            ap_NS_fsm = ap_ST_fsm_state84;
        end
        ap_ST_fsm_state84 : begin
            ap_NS_fsm = ap_ST_fsm_state85;
        end
        ap_ST_fsm_state85 : begin
            ap_NS_fsm = ap_ST_fsm_state86;
        end
        ap_ST_fsm_state86 : begin
            ap_NS_fsm = ap_ST_fsm_state87;
        end
        ap_ST_fsm_state87 : begin
            ap_NS_fsm = ap_ST_fsm_state88;
        end
        ap_ST_fsm_state88 : begin
            ap_NS_fsm = ap_ST_fsm_state89;
        end
        ap_ST_fsm_state89 : begin
            ap_NS_fsm = ap_ST_fsm_state90;
        end
        ap_ST_fsm_state90 : begin
            ap_NS_fsm = ap_ST_fsm_state91;
        end
        ap_ST_fsm_state91 : begin
            ap_NS_fsm = ap_ST_fsm_state92;
        end
        ap_ST_fsm_state92 : begin
            ap_NS_fsm = ap_ST_fsm_state93;
        end
        ap_ST_fsm_state93 : begin
            ap_NS_fsm = ap_ST_fsm_state94;
        end
        ap_ST_fsm_state94 : begin
            ap_NS_fsm = ap_ST_fsm_state95;
        end
        ap_ST_fsm_state95 : begin
            ap_NS_fsm = ap_ST_fsm_state96;
        end
        ap_ST_fsm_state96 : begin
            ap_NS_fsm = ap_ST_fsm_state97;
        end
        ap_ST_fsm_state97 : begin
            ap_NS_fsm = ap_ST_fsm_state98;
        end
        ap_ST_fsm_state98 : begin
            ap_NS_fsm = ap_ST_fsm_state99;
        end
        ap_ST_fsm_state99 : begin
            ap_NS_fsm = ap_ST_fsm_state100;
        end
        ap_ST_fsm_state100 : begin
            ap_NS_fsm = ap_ST_fsm_state101;
        end
        ap_ST_fsm_state101 : begin
            ap_NS_fsm = ap_ST_fsm_state102;
        end
        ap_ST_fsm_state102 : begin
            ap_NS_fsm = ap_ST_fsm_state103;
        end
        ap_ST_fsm_state103 : begin
            ap_NS_fsm = ap_ST_fsm_state104;
        end
        ap_ST_fsm_state104 : begin
            ap_NS_fsm = ap_ST_fsm_state105;
        end
        ap_ST_fsm_state105 : begin
            ap_NS_fsm = ap_ST_fsm_state106;
        end
        ap_ST_fsm_state106 : begin
            ap_NS_fsm = ap_ST_fsm_state107;
        end
        ap_ST_fsm_state107 : begin
            ap_NS_fsm = ap_ST_fsm_state108;
        end
        ap_ST_fsm_state108 : begin
            ap_NS_fsm = ap_ST_fsm_state109;
        end
        ap_ST_fsm_state109 : begin
            ap_NS_fsm = ap_ST_fsm_state110;
        end
        ap_ST_fsm_state110 : begin
            ap_NS_fsm = ap_ST_fsm_state111;
        end
        ap_ST_fsm_state111 : begin
            ap_NS_fsm = ap_ST_fsm_state112;
        end
        ap_ST_fsm_state112 : begin
            ap_NS_fsm = ap_ST_fsm_state113;
        end
        ap_ST_fsm_state113 : begin
            ap_NS_fsm = ap_ST_fsm_state114;
        end
        ap_ST_fsm_state114 : begin
            ap_NS_fsm = ap_ST_fsm_state115;
        end
        ap_ST_fsm_state115 : begin
            ap_NS_fsm = ap_ST_fsm_state116;
        end
        ap_ST_fsm_state116 : begin
            ap_NS_fsm = ap_ST_fsm_state117;
        end
        ap_ST_fsm_state117 : begin
            ap_NS_fsm = ap_ST_fsm_state118;
        end
        ap_ST_fsm_state118 : begin
            ap_NS_fsm = ap_ST_fsm_state119;
        end
        ap_ST_fsm_state119 : begin
            ap_NS_fsm = ap_ST_fsm_state120;
        end
        ap_ST_fsm_state120 : begin
            ap_NS_fsm = ap_ST_fsm_state121;
        end
        ap_ST_fsm_state121 : begin
            ap_NS_fsm = ap_ST_fsm_state122;
        end
        ap_ST_fsm_state122 : begin
            ap_NS_fsm = ap_ST_fsm_state123;
        end
        ap_ST_fsm_state123 : begin
            ap_NS_fsm = ap_ST_fsm_state124;
        end
        ap_ST_fsm_state124 : begin
            ap_NS_fsm = ap_ST_fsm_state125;
        end
        ap_ST_fsm_state125 : begin
            ap_NS_fsm = ap_ST_fsm_state126;
        end
        ap_ST_fsm_state126 : begin
            ap_NS_fsm = ap_ST_fsm_state127;
        end
        ap_ST_fsm_state127 : begin
            ap_NS_fsm = ap_ST_fsm_state128;
        end
        ap_ST_fsm_state128 : begin
            ap_NS_fsm = ap_ST_fsm_state129;
        end
        ap_ST_fsm_state129 : begin
            if (((1'b1 == ap_CS_fsm_state129) & (m_axi_var_output_0_1_V_BVALID == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state129;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state129 = ap_CS_fsm[32'd126];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((output_stream_0_1_V_V_empty_n == 1'b0) & (tmp_i_i_i_reg_202 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((output_stream_0_1_V_V_empty_n == 1'b0) & (tmp_i_i_i_reg_202 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state5_io)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((output_stream_0_1_V_V_empty_n == 1'b0) & (tmp_i_i_i_reg_202 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1)) | ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state5_io)));
end

always @ (*) begin
    ap_block_state1 = ((coalesced_data_num_empty_n == 1'b0) | (var_output_0_1_V_offset_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((output_stream_0_1_V_V_empty_n == 1'b0) & (tmp_i_i_i_reg_202 == 1'd1));
end

always @ (*) begin
    ap_block_state5_io = ((ap_sig_ioackin_m_axi_var_output_0_1_V_WREADY == 1'b0) & (tmp_i_i_i_reg_202_pp0_iter1_reg == 1'd1));
end

assign ap_block_state5_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign i_cast_i_i_i_fu_170_p1 = i_i_i_i_reg_135;

assign i_fu_179_p2 = (i_i_i_i_reg_135 + 31'd1);

assign m_axi_var_output_0_1_V_ARADDR = 32'd0;

assign m_axi_var_output_0_1_V_ARBURST = 2'd0;

assign m_axi_var_output_0_1_V_ARCACHE = 4'd0;

assign m_axi_var_output_0_1_V_ARID = 1'd0;

assign m_axi_var_output_0_1_V_ARLEN = 32'd0;

assign m_axi_var_output_0_1_V_ARLOCK = 2'd0;

assign m_axi_var_output_0_1_V_ARPROT = 3'd0;

assign m_axi_var_output_0_1_V_ARQOS = 4'd0;

assign m_axi_var_output_0_1_V_ARREGION = 4'd0;

assign m_axi_var_output_0_1_V_ARSIZE = 3'd0;

assign m_axi_var_output_0_1_V_ARUSER = 1'd0;

assign m_axi_var_output_0_1_V_ARVALID = 1'b0;

assign m_axi_var_output_0_1_V_AWADDR = tmp_i_fu_160_p1;

assign m_axi_var_output_0_1_V_AWBURST = 2'd0;

assign m_axi_var_output_0_1_V_AWCACHE = 4'd0;

assign m_axi_var_output_0_1_V_AWID = 1'd0;

assign m_axi_var_output_0_1_V_AWLEN = tmp_reg_190;

assign m_axi_var_output_0_1_V_AWLOCK = 2'd0;

assign m_axi_var_output_0_1_V_AWPROT = 3'd0;

assign m_axi_var_output_0_1_V_AWQOS = 4'd0;

assign m_axi_var_output_0_1_V_AWREGION = 4'd0;

assign m_axi_var_output_0_1_V_AWSIZE = 3'd0;

assign m_axi_var_output_0_1_V_AWUSER = 1'd0;

assign m_axi_var_output_0_1_V_RREADY = 1'b0;

assign m_axi_var_output_0_1_V_WDATA = tmp_V_reg_211;

assign m_axi_var_output_0_1_V_WID = 1'd0;

assign m_axi_var_output_0_1_V_WLAST = 1'b0;

assign m_axi_var_output_0_1_V_WSTRB = 64'd18446744073709551615;

assign m_axi_var_output_0_1_V_WUSER = 1'd0;

assign tmp_fu_156_p1 = coalesced_data_num_dout[31:0];

assign tmp_i_fu_160_p1 = var_output_0_1_V_offset1_i_reg_185;

assign tmp_i_i_i_fu_174_p2 = (($signed(i_cast_i_i_i_fu_170_p1) < $signed(tmp_reg_190)) ? 1'b1 : 1'b0);

endmodule //jacobi2d_kernel_store42
