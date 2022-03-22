VERILOG = iverilog
TARGET = decoder.vcd
TEMP = decoder.vvp

$(TARGET) : decoder.vvp

	vvp decoder.vvp

decoder.vvp: decoder_tb.v decoder.v

	$(VERILOG) -o decoder.vvp decoder_tb.v decoder.v

clean:
	-del $(TARGET)
	-del $(TEMP)