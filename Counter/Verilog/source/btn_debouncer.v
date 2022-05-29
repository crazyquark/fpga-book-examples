module btn_debouncer (
    input clk,  // clock
    input btn,  // button signal
    output reg btn_state,
    output btn_down,
    output btn_up
  );

reg btn_sync_0, btn_sync_1; // 2 flip flops to sync btn signal to clk
reg [15:0] btn_counter; // counter for debouncing(like a timer)

always @(posedge clk) 
begin
  btn_sync_0 <= ~btn; // Inverted logic, active when low
end

always @(posedge clk) 
begin
  btn_sync_1 <= btn_sync_0;
end

wire btn_idle = (btn_state == btn_sync_1); // Button pressed?
wire btn_counter_max = &btn_counter; // True if all bits of counter are 1
  
always @(posedge clk)
if (btn_idle)
  btn_counter<= 0; // no press
else 
begin
  btn_counter <= btn_counter + 16'd1; // Increment counter, button being pressed
  if (btn_counter_max)
    btn_state <= ~btn_state; // Counter hit limit, btn state changed
end

// Button states:
assign btn_down = ~btn_idle & btn_counter_max & ~btn_state;
assign btn_up   = ~btn_idle & btn_counter_max &  btn_state;

endmodule
