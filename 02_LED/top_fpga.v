module top_fpga(

input clk,
input rst_n,
output led
);


//寄存器定义
reg[31:0] timer=0;
reg led_r = 0;

//led输出
assign led = led_r;

//定时器控制
always@(posedge clk or negedge rst_n) 
if(~rst_n)
	timer = 0;
else if(timer==32'd99_999_999)  //2s计数
	timer = 0;
else
	timer <= timer + 1'b1;	//计数器加1
	
//LED控制
always@(posedge clk or negedge rst_n)
if(~rst_n)
	led_r <= 1'b0;		//LED灯灭
else if(timer == 32'd49_999_999)   //1s灯灭
	led_r<=1'b0;		
else if(timer == 32'd99_999_999)	  //1s灯亮
	led_r <= 1'b1;
else
	led_r <= led_r;		//其他维持不变



endmodule