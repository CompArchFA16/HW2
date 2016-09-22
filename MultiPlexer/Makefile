all : multiplexer.o

multiplexer.o : multiplexer.v multiplexer.t.v
	iverilog multiplexer.t.v -o multiplexer.o

clean:
	rm multiplexer.o
