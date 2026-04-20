module tt_um_sathi_seq101 (
    input  wire [7:0] ui,
    output wire [7:0] uo,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire clk,
    input  wire rst_n
);

    wire reset;
    assign reset = ~rst_n;

    wire y;

    mealy_101 uut (
        .clk(clk),
        .reset(reset),
        .x(ui[2]),
        .y(y)
    );

    assign uo[0] = y;

    assign uio_out = 8'b0;
    assign uio_oe  = 8'b0;

endmodule
