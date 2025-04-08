module key_jitter(
	input clk,			//50Mhz
	input key_n,		//浣庣數骞虫湁鏁
	output reg key_valid	//楂樼數骞虫湁鏁
);

//璁℃暟鍣紝浠寮€濮嬪埌婧㈠嚭璁℃椂20ms
reg [19:0] cnt0;
always @(posedge clk) begin
	cnt0 <= cnt0 + 1'b1;
end

//姣忛殧20ms妫€娴嬫寜閿槸鍚︽寜涓
//淇濆瓨鍦╧ey_down_check鏈€鍚庝竴浣
//宸︾Щ涓€浣嶆洿鏂
reg [3:0] key_down_check;
always @(posedge clk) begin
	if(cnt0==20'hfffff)
		key_down_check <= {key_down_check[2:0],~key_n};
	else
		key_down_check <= key_down_check;
end


//璁板綍20ms妫€娴嬩袱娆′綆鐢靛钩
reg key_valid_r0;
always @(posedge clk) begin
	key_valid_r0 <= (key_down_check==4'b0011)?1'b1:1'b0;
end

//r0锛宺1锛宺2鏋勬垚绉讳綅瀵勫瓨鍣
//key_valid_r0閬垮厤20ms鍐呴兘涓
reg key_valid_r1;
reg key_valid_r2;
always @(posedge clk) begin
	key_valid_r1 <= key_valid_r0;
	key_valid_r2 <= key_valid_r1;
end


wire key_valid_pos;
assign key_valid_pos = ({key_valid_r2,key_valid_r1}==2'b01)?1'b1:1'b0;
always @(posedge clk) begin
	key_valid <= (key_valid_pos==1'b1)?1'b1:1'b0;
end


endmodule

