module avalon_MM_2_to_1_adapter(
    input clock,
    input reset_n,
    output s_waitrequest,
    output logic [31:0] s_readdata,
    input [26:0] s_address,
    input s_read,
    output logic s_readdatavalid,
    input s_lock,

    input m_waitrequest,
    output logic [26:0]m_address,
    output [1:0] m_byteenable,
    output logic m_read,
    input [15:0] m_readdata,
    input m_readdatavalid,
    output logic m_chipselect,
    output m_lock
);
logic [1:0] data_flag;
assign m_byteenable = 2'b11;
assign s_waitrequest = (&data_flag)? 1'b0 : s_read;
assign m_lock = s_lock;

always @(posedge clock or negedge reset_n) begin
    if(~reset_n) begin
        s_readdata <= 32'd0;
        s_readdatavalid <= 1'b0;
        m_address <= 25'd0;
        m_chipselect <= 1'b0;
        data_flag <= 2'd0;
        m_read <= 1'b0;
    end
    else begin
        if(s_read) begin
            if(data_flag==2'd0 && m_read==1'b0) begin
                m_address <= s_address[26:0];
                m_read <= 1'b1;
                m_chipselect <= 1'b1;
            end
            else if(data_flag==2'd0 && m_read==1'b1 && m_waitrequest==1'b0 && m_readdatavalid==1'b1) begin
                m_read <= 1'b0;
                m_chipselect <= 1'b0;
                s_readdata[15:0] <= m_readdata;  
                data_flag[0] <= 1'b1;           
            end
            else if(data_flag==2'd1 && m_read==1'b0) begin
                m_address <= s_address[26:0] + 2'd2;
                m_read <= 1'b1;
                m_chipselect <= 1'b1;
            end
            else if(data_flag==2'd1 && m_read==1'b1 && m_waitrequest==1'b0 && m_readdatavalid==1'b1) begin
                m_read <= 1'b0;
                m_chipselect <= 1'b0;
                s_readdata[31:16] <= m_readdata;  
                data_flag[1] <= 1'b1;
                s_readdatavalid <= 1'b1;           
            end
            else if(data_flag==2'd3) begin
                data_flag <= 2'd0;
                s_readdatavalid <= 1'b0;
                m_address <= 25'd0;
                s_readdata <= 32'd0;
            end
        end
        else begin
            s_readdata <= 32'd0;
            s_readdatavalid <= 1'b0;
            m_address <= 25'd0;
            m_chipselect <= 1'b0;
            data_flag <= 2'd0;
            m_read <= 1'b0;            
        end
    end

end
endmodule