all:
	iverilog aes_core.v sbox.v key_expand.v aes_tb.v -o aes_test

run:
	vvp aes_test

clean:
	rm -f aes_test
