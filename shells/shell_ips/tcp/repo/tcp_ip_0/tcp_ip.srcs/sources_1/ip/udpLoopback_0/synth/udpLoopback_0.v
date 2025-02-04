// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.labs:hls:udpLoopback:1.10
// IP Revision: 1802231035

(* X_CORE_INFO = "udploopback_top,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "udpLoopback_0,udploopback_top,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module udpLoopback_0 (
  lbPortOpenReplyIn_TVALID,
  lbPortOpenReplyIn_TREADY,
  lbPortOpenReplyIn_TDATA,
  lbRequestPortOpenOut_TVALID,
  lbRequestPortOpenOut_TREADY,
  lbRequestPortOpenOut_TDATA,
  lbRxDataIn_TVALID,
  lbRxDataIn_TREADY,
  lbRxDataIn_TDATA,
  lbRxDataIn_TKEEP,
  lbRxDataIn_TLAST,
  lbRxMetadataIn_TVALID,
  lbRxMetadataIn_TREADY,
  lbRxMetadataIn_TDATA,
  lbTxDataOut_TVALID,
  lbTxDataOut_TREADY,
  lbTxDataOut_TDATA,
  lbTxDataOut_TKEEP,
  lbTxDataOut_TLAST,
  lbTxLengthOut_TVALID,
  lbTxLengthOut_TREADY,
  lbTxLengthOut_TDATA,
  lbTxMetadataOut_TVALID,
  lbTxMetadataOut_TREADY,
  lbTxMetadataOut_TDATA,
  aclk,
  aresetn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbPortOpenReplyIn TVALID" *)
input wire lbPortOpenReplyIn_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbPortOpenReplyIn TREADY" *)
output wire lbPortOpenReplyIn_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lbPortOpenReplyIn, TDATA_NUM_BYTES 1, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbPortOpenReplyIn TDATA" *)
input wire [7 : 0] lbPortOpenReplyIn_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbRequestPortOpenOut TVALID" *)
output wire lbRequestPortOpenOut_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbRequestPortOpenOut TREADY" *)
input wire lbRequestPortOpenOut_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lbRequestPortOpenOut, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbRequestPortOpenOut TDATA" *)
output wire [15 : 0] lbRequestPortOpenOut_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbRxDataIn TVALID" *)
input wire lbRxDataIn_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbRxDataIn TREADY" *)
output wire lbRxDataIn_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbRxDataIn TDATA" *)
input wire [63 : 0] lbRxDataIn_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbRxDataIn TKEEP" *)
input wire [7 : 0] lbRxDataIn_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lbRxDataIn, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbRxDataIn TLAST" *)
input wire [0 : 0] lbRxDataIn_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbRxMetadataIn TVALID" *)
input wire lbRxMetadataIn_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbRxMetadataIn TREADY" *)
output wire lbRxMetadataIn_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lbRxMetadataIn, TDATA_NUM_BYTES 12, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 96} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbRxMetadataIn TDATA" *)
input wire [95 : 0] lbRxMetadataIn_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbTxDataOut TVALID" *)
output wire lbTxDataOut_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbTxDataOut TREADY" *)
input wire lbTxDataOut_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbTxDataOut TDATA" *)
output wire [63 : 0] lbTxDataOut_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbTxDataOut TKEEP" *)
output wire [7 : 0] lbTxDataOut_TKEEP;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lbTxDataOut, TDATA_NUM_BYTES 8, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbTxDataOut TLAST" *)
output wire [0 : 0] lbTxDataOut_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbTxLengthOut TVALID" *)
output wire lbTxLengthOut_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbTxLengthOut TREADY" *)
input wire lbTxLengthOut_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lbTxLengthOut, TDATA_NUM_BYTES 2, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbTxLengthOut TDATA" *)
output wire [15 : 0] lbTxLengthOut_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbTxMetadataOut TVALID" *)
output wire lbTxMetadataOut_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbTxMetadataOut TREADY" *)
input wire lbTxMetadataOut_TREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lbTxMetadataOut, TDATA_NUM_BYTES 12, TUSER_WIDTH 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 96} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, TID_WIDTH 0, TDEST_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 lbTxMetadataOut TDATA" *)
output wire [95 : 0] lbTxMetadataOut_TDATA;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF lbPortOpenReplyIn:lbRequestPortOpenOut:lbRxDataIn:lbRxMetadataIn:lbTxDataOut:lbTxLengthOut:lbTxMetadataOut, ASSOCIATED_RESET aresetn" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;

  udploopback_top inst (
    .lbPortOpenReplyIn_TVALID(lbPortOpenReplyIn_TVALID),
    .lbPortOpenReplyIn_TREADY(lbPortOpenReplyIn_TREADY),
    .lbPortOpenReplyIn_TDATA(lbPortOpenReplyIn_TDATA),
    .lbRequestPortOpenOut_TVALID(lbRequestPortOpenOut_TVALID),
    .lbRequestPortOpenOut_TREADY(lbRequestPortOpenOut_TREADY),
    .lbRequestPortOpenOut_TDATA(lbRequestPortOpenOut_TDATA),
    .lbRxDataIn_TVALID(lbRxDataIn_TVALID),
    .lbRxDataIn_TREADY(lbRxDataIn_TREADY),
    .lbRxDataIn_TDATA(lbRxDataIn_TDATA),
    .lbRxDataIn_TKEEP(lbRxDataIn_TKEEP),
    .lbRxDataIn_TLAST(lbRxDataIn_TLAST),
    .lbRxMetadataIn_TVALID(lbRxMetadataIn_TVALID),
    .lbRxMetadataIn_TREADY(lbRxMetadataIn_TREADY),
    .lbRxMetadataIn_TDATA(lbRxMetadataIn_TDATA),
    .lbTxDataOut_TVALID(lbTxDataOut_TVALID),
    .lbTxDataOut_TREADY(lbTxDataOut_TREADY),
    .lbTxDataOut_TDATA(lbTxDataOut_TDATA),
    .lbTxDataOut_TKEEP(lbTxDataOut_TKEEP),
    .lbTxDataOut_TLAST(lbTxDataOut_TLAST),
    .lbTxLengthOut_TVALID(lbTxLengthOut_TVALID),
    .lbTxLengthOut_TREADY(lbTxLengthOut_TREADY),
    .lbTxLengthOut_TDATA(lbTxLengthOut_TDATA),
    .lbTxMetadataOut_TVALID(lbTxMetadataOut_TVALID),
    .lbTxMetadataOut_TREADY(lbTxMetadataOut_TREADY),
    .lbTxMetadataOut_TDATA(lbTxMetadataOut_TDATA),
    .aclk(aclk),
    .aresetn(aresetn)
  );
endmodule
