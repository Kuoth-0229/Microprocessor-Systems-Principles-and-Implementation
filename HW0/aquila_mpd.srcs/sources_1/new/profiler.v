`timescale 1ns / 1ps


module profiler #(
    parameter XLEN          = 32
)
(
    // System signals.
    input                 clk_i,
    input                 rst_i,
    
    // checking cycle type
    input chk_stall_i,
    input chk_mem_i,

    input [XLEN - 1:0] pc_i,

    //pc_i
    
    // output counting

    output  [31:0]      total_cnt_o, 

    output  [31:0]      prof_cnt1_o,
    output  [31:0]      prof_cnt2_o,
    output  [31:0]      prof_cnt3_o,
    output  [31:0]      prof_cnt4_o,
    output  [31:0]      prof_cnt5_o,

    output  [31:0]      stall_cnt1_o,
    output  [31:0]      stall_cnt2_o,
    output  [31:0]      stall_cnt3_o,
    output  [31:0]      stall_cnt4_o,
    output  [31:0]      stall_cnt5_o,

    output  [31:0]      mem_cnt1_o,
    output  [31:0]      mem_cnt2_o,
    output  [31:0]      mem_cnt3_o,
    output  [31:0]      mem_cnt4_o,
    output  [31:0]      mem_cnt5_o
);

(* mark_debug = "true" *) wire         start_point;

// total counter
reg [31:0]  total_cnt; 

// profiler counter (top five hotsopts)
reg [32*5-1:0]  prof_cnt;
reg [32*5-1:0]  stall_cnt;
reg [32*5-1:0]  mem_cnt;

//check function start
wire            func_runtime[0:4];

assign total_cnt_o = total_cnt;

assign prof_cnt1_o = prof_cnt[31:0];
assign prof_cnt2_o = prof_cnt[63:32];
assign prof_cnt3_o = prof_cnt[95:64];
assign prof_cnt4_o = prof_cnt[127:96];
assign prof_cnt5_o = prof_cnt[159:128];

assign stall_cnt1_o = stall_cnt[31:0];
assign stall_cnt2_o = stall_cnt[63:32];
assign stall_cnt3_o = stall_cnt[95:64];
assign stall_cnt4_o = stall_cnt[127:96];
assign stall_cnt5_o = stall_cnt[159:128];

assign mem_cnt1_o = mem_cnt[31:0];
assign mem_cnt2_o = mem_cnt[63:32];
assign mem_cnt3_o = mem_cnt[95:64];
assign mem_cnt4_o = mem_cnt[127:96];
assign mem_cnt5_o = mem_cnt[159:128];



/*
start       end     function
0x00001000  650c    Total
0x00001d0c  1d5c    core_list_find 1
0x00002a40  2d30    core_state_transition 3
0x00001d60  1d80    core_list_reverse 2
0x000025f4  269c    matrix_mul_matrix 5
0x000026a0  275c    matrix_mul_matrix_bitextract 4
*/


// Define execution point within the program counter range and function runtime ranges

// Check if the program counter is within the total execution range
assign start_point = (pc_i[15:0] >= 16'h1000 && pc_i[15:0] <= 16'h650c); 
// Function core_list_find runtime range
assign func_runtime[0] = (pc_i[15:0] >= 16'h1d0c && pc_i[15:0] <= 16'h1d5c);
// Function core_state_transition runtime range
assign func_runtime[2] = (pc_i[15:0] >= 16'h2a40 && pc_i[15:0] <= 16'h2d30);
// Function core_list_reverse runtime range
assign func_runtime[1] = (pc_i[15:0] >= 16'h1d60 && pc_i[15:0] <= 16'h1d80);
// Function crcu8 runtime range
assign func_runtime[4] = (pc_i[15:0] >= 16'h25f4 && pc_i[15:0] <= 16'h296c);
// Function matrix_mul_matrix_bitextract runtime range
assign func_runtime[3] = (pc_i[15:0] >= 16'h26a0 && pc_i[15:0] <= 16'h275c);


always @(posedge clk_i) begin
    if (rst_i) begin
        prof_cnt <= 160'b0;
        mem_cnt <= 160'b0;
        total_cnt <= 32'b0;
    end
    else begin
        if (start_point) 
            total_cnt <= total_cnt + 1;
        if (func_runtime[0]) begin
            prof_cnt[31:0] <= prof_cnt[31:0] + 1;
            if (chk_stall_i) stall_cnt[31:0] <= stall_cnt[31:0] + 1;
            if (chk_mem_i) mem_cnt[31:0] <= mem_cnt[31:0] + 1;
        end
        if (func_runtime[1]) begin
            prof_cnt[63:32] <= prof_cnt[63:32] + 1;
            if (chk_stall_i) stall_cnt[63:32] <= stall_cnt[63:32] + 1;
            if (chk_mem_i) mem_cnt[63:32] <= mem_cnt[63:32] + 1;
        end
        if (func_runtime[2]) begin
            prof_cnt[95:64] <= prof_cnt[95:64] + 1;
            if (chk_stall_i) stall_cnt[95:64] <= stall_cnt[95:64] + 1;
            if (chk_mem_i) mem_cnt[95:64] <= mem_cnt[95:64] + 1;
        end
        if (func_runtime[3]) begin
            prof_cnt[127:96] <= prof_cnt[127:96] + 1;
            if (chk_stall_i) stall_cnt[127:96] <= stall_cnt[127:96] + 1;
            if (chk_mem_i) mem_cnt[127:96] <= mem_cnt[127:96] + 1;
        end
        if (func_runtime[4]) begin
            prof_cnt[159:128] <= prof_cnt[159:128] + 1;
            if (chk_stall_i) stall_cnt[159:128] <= stall_cnt[159:128] + 1;
            if (chk_mem_i) mem_cnt[159:128] <= mem_cnt[159:128] + 1;
        end
    end
end

endmodule