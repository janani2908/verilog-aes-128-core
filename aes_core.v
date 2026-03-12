module aes_core(
    input clk,
    input [127:0] plaintext,
    input [127:0] key,
    output reg [127:0] ciphertext
);

wire [127:0] sub_out;

sbox sbox_inst(
    .data_in(plaintext),
    .data_out(sub_out)
);

always @(posedge clk)
begin
    ciphertext <= sub_out ^ key;
end

endmodule
