module BCD_Counter_tb;
reg clk,rst_asyn;    //輸入
wire [3:0] Q_out;   //輸出

initial begin
    #0;             //0秒時執行forever
    forever         //類是無限迴圈(#是並行處理)
    begin
        clk = 1'b0;
        #10 clk = 1'b1;
        #10;
    end
end

initial begin
    #0 rst_asyn=1'b1;   //rst
    #10 rst_asyn=1'b0;
    #27 rst_asyn=1'b1;  //按下rst
    #1 rst_asyn=1'b0;
    #400 $finish;
end


BCD_Up_Counter BCD_Up_Counter_tb(.clk(clk), .rst_asyn(rst_asyn), .Q_out(Q_out));
initial begin
    $dumpfile("BCD_Up_Counter.vcd");
    $dumpvars(0, BCD_Up_Counter_tb);
end
endmodule