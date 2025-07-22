`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/01/2025 06:11:05 PM
// Design Name: 
// Module Name: DaraFeeder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include "aquila_config.vh"


module DataFeeder #(
     parameter XLEN = 32
)(   
    // System signals
    input clk_i,
    input rst_i,

    // Device bus signals
    input en_i,
    input we_i,
    input [XLEN-1 : 0]          addr_i,
    input [XLEN-1 : 0]          data_i,
    output reg                  ready_o,
    output[XLEN-1 : 0]          data_o
    

    );


(* keep = "true",  mark_debug = "true" *) wire data_valid;
(* keep = "true",  mark_debug = "true" *) wire [XLEN - 1 : 0] r_data;
(* keep = "true",  mark_debug = "true" *) wire [XLEN - 1 : 0] r_valid;


(* keep = "true",  mark_debug = "true" *) reg[XLEN - 1 : 0] FeederInputA ,FeederInputB ,FeederInputC;
(* keep = "true",  mark_debug = "true" *) reg[XLEN - 1 : 0] trigger_hw;

reg a_valid;
reg b_valid;
reg fp_result_valid;

wire trigger_hw_sel, c_sel, a_sel, b_sel;

localparam  BASE_ADDR = 32'hC4000000;
localparam  TRIGGER_OFFSET = 32'h0;
localparam  A_OFFSET = 32'h4;
localparam  B_OFFSET = 32'h8; 
localparam  C_OFFSET = 32'hC;

assign trigger_hw_sel = (addr_i == (BASE_ADDR + TRIGGER_OFFSET));
assign a_sel = (addr_i == (BASE_ADDR + A_OFFSET));
assign b_sel = (addr_i == (BASE_ADDR + B_OFFSET));
assign c_sel = (addr_i == (BASE_ADDR + C_OFFSET));

assign data_o = trigger_hw_sel ? trigger_hw : a_sel ? FeederInputA:
                         b_sel ? FeederInputB : c_sel ? FeederInputC : 32'b0;
                         
assign c_valid = 1;
assign data_valid =  a_valid & b_valid & c_valid ; 



always @(posedge clk_i)begin
    if(rst_i)begin
        ready_o <= 1'b0;
    end
    else if(en_i) ready_o <= 1'b1;
    else ready_o <= 1'b0;
end


always @(posedge clk_i)begin
    if(rst_i)begin
        fp_result_valid <= 0;
    end
    else if(trigger_hw && fp_result_valid)begin
        fp_result_valid <= 0;
    end
    else if(r_valid) fp_result_valid <= 1;
end

always @(posedge clk_i)begin
    if(rst_i)begin
        trigger_hw <= 0;
    end
    else if(en_i & we_i )begin
        if(addr_i == (BASE_ADDR + TRIGGER_OFFSET)) trigger_hw <= data_i;
    end
    else if(fp_result_valid)trigger_hw <= 0;
end


always @(posedge clk_i)begin
    if(rst_i)begin
        FeederInputA <= 0;
        FeederInputB <= 0;
        FeederInputC <= 0;
        a_valid <= 0;
        b_valid <= 0;
    end
    else if(en_i & we_i)begin
        if(addr_i == (BASE_ADDR + A_OFFSET))begin 
            FeederInputA <= data_i;
            a_valid <= 1;
        end
        else if(addr_i == (BASE_ADDR + B_OFFSET))begin
            FeederInputB <= data_i;
            b_valid <= 1;
        end
        else if(addr_i == (BASE_ADDR + C_OFFSET))begin 
            FeederInputC <= data_i;
        end
    end
    else if(data_valid)begin
        a_valid <= 0;
        b_valid <= 0;
    end
    else if(r_valid)begin
        FeederInputC <= r_data;
    end
end


//------------------------------------------------------
// floating IP Non-Blocking
//------------------------------------------------------

floating_point_0 FP(
    .aclk(clk_i),
    .s_axis_a_tdata(FeederInputA),
    .s_axis_a_tvalid(data_valid),
    .s_axis_b_tdata(FeederInputB),
    .s_axis_b_tvalid(data_valid),
    .s_axis_c_tdata(FeederInputC),
    .s_axis_c_tvalid(data_valid),

    .m_axis_result_tdata(r_data),
    .m_axis_result_tvalid(r_valid)
);



//------------------------------------------------------
// Profiler
//------------------------------------------------------
(* keep = "true", mark_debug = "true" *) reg[XLEN - 1 : 0] total_cycles;
(* keep = "true", mark_debug = "true" *) reg[XLEN - 1 : 0] computation_cycles;
(* keep = "true", mark_debug = "true" *) reg[XLEN - 1 : 0] transfer_cycles;

reg compute_flag;
reg data_feeding;  


always @(posedge clk_i) begin
    if(rst_i) begin
        data_feeding <= 0;
    end
    else if(en_i & we_i & (a_sel | b_sel | c_sel)) begin  
        data_feeding <= 1;
    end
    else if(data_valid) begin  
        data_feeding <= 0;
    end
end


always @(posedge clk_i) begin
    if(rst_i || r_valid) begin
        compute_flag <= 0;
    end
    else if(data_valid) begin
        compute_flag <= 1;
    end
end


always @(posedge clk_i) begin
    if(rst_i) begin
        transfer_cycles <= 0;
    end
    else if(data_feeding) begin 
        transfer_cycles <= transfer_cycles + 1;
    end
end


always @(posedge clk_i) begin
    if(rst_i) begin
        computation_cycles <= 0;
    end
    else if(compute_flag) begin
        computation_cycles <= computation_cycles + 1;
    end
end


always @(posedge clk_i) begin
    if(rst_i) begin
        total_cycles <= 0;
    end
    else if(en_i||compute_flag||data_feeding) begin  
        total_cycles <= total_cycles + 1;
    end
end




endmodule