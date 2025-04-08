module top_fpga (
    input clk,      //50Mhz
    input rst_n,     //搴曠數骞虫湁鏁
    input key_n,       //浣庣數骞虫寜涓
    output led         //楂樼數骞虫湁鏁

);

reg [31:0] timer=0;
reg led_r=0;
reg led_en;     //led浣胯兘锛屼綆鐢靛钩鏈夋晥
wire key_valid;

//led浣胯兘鎺у埗
always @(posedge clk) begin
    led_en <= key_valid?~led_en:led_en;
end

//鎸夐敭妫€娴嬫ā鍧
key_jitter key_jitter_inst (
    .clk(clk),                  //50Mhz
    .key_n(key_n),              //浣庣數骞充唬琛ㄦ寜涓
    .key_valid(key_valid)       //楂樼數骞虫湁鏁
);


//瀹氭椂鍣ㄨ鏃s
//浣胯兘led鎺у埗鍒欏惎鍔ㄥ畾鏃跺櫒璁℃暟
always @(posedge clk) begin
    if(~led_en)     
        if(timer==32'd4999_9999)    //璁℃椂1s
            timer<=0;
        else
            timer<=timer+1'b1;
    else
        timer<=timer;
end


//led閫昏緫鎺у埗
always @(posedge clk or negedge rst_n) begin
    if(~rst_n)
        led_r <= 1'b0;      //led鐔勭伃
    else if(~led_en)
        if(timer==1'b0)
            led_r<=1'b1;    //鐐逛寒
        else if(timer==32'd2499_9999)   //0.5s
            led_r<=1'b0;    //鐔勭伃
        else 
            led_r<=led_r;
    else
        led_r<=led_r;

end


assign led=led_r;

endmodule
