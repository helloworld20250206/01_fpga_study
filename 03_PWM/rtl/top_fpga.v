module top_fpga (
    input clk,         //50Mhz
    input key_n,       //low active
    output led         //high active
);

    //变量定义
    reg led_r=0;
    wire key_valid;
   
    //按键去抖
    key_jitter key_jitter_inst(
        .clk(clk),
        .key_n(key_n),
        .key_valid(key_valid)
    );


    //pwm权重产生
    reg[2:0] cnt_pwm=3'b000;
    always @(posedge clk) begin
        if (key_valid) begin
            cnt_pwm<=cnt_pwm + 1'b1;
				end
        else begin
            cnt_pwm<=cnt_pwm;
        end
    end

    //pwm计数器
    reg[2:0] cnt_8=3'b000;
    always @(posedge clk) begin
        cnt_8<=cnt_8+1'b1;
    end

    //逻辑控制
    always @(posedge clk) begin
        if(cnt_8<=cnt_pwm)
            if(cnt_8)
                led_r<=1'b1;
            else
                led_r<=1'b0;
        else
            led_r<=1'b0;
    end

    assign  led=led_r;
endmodule