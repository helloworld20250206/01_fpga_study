module myuart_tx(
    input clk,
    input rst_n,
    output reg bps_start,
    input clk_bps,
    input key_valid,
    input [7:0] data_in,
    output txd
);

reg tx_en;
reg [3:0] num;
reg [7:0] tx_data_r;
reg uart_tx_r;

//使能信号产生
always @(posedge clk or negedge rst_n) 
begin
    if(!rst_n)
        begin
            bps_start<=1'bz;
            tx_en<=1'b0;
            tx_data_r<=8'd0;
        end
    else if(key_valid)
        begin
            bps_start<=1'b1;
            tx_data_r<=data_in;
            tx_en<=1'b1;
        end
	 else if(num==4'd10)
		begin
			bps_start <= 1'b0;
		   tx_en <= 1'b0;
			tx_data_r <=8'h0;
		end
    else
        begin
            bps_start<=bps_start;
            tx_data_r<=tx_data_r;
            tx_en<=tx_en;
        end
end
//并转串
always @(posedge clk or negedge rst_n) 
begin
    if(!rst_n)
        begin
            num<=4'd0;
            uart_tx_r<=1'b1;
        end
    else if(tx_en)
        begin
            if(clk_bps)
                begin
                    num <= num + 1'b1;
                    case(num)
                        4'd0: uart_tx_r <= 1'b0; 	
                        4'd1: uart_tx_r <= tx_data_r[0];	//bit0
                        4'd2: uart_tx_r <= tx_data_r[1];	//bit1
                        4'd3: uart_tx_r <= tx_data_r[2];	//bit2
                        4'd4: uart_tx_r <= tx_data_r[3];	//bit3
                        4'd5: uart_tx_r <= tx_data_r[4];	//bit4
                        4'd6: uart_tx_r <= tx_data_r[5];	//bit5
                        4'd7: uart_tx_r <= tx_data_r[6];	//bit6
                        4'd8: uart_tx_r <= tx_data_r[7];	//bit7
                        4'd9: uart_tx_r <= 1'b1;
                        default: uart_tx_r <= 1'b1;
                    endcase
                end 
            else if(num==4'd10)
                num<=0;
            else
                num<=num;
        end
    else
        uart_tx_r<=1'b1;
end

assign txd=uart_tx_r;

endmodule