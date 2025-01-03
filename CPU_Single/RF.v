module RF(
    input CLK,
    input W,
    input [4:0] R_reg1,
    input [4:0] R_reg2,
    output reg [31:0] R_data1,
    output reg [31:0] R_data2,
    input [4:0] W_reg,
    input [31:0] W_data
);
    reg [31:0] Reg[31:0];
    initial begin
        Reg[0]=0;
        Reg[1]=1;
        Reg[2]=1;
        Reg[3]=0;
    end
    always @(posedge CLK) begin
        if(W) Reg[W_reg]=W_data;
    end
    always @(*) begin
        R_data1=Reg[R_reg1];
        R_data2=Reg[R_reg2];
    end
endmodule