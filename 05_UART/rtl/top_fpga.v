//file name:       top_fpga.v
//author:           ETree
//date:             2017.9.9
//function:        顶层模块
//log:  


module top_fpga(
		//global signal
		input clk,						//System clock, 50MHz
		input rst_n,					//System reset, low active
		
		//Key
		input key_n,                 //low active
		
		output [15:0] dat_out,
		
		//uart
		input uart_rx,
		output uart_tx,
		
		//led
		output led
);

wire key_valid;

//-------按键去抖模块--------
key_jitter key_jitter_inst
(
	.clk(clk) ,	// input  clk_sig
	.key_n(key_n) ,	// input  key_n_sig
	.key_valid(key_valid) 	// output  key_valid_sig
);

myuart myuart_inst(
		.clk(clk),
		.rst_n(rst_n),
		.rxd(uart_rx),
		.txd(uart_tx),
		.key_valid(key_valid),
		.data_out(dat_out)
);


endmodule
