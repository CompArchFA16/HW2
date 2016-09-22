run: run-decoder run-multiplexer run-adder

build: build-decoder build-multiplexer build-adder

clean:
	rm *.o *.vcd

build-decoder:
	iverilog -o decoder.o decoder.t.v

run-decoder: build-decoder
	./decoder.o

build-multiplexer:
	iverilog -o multiplexer.o multiplexer.t.v

run-multiplexer: build-multiplexer
	./multiplexer.o

build-twoInputMultiplexer:
	iverilog -o twoInputMultiplexer.o twoInputMultiplexer.t.v

run-twoInputMultiplexer: build-twoInputMultiplexer
	./twoInputMultiplexer.o

build-adder:
	iverilog -o adder.o adder.t.v

run-adder: build-adder
	./adder.o
