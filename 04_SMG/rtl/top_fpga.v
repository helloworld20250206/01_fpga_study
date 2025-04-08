module top_fpga (
    input clk,  
    input rst_n,
    output[7:0] sm_dat,
    output[1:0] sm_sel,
    output led
);
parameter ZERO    = 8'b0000_0011,//8'b1100_0000, 
        ONE     = 8'b1001_1111,//8'b1111_1001,  
        TWO     = 8'b0010_0101,//8'b1010_0100, 
        THREE   = 8'b0000_1101,//8'b1011_0000,
        FOUR    = 8'b1001_1001,//8'b1001_1001, 
        FIVE    = 8'b0100_1001,//8'b1001_0010, 
        SIX     = 8'b0100_0001,//8'b1000_0010,
        SEVEN   = 8'b0001_1111,//8'b1111_1000, 
        EIGHT   = 8'b0000_0001,//8'b1000_0000,
        NINE    = 8'b0000_1001,//8'b1001_0000;
        AA	   = 8'b0001_0001,
        BB      = 8'b1100_0001,
        CC      = 8'b0110_0011,
        DD      = 8'b1000_0101,
        EE      = 8'b0110_0001,
        FF      = 8'b0111_0001;

reg [7:0] sm_dat_r;	//鏁扮爜绠℃閫
reg [1:0] sm_sel_r;	//鏁扮爜绠′綅閫
reg [7:0] sm_dat_r0; //鏁扮爜绠℃閫夊瘎瀛樺櫒0
reg [7:0] sm_dat_r1; //鏁扮爜绠℃閫夊瘎瀛樺櫒1
reg [0:0] sm_cnt;		//鏁扮爜绠＄墖閫夎鏁板櫒
reg [31:0] timer;		//1绉掕鏁板櫒
reg [19:0] timer1;	//1姣璁℃暟鍣
reg [3:0]  second_0; //绉掕〃涓綅
reg [3:0]  second_1;	//绉掕〃鍗佷綅

//1绉掕鏁板櫒
always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        timer<=0;
    else if(timer==32'd49_999_999)
        timer<=0;
    else
        timer<=timer+1'b1;
end


//1ms璁℃暟鍣
always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        timer1<=0;
    else if(timer1==20'd49_999)
        timer1<=0;
    else
        timer1<=timer1+1'b1;
end

//鐗囬€夋寚绀
always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        sm_cnt<=0;
    else if(timer1==0)
        sm_cnt<=sm_cnt+1'b1;
    else
        sm_cnt<=sm_cnt;
end

//涓綅鍙樺寲
always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        second_0<=1'b0;
    else if(timer==0)
        if(second_0<9)
            second_0<=second_0+1'b1;
        else
            second_0<=0;
    else
        second_0<=second_0;
end


//鍗佷綅鍙樺寲
always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        second_1<=0;
    else if(timer==0)
        if(second_0==9)
            if(second_1<5)
                second_1<=second_1+1'b1;
            else   
                second_1<=0;
        else    
            second_1<=second_1;
    else
        second_1<=second_1;
end



//----------鏁扮爜绠¤瘧鐮---------
always @ (*)
	case( second_0 )
	4'd0 : sm_dat_r0 <= ZERO;
	4'd1 : sm_dat_r0 <= ONE;
	4'd2 : sm_dat_r0 <= TWO;
	4'd3 : sm_dat_r0 <= THREE;
	4'd4 : sm_dat_r0 <= FOUR;
	4'd5 : sm_dat_r0 <= FIVE;
	4'd6 : sm_dat_r0 <= SIX;
	4'd7 : sm_dat_r0 <= SEVEN;
	4'd8 : sm_dat_r0 <= EIGHT;
	4'd9 : sm_dat_r0 <= NINE;
	4'd10: sm_dat_r0 <= AA ;
	4'd11: sm_dat_r0 <= BB ;
	4'd12: sm_dat_r0 <= CC ;
	4'd13: sm_dat_r0 <= DD ;
	4'd14: sm_dat_r0 <= EE ;
	4'd15: sm_dat_r0 <= FF ;
	default:sm_dat_r0 <= 8'hFF;
	endcase

always @ (*)
	case( second_1 )
	4'd0 : sm_dat_r1 <= ZERO;
	4'd1 : sm_dat_r1 <= ONE;
	4'd2 : sm_dat_r1 <= TWO;
	4'd3 : sm_dat_r1 <= THREE;
	4'd4 : sm_dat_r1 <= FOUR;
	4'd5 : sm_dat_r1 <= FIVE;
	4'd6 : sm_dat_r1 <= SIX;
	4'd7 : sm_dat_r1 <= SEVEN;
	4'd8 : sm_dat_r1 <= EIGHT;
	4'd9 : sm_dat_r1 <= NINE;
	4'd10: sm_dat_r1 <= AA ;
	4'd11: sm_dat_r1 <= BB ;
	4'd12: sm_dat_r1 <= CC ;
	4'd13: sm_dat_r1 <= DD ;
	4'd14: sm_dat_r1 <= EE ;
	4'd15: sm_dat_r1 <= FF ;
	default:sm_dat_r1 <= 8'hFF;
	endcase

//鏁扮爜绠℃樉绀
always @(sm_cnt) begin
    case (sm_cnt)
        'd0:
        begin
            sm_sel_r<=2'b01;
            sm_dat_r<=sm_dat_r0;
        end 
        'd1:
        begin
            sm_sel_r <= 2'b10;
            sm_dat_r <= sm_dat_r1;	
        end	

        default: 
        begin
            sm_sel_r <= 2'b11;
            sm_dat_r <= ZERO;
	    end
    endcase
end


assign sm_sel = sm_sel_r;
assign sm_dat = sm_dat_r;

//-----------LED-------------
//瀵勫瓨鍣ㄥ畾涔
reg  led_r;
assign led = led_r;

//LED鎺у埗
always @(posedge clk or negedge rst_n)
    if (~rst_n)
        led_r <= 0; //LED 鐏伃
    else if (timer == 32'd24_999_999) // 每隔0.5s变化
		  led_r <= ~led_r;
    else
        led_r <= led_r;

endmodule