VERILOG = iverilog
TARGET = RTL.vcd
TEMP = RTL.vvp
$(TARGET) : $(TEMP)
	vvp $(TEMP)
$(TEMP): RTL_tb.v RTL.v
	$(VERILOG) -o $(TEMP) RTL_tb.v RTL.v
clean:
	-del $(TARGET)
	-del $(TEMP)