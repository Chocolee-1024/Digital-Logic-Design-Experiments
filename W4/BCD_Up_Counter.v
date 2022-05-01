module BCD_Up_Counter(clk, rst_asyn, Q_out);
input clk; //輸入clock
input rst_asyn; //輸入rst
output [3:0] Q_out; //輸出
reg [3:0] Q_out;

    always@ (posedge clk or posedge rst_asyn)
        begin
            if (rst_asyn)           //如果rst==1清除
                Q_out=0;
            else if (Q_out == 9)    //如果Q_out累加到九清除
                Q_out=0;
            else
                Q_out=Q_out+1;    
        end
endmodule