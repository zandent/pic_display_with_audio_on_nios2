module top(
	audio_0_external_interface_BCLK,
	audio_0_external_interface_DACDAT,
	audio_0_external_interface_DACLRCK,
	clk_clk,
	reset_reset_n,
	video_vga_controller_0_external_interface_CLK,
	video_vga_controller_0_external_interface_HS,
	video_vga_controller_0_external_interface_VS,
	video_vga_controller_0_external_interface_BLANK,
	video_vga_controller_0_external_interface_SYNC,
	video_vga_controller_0_external_interface_R,
	video_vga_controller_0_external_interface_G,
	video_vga_controller_0_external_interface_B,
	DRAM_ADDR, 
	DRAM_BA,   
	DRAM_CAS_N,
	DRAM_CKE,  
	DRAM_CS_N, 
	DRAM_DQ,   
	DRAM_DQM,  
	DRAM_RAS_N,
	DRAM_WE_N
	);

	output wire [12:0] DRAM_ADDR;                //               new_sdram_controller_0_wire.addr
	output wire [1:0]  DRAM_BA;                  //                                          .ba
	output wire        DRAM_CAS_N;               //                                          .cas_n
	output wire        DRAM_CKE;                 //                                          .cke
	output wire        DRAM_CS_N;                //                                          .cs_n
	inout  wire [15:0] DRAM_DQ;                  //                                          .dq
	output wire [1:0]  DRAM_DQM;                 //                                          .dqm
	output wire        DRAM_RAS_N;               //                                          .ras_n
	output wire        DRAM_WE_N;                //                                          .we_n

	input		audio_0_external_interface_BCLK;
	output		audio_0_external_interface_DACDAT;
	input		audio_0_external_interface_DACLRCK;
	input		clk_clk;
	input		reset_reset_n;
	output		video_vga_controller_0_external_interface_CLK;
	output		video_vga_controller_0_external_interface_HS;
	output		video_vga_controller_0_external_interface_VS;
	output		video_vga_controller_0_external_interface_BLANK;
	output		video_vga_controller_0_external_interface_SYNC;
	output	[7:0]	video_vga_controller_0_external_interface_R;
	output	[7:0]	video_vga_controller_0_external_interface_G;
	output	[7:0]	video_vga_controller_0_external_interface_B;
	sub_top u0 (
		.audio_0_external_interface_BCLK                 (audio_0_external_interface_BCLK),                 //                audio_0_external_interface.BCLK
		.audio_0_external_interface_DACDAT               (audio_0_external_interface_DACDAT),               //                                          .DACDAT
		.audio_0_external_interface_DACLRCK              (audio_0_external_interface_DACLRCK),              //                                          .DACLRCK
		.clk_clk                                         (clk_clk),                                         //                                       clk.clk
		.reset_reset_n                                   (reset_reset_n),                                   //                                     reset.reset_n
		.video_vga_controller_0_external_interface_CLK   (video_vga_controller_0_external_interface_CLK),   // video_vga_controller_0_external_interface.CLK
		.video_vga_controller_0_external_interface_HS    (video_vga_controller_0_external_interface_HS),    //                                          .HS
		.video_vga_controller_0_external_interface_VS    (video_vga_controller_0_external_interface_VS),    //                                          .VS
		.video_vga_controller_0_external_interface_BLANK (video_vga_controller_0_external_interface_BLANK), //                                          .BLANK
		.video_vga_controller_0_external_interface_SYNC  (video_vga_controller_0_external_interface_SYNC),  //                                          .SYNC
		.video_vga_controller_0_external_interface_R     (video_vga_controller_0_external_interface_R),     //                                          .R
		.video_vga_controller_0_external_interface_G     (video_vga_controller_0_external_interface_G),     //                                          .G
		.video_vga_controller_0_external_interface_B     (video_vga_controller_0_external_interface_B),      //                                          .B
		.new_sdram_controller_0_wire_addr                (DRAM_ADDR),                //               new_sdram_controller_0_wire.addr
		.new_sdram_controller_0_wire_ba                  (DRAM_BA),                  //                                          .ba
		.new_sdram_controller_0_wire_cas_n               (DRAM_CAS_N),               //                                          .cas_n
		.new_sdram_controller_0_wire_cke                 (DRAM_CKE),                 //                                          .cke
		.new_sdram_controller_0_wire_cs_n                (DRAM_CS_N),                //                                          .cs_n
		.new_sdram_controller_0_wire_dq                  (DRAM_DQ),                  //                                          .dq
		.new_sdram_controller_0_wire_dqm                 (DRAM_DQM),                 //                                          .dqm
		.new_sdram_controller_0_wire_ras_n               (DRAM_RAS_N),               //                                          .ras_n
		.new_sdram_controller_0_wire_we_n                (DRAM_WE_N)                 //                                          .we_n

	);

endmodule
