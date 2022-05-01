VERILOG = iverilog
TARGET = BCD_Up_Counter.vcd
TEMP = BCD_Up_Counter.vvp
$(TARGET) : $(TEMP)
	vvp $(TEMP)
$(TEMP): BCD_Up_Counter_tb.v BCD_Up_Counter.v
	$(VERILOG) -o $(TEMP)  BCD_Up_Counter_tb.v BCD_Up_Counter.v
clean:
	-del $(TARGET)
	-del $(TEMP)