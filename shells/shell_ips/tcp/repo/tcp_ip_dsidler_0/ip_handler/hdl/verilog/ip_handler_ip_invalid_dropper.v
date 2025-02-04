// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module ip_handler_ip_invalid_dropper (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        ipDataCheckFifo_V_dout,
        ipDataCheckFifo_V_empty_n,
        ipDataCheckFifo_V_read,
        ipValidFifo_V_dout,
        ipValidFifo_V_empty_n,
        ipValidFifo_V_read,
        ipDataDropFifo_V_din,
        ipDataDropFifo_V_full_n,
        ipDataDropFifo_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv2_2 = 2'b10;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv32_48 = 32'b1001000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [72:0] ipDataCheckFifo_V_dout;
input   ipDataCheckFifo_V_empty_n;
output   ipDataCheckFifo_V_read;
input  [0:0] ipValidFifo_V_dout;
input   ipValidFifo_V_empty_n;
output   ipValidFifo_V_read;
output  [72:0] ipDataDropFifo_V_din;
input   ipDataDropFifo_V_full_n;
output   ipDataDropFifo_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg ipDataCheckFifo_V_read;
reg ipValidFifo_V_read;
reg ipDataDropFifo_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [0:0] grp_nbreadreq_fu_66_p3;
wire   [0:0] tmp_3_nbreadreq_fu_80_p3;
reg    ap_sig_bdd_71;
reg   [1:0] iid_state_load_reg_134;
reg   [0:0] tmp_reg_146;
reg    ap_sig_bdd_85;
reg   [1:0] iid_state = 2'b00;
wire   [0:0] grp_fu_102_p3;
reg   [72:0] tmp28_reg_150;
wire   [1:0] storemerge_fu_120_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_71) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_71) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (iid_state == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_3_nbreadreq_fu_80_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_71) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        iid_state <= storemerge_fu_120_p3;
    end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (iid_state == ap_const_lv2_2) & ~(grp_nbreadreq_fu_66_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_71) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(ap_const_lv1_0 == grp_fu_102_p3)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_66_p3 == ap_const_lv1_0) & (iid_state == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_71) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ~(ap_const_lv1_0 == grp_fu_102_p3)))) begin
        iid_state <= ap_const_lv2_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_71) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        iid_state_load_reg_134 <= iid_state;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_66_p3 == ap_const_lv1_0) & (iid_state == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_71) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp28_reg_150 <= ipDataCheckFifo_V_dout;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (iid_state == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_71) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_reg_146 <= grp_nbreadreq_fu_66_p3;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_71 or ap_sig_bdd_85)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_71) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_71 or ap_sig_bdd_85)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_71) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_pprstidle_pp0 assign process. ///
always @ (ap_start or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// ipDataCheckFifo_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or grp_nbreadreq_fu_66_p3 or ap_sig_bdd_71 or ap_sig_bdd_85 or iid_state)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (iid_state == ap_const_lv2_2) & ~(grp_nbreadreq_fu_66_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_71) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_66_p3 == ap_const_lv1_0) & (iid_state == ap_const_lv2_1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_71) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ipDataCheckFifo_V_read = ap_const_logic_1;
    end else begin
        ipDataCheckFifo_V_read = ap_const_logic_0;
    end
end

/// ipDataDropFifo_V_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_71 or iid_state_load_reg_134 or tmp_reg_146 or ap_sig_bdd_85)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv2_1 == iid_state_load_reg_134) & ~(ap_const_lv1_0 == tmp_reg_146) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_71) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ipDataDropFifo_V_write = ap_const_logic_1;
    end else begin
        ipDataDropFifo_V_write = ap_const_logic_0;
    end
end

/// ipValidFifo_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_3_nbreadreq_fu_80_p3 or ap_sig_bdd_71 or ap_sig_bdd_85 or iid_state)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (iid_state == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_3_nbreadreq_fu_80_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_71) | (ap_sig_bdd_85 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ipValidFifo_V_read = ap_const_logic_1;
    end else begin
        ipValidFifo_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_71 or ap_sig_bdd_85 or ap_sig_pprstidle_pp0)
begin
    case (ap_CS_fsm)
        ap_ST_pp0_stg0_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_ppiten_pp0_it0 = ap_start;

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_71 assign process. ///
always @ (ap_start or ap_done_reg or ipDataCheckFifo_V_empty_n or grp_nbreadreq_fu_66_p3 or ipValidFifo_V_empty_n or tmp_3_nbreadreq_fu_80_p3 or iid_state)
begin
    ap_sig_bdd_71 = (((ipDataCheckFifo_V_empty_n == ap_const_logic_0) & (iid_state == ap_const_lv2_2) & ~(grp_nbreadreq_fu_66_p3 == ap_const_lv1_0)) | ((ipDataCheckFifo_V_empty_n == ap_const_logic_0) & ~(grp_nbreadreq_fu_66_p3 == ap_const_lv1_0) & (iid_state == ap_const_lv2_1)) | ((ipValidFifo_V_empty_n == ap_const_logic_0) & (iid_state == ap_const_lv2_0) & ~(ap_const_lv1_0 == tmp_3_nbreadreq_fu_80_p3)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_85 assign process. ///
always @ (ipDataDropFifo_V_full_n or iid_state_load_reg_134 or tmp_reg_146)
begin
    ap_sig_bdd_85 = ((ipDataDropFifo_V_full_n == ap_const_logic_0) & (ap_const_lv2_1 == iid_state_load_reg_134) & ~(ap_const_lv1_0 == tmp_reg_146));
end
assign grp_fu_102_p3 = ipDataCheckFifo_V_dout[ap_const_lv32_48];
assign grp_nbreadreq_fu_66_p3 = ipDataCheckFifo_V_empty_n;
assign ipDataDropFifo_V_din = tmp28_reg_150;
assign storemerge_fu_120_p3 = ((ipValidFifo_V_dout[0:0]===1'b1)? ap_const_lv2_1: ap_const_lv2_2);
assign tmp_3_nbreadreq_fu_80_p3 = ipValidFifo_V_empty_n;


endmodule //ip_handler_ip_invalid_dropper

