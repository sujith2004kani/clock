module sec_clk(
    input wire clk_in,    // 65,536 Hz input clock
    input wire rst,       
    output reg clk_out 
);
    reg [15:0] count;
    always @(posedge clk_in or posedge rst) begin
        if (rst) begin
            count <= 0;
            clk_out <= 0; // Reset counter and output clock
        end else if (count == 32_767) begin
            count <= 0;
            clk_out <= ~clk_out;
        end else begin
            count <= count + 1;
        end
    end
endmodule