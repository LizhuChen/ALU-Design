# ALU-Design
設計ALU與乘法器

架構圖:

![image](https://github.com/LizhuChen/ALU-Design/blob/main/architecture.PNG)

(1) ALU:

 包含 32-bits AND, OR, ADD, SUB, SLT 等功能，使用 Gate-Level Modeling 與 Data Flow Modeling  (Continuous Assignments)，從 Full Adder 做起，以 Ripple-Carry 的進位方式， 連接 32 個 1-bit ALU Bit Slice，成為 32-bit ALU。

(2) Multiplier:

為 32-bits 無號數乘法 Sequential Multiplier，採用 First Version  Sequential Multiplier 來設計。

(3) Shifters:

設計 32-bits Barrel Shifter，以完成邏輯左移運算。

(4) HiLo 暫存器:

為乘法器計算完後，儲存計算結果之 64-bit 暫存器。

(5) Mux多工器

(6)ALU Control:

根據輸入的 6-bit 控制訊號，決定該完成哪一種運算

 AND : 36  
 OR : 37  
 ADD : 32  
 SUB : 34  
 SLT : 42  
 SLL : 00  
 MULTU : 25  






