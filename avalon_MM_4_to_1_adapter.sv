module avalon_MM_4_to_1_adapter(
    input clock,
    input reset,
    output s_waitrequest,
    output logic [31:0] s_readdata,
    input [31:0] s_address,
    input s_read,
    output logic s_readdatavalid,
    input s_lock,

    input m_waitrequest,
    output logic [24:0]m_address,
    output [1:0] m_byteenable_n,
    input [15:0] m_readdata,
    input m_readdatavalid,
    output logic m_chipselect
);
logic [3:0] data_flag;
assign m_chipselect = s_read;
assign m_byteenable_n = 2'b11;
assign s_waitrequest = (&data_flag)? 1'b0 : s_read;
always @(posedge clock) begin
    if(reset) begin
        s_readdata <= 32'd0;
        s_readdatavalid <= 1'b0;
        m_address <= 25'd0;
        m_chipselect <= 1'b0;
        data_flag <= 4'd0;
    end
    else begin
        
    end

end
endmodule