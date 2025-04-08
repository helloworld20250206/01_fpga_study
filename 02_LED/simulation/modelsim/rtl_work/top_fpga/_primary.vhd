library verilog;
use verilog.vl_types.all;
entity top_fpga is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        led             : out    vl_logic
    );
end top_fpga;
