module mojo_top(
    // 50MHz clock input
    input clk,
    // Input from reset button (active low)
    input rst_n,
    // cclk input from AVR, high when AVR is ready
    input cclk,
    // Outputs to the 8 onboard LEDs
    output [7:0] led,
    // AVR SPI connections
    output spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    // AVR ADC channel select
    output [3:0] spi_channel,
    // Serial connections
    input avr_tx, // AVR Tx => FPGA Rx
    output avr_rx, // AVR Rx => FPGA Tx
    input avr_rx_busy // AVR Rx buffer full
    );

wire btn_state, btn_up, btn_down;
btn_debouncer btn_deb(.clk(clk), .btn(rst_n), .btn_state(btn_state), .btn_up(btn_up), .btn_down(btn_down));

reg [7:0] counter;

assign led[7:0] = counter[7:0];

always @(posedge clk) begin
  if (btn_up) begin
    counter <= counter + 8'b1;
  end
end

// these signals should be high-z when not used
assign spi_miso = 1'bz;
assign avr_rx = 1'bz;
assign spi_channel = 4'bzzzz;

endmodule