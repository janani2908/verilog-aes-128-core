module sbox(
    input [127:0] data_in,
    output [127:0] data_out
);

assign data_out = data_in ^ 128'h63;

endmodule
