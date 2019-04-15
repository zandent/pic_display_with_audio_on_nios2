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
	video_vga_controller_0_external_interface_B);	

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
		.video_vga_controller_0_external_interface_B     (video_vga_controller_0_external_interface_B)      //                                          .B
	);

endmodule
