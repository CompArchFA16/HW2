all : decoder.o

decoder.o : decoder.v decoder.t.v
	iverilog decoder.t.v -o decoder.o

clean:
	rm decoder.o
