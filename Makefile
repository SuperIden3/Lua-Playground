TARGET = main
LUAC = luac
OUT = $(TARGET).luac
CFLAGS = -o $(OUT)

$(OUT): $(TARGET).lua
	$(LUAC) $(CFLAGS) $(TARGET).lua

run: $(OUT)
	lua $(OUT)

time: $(OUT)
	bash -c "time lua ./$(OUT)"

clean:
	rm -f $(OUT)
