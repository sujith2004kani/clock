module tb_clk_sec;
    reg clk_in;  
    reg rst;      
    wire clk_out; 

    sec_clk uut (.clk_in(clk_in),.rst(rst),.clk_out(clk_out));
    //65536 Hz
    initial begin
        clk_in=0;
        forever #7630 clk_in=~clk_in;
    end
    initial begin
        $monitor("Time: %0t | Reset: %b | clk_out: %b", $time, rst, clk_out);
        rst=1; #25;
        rst=0;     
        #1_000_000_000;
        $stop;
    end
endmodule
