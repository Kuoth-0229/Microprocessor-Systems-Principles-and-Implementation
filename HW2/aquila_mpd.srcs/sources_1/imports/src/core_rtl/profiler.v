`timescale 1ns / 1ps

module profiler (
    input               clk_i,
    input               rst_i,

    input [31:0]        instruction_i,          // 當前指令的PC
    input               branch_taken_i,         // 分支是否被取
    input               branch_misprediction_i, // 分支錯誤預測
    input [31:0]        instruction_type_i,     // 指令類型
    input               commit_valid,           // 指令是否提交寫回
    input [4:0]         rd_addr                 // 寫回寄存器的目標地址
);


// 計數器
reg [31:0] total_instructions;        // 總執行指令數
reg [31:0] total_branches;            // 分支指令總數
reg [31:0] branch_mispredictions;     // 錯誤分支預測數
reg [31:0] jalr_count;                // JALR指令數
reg [31:0] load_instructions;         // 加載指令數
reg [31:0] store_instructions;        // 存儲指令數


/*
start       end     function
0x00001000  650c    Total
*/
wire [31:0] pc_i;
assign pc_i = instruction_i;
// Check if the program counter is within the total execution range
assign coremark_section = (pc_i[15:0] >= 16'h1000 && pc_i[15:0] <= 16'h650c); 




// 初始化寄存器
always @(posedge clk_i or posedge rst_i) begin
    if (rst_i) begin
        total_instructions <= 0;
        total_branches <= 0;
        branch_mispredictions <= 0;
        jalr_count <= 0;
        load_instructions <= 0;
        store_instructions <= 0;
    end else if (commit_valid) begin
        // 每提交一條指令後增加總計數
        total_instructions <= total_instructions + 1;
        
        // 如果是分支指令，增加分支計數
        if (instruction_type_i == 32'b1101111) begin // JAL
            total_branches <= total_branches + 1;
        end else if (instruction_type_i == 32'b1100111) begin // JALR
            jalr_count <= jalr_count + 1;
        end else if (instruction_type_i == 32'b0000011) begin // 加載指令
            load_instructions <= load_instructions + 1;
        end else if (instruction_type_i == 32'b0100011) begin // 存儲指令
            store_instructions <= store_instructions + 1;
        end

        // 錯誤的分支預測
        if (branch_misprediction_i) begin
            branch_mispredictions <= branch_mispredictions + 1;
        end
    end
end

// 這裡你可以定義一些輸出或信號，來將數據導出或者打印出來

endmodule


