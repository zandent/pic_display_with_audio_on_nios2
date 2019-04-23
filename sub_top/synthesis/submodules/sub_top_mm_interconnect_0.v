// sub_top_mm_interconnect_0.v

// This file was auto-generated from altera_mm_interconnect_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 18.0 614

`timescale 1 ps / 1 ps
module sub_top_mm_interconnect_0 (
		input  wire        sys_sdram_pll_0_sys_clk_clk,                                  //                                sys_sdram_pll_0_sys_clk.clk
		input  wire        avalon_MM_4_to_1_adapter_0_reset_reset_bridge_in_reset_reset, // avalon_MM_4_to_1_adapter_0_reset_reset_bridge_in_reset.reset
		input  wire        video_dma_controller_0_reset_reset_bridge_in_reset_reset,     //     video_dma_controller_0_reset_reset_bridge_in_reset.reset
		input  wire [31:0] video_dma_controller_0_avalon_dma_master_address,             //               video_dma_controller_0_avalon_dma_master.address
		output wire        video_dma_controller_0_avalon_dma_master_waitrequest,         //                                                       .waitrequest
		input  wire        video_dma_controller_0_avalon_dma_master_read,                //                                                       .read
		output wire [31:0] video_dma_controller_0_avalon_dma_master_readdata,            //                                                       .readdata
		output wire        video_dma_controller_0_avalon_dma_master_readdatavalid,       //                                                       .readdatavalid
		input  wire        video_dma_controller_0_avalon_dma_master_lock,                //                                                       .lock
		output wire [26:0] avalon_MM_4_to_1_adapter_0_avalon_slave_address,              //                avalon_MM_4_to_1_adapter_0_avalon_slave.address
		output wire        avalon_MM_4_to_1_adapter_0_avalon_slave_read,                 //                                                       .read
		input  wire [31:0] avalon_MM_4_to_1_adapter_0_avalon_slave_readdata,             //                                                       .readdata
		input  wire        avalon_MM_4_to_1_adapter_0_avalon_slave_readdatavalid,        //                                                       .readdatavalid
		input  wire        avalon_MM_4_to_1_adapter_0_avalon_slave_waitrequest,          //                                                       .waitrequest
		output wire        avalon_MM_4_to_1_adapter_0_avalon_slave_lock                  //                                                       .lock
	);

	wire         video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_waitrequest;   // avalon_MM_4_to_1_adapter_0_avalon_slave_translator:uav_waitrequest -> video_dma_controller_0_avalon_dma_master_translator:uav_waitrequest
	wire  [31:0] video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_readdata;      // avalon_MM_4_to_1_adapter_0_avalon_slave_translator:uav_readdata -> video_dma_controller_0_avalon_dma_master_translator:uav_readdata
	wire         video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_debugaccess;   // video_dma_controller_0_avalon_dma_master_translator:uav_debugaccess -> avalon_MM_4_to_1_adapter_0_avalon_slave_translator:uav_debugaccess
	wire  [31:0] video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_address;       // video_dma_controller_0_avalon_dma_master_translator:uav_address -> avalon_MM_4_to_1_adapter_0_avalon_slave_translator:uav_address
	wire         video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_read;          // video_dma_controller_0_avalon_dma_master_translator:uav_read -> avalon_MM_4_to_1_adapter_0_avalon_slave_translator:uav_read
	wire   [3:0] video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_byteenable;    // video_dma_controller_0_avalon_dma_master_translator:uav_byteenable -> avalon_MM_4_to_1_adapter_0_avalon_slave_translator:uav_byteenable
	wire         video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_readdatavalid; // avalon_MM_4_to_1_adapter_0_avalon_slave_translator:uav_readdatavalid -> video_dma_controller_0_avalon_dma_master_translator:uav_readdatavalid
	wire         video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_lock;          // video_dma_controller_0_avalon_dma_master_translator:uav_lock -> avalon_MM_4_to_1_adapter_0_avalon_slave_translator:uav_lock
	wire         video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_write;         // video_dma_controller_0_avalon_dma_master_translator:uav_write -> avalon_MM_4_to_1_adapter_0_avalon_slave_translator:uav_write
	wire  [31:0] video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_writedata;     // video_dma_controller_0_avalon_dma_master_translator:uav_writedata -> avalon_MM_4_to_1_adapter_0_avalon_slave_translator:uav_writedata
	wire   [2:0] video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_burstcount;    // video_dma_controller_0_avalon_dma_master_translator:uav_burstcount -> avalon_MM_4_to_1_adapter_0_avalon_slave_translator:uav_burstcount

	altera_merlin_master_translator #(
		.AV_ADDRESS_W                (32),
		.AV_DATA_W                   (32),
		.AV_BURSTCOUNT_W             (1),
		.AV_BYTEENABLE_W             (4),
		.UAV_ADDRESS_W               (32),
		.UAV_BURSTCOUNT_W            (3),
		.USE_READ                    (1),
		.USE_WRITE                   (0),
		.USE_BEGINBURSTTRANSFER      (0),
		.USE_BEGINTRANSFER           (0),
		.USE_CHIPSELECT              (0),
		.USE_BURSTCOUNT              (0),
		.USE_READDATAVALID           (1),
		.USE_WAITREQUEST             (1),
		.USE_READRESPONSE            (0),
		.USE_WRITERESPONSE           (0),
		.AV_SYMBOLS_PER_WORD         (4),
		.AV_ADDRESS_SYMBOLS          (1),
		.AV_BURSTCOUNT_SYMBOLS       (0),
		.AV_CONSTANT_BURST_BEHAVIOR  (0),
		.UAV_CONSTANT_BURST_BEHAVIOR (0),
		.AV_LINEWRAPBURSTS           (0),
		.AV_REGISTERINCOMINGSIGNALS  (0)
	) video_dma_controller_0_avalon_dma_master_translator (
		.clk                    (sys_sdram_pll_0_sys_clk_clk),                                                                 //                       clk.clk
		.reset                  (video_dma_controller_0_reset_reset_bridge_in_reset_reset),                                    //                     reset.reset
		.uav_address            (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_address),       // avalon_universal_master_0.address
		.uav_burstcount         (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_burstcount),    //                          .burstcount
		.uav_read               (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_read),          //                          .read
		.uav_write              (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_write),         //                          .write
		.uav_waitrequest        (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_waitrequest),   //                          .waitrequest
		.uav_readdatavalid      (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_readdatavalid), //                          .readdatavalid
		.uav_byteenable         (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_byteenable),    //                          .byteenable
		.uav_readdata           (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_readdata),      //                          .readdata
		.uav_writedata          (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_writedata),     //                          .writedata
		.uav_lock               (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_lock),          //                          .lock
		.uav_debugaccess        (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_debugaccess),   //                          .debugaccess
		.av_address             (video_dma_controller_0_avalon_dma_master_address),                                            //      avalon_anti_master_0.address
		.av_waitrequest         (video_dma_controller_0_avalon_dma_master_waitrequest),                                        //                          .waitrequest
		.av_read                (video_dma_controller_0_avalon_dma_master_read),                                               //                          .read
		.av_readdata            (video_dma_controller_0_avalon_dma_master_readdata),                                           //                          .readdata
		.av_readdatavalid       (video_dma_controller_0_avalon_dma_master_readdatavalid),                                      //                          .readdatavalid
		.av_lock                (video_dma_controller_0_avalon_dma_master_lock),                                               //                          .lock
		.av_burstcount          (1'b1),                                                                                        //               (terminated)
		.av_byteenable          (4'b1111),                                                                                     //               (terminated)
		.av_beginbursttransfer  (1'b0),                                                                                        //               (terminated)
		.av_begintransfer       (1'b0),                                                                                        //               (terminated)
		.av_chipselect          (1'b0),                                                                                        //               (terminated)
		.av_write               (1'b0),                                                                                        //               (terminated)
		.av_writedata           (32'b00000000000000000000000000000000),                                                        //               (terminated)
		.av_debugaccess         (1'b0),                                                                                        //               (terminated)
		.uav_clken              (),                                                                                            //               (terminated)
		.av_clken               (1'b1),                                                                                        //               (terminated)
		.uav_response           (2'b00),                                                                                       //               (terminated)
		.av_response            (),                                                                                            //               (terminated)
		.uav_writeresponsevalid (1'b0),                                                                                        //               (terminated)
		.av_writeresponsevalid  ()                                                                                             //               (terminated)
	);

	altera_merlin_slave_translator #(
		.AV_ADDRESS_W                   (27),
		.AV_DATA_W                      (32),
		.UAV_DATA_W                     (32),
		.AV_BURSTCOUNT_W                (1),
		.AV_BYTEENABLE_W                (4),
		.UAV_BYTEENABLE_W               (4),
		.UAV_ADDRESS_W                  (32),
		.UAV_BURSTCOUNT_W               (3),
		.AV_READLATENCY                 (0),
		.USE_READDATAVALID              (1),
		.USE_WAITREQUEST                (1),
		.USE_UAV_CLKEN                  (0),
		.USE_READRESPONSE               (0),
		.USE_WRITERESPONSE              (0),
		.AV_SYMBOLS_PER_WORD            (4),
		.AV_ADDRESS_SYMBOLS             (0),
		.AV_BURSTCOUNT_SYMBOLS          (0),
		.AV_CONSTANT_BURST_BEHAVIOR     (0),
		.UAV_CONSTANT_BURST_BEHAVIOR    (0),
		.AV_REQUIRE_UNALIGNED_ADDRESSES (0),
		.CHIPSELECT_THROUGH_READLATENCY (0),
		.AV_READ_WAIT_CYCLES            (1),
		.AV_WRITE_WAIT_CYCLES           (0),
		.AV_SETUP_WAIT_CYCLES           (0),
		.AV_DATA_HOLD_CYCLES            (0)
	) avalon_mm_4_to_1_adapter_0_avalon_slave_translator (
		.clk                    (sys_sdram_pll_0_sys_clk_clk),                                                                 //                      clk.clk
		.reset                  (video_dma_controller_0_reset_reset_bridge_in_reset_reset),                                    //                    reset.reset
		.uav_address            (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_address),       // avalon_universal_slave_0.address
		.uav_burstcount         (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_burstcount),    //                         .burstcount
		.uav_read               (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_read),          //                         .read
		.uav_write              (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_write),         //                         .write
		.uav_waitrequest        (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_waitrequest),   //                         .waitrequest
		.uav_readdatavalid      (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_readdatavalid), //                         .readdatavalid
		.uav_byteenable         (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_byteenable),    //                         .byteenable
		.uav_readdata           (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_readdata),      //                         .readdata
		.uav_writedata          (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_writedata),     //                         .writedata
		.uav_lock               (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_lock),          //                         .lock
		.uav_debugaccess        (video_dma_controller_0_avalon_dma_master_translator_avalon_universal_master_0_debugaccess),   //                         .debugaccess
		.av_address             (avalon_MM_4_to_1_adapter_0_avalon_slave_address),                                             //      avalon_anti_slave_0.address
		.av_read                (avalon_MM_4_to_1_adapter_0_avalon_slave_read),                                                //                         .read
		.av_readdata            (avalon_MM_4_to_1_adapter_0_avalon_slave_readdata),                                            //                         .readdata
		.av_readdatavalid       (avalon_MM_4_to_1_adapter_0_avalon_slave_readdatavalid),                                       //                         .readdatavalid
		.av_waitrequest         (avalon_MM_4_to_1_adapter_0_avalon_slave_waitrequest),                                         //                         .waitrequest
		.av_lock                (avalon_MM_4_to_1_adapter_0_avalon_slave_lock),                                                //                         .lock
		.av_write               (),                                                                                            //              (terminated)
		.av_writedata           (),                                                                                            //              (terminated)
		.av_begintransfer       (),                                                                                            //              (terminated)
		.av_beginbursttransfer  (),                                                                                            //              (terminated)
		.av_burstcount          (),                                                                                            //              (terminated)
		.av_byteenable          (),                                                                                            //              (terminated)
		.av_writebyteenable     (),                                                                                            //              (terminated)
		.av_chipselect          (),                                                                                            //              (terminated)
		.av_clken               (),                                                                                            //              (terminated)
		.uav_clken              (1'b0),                                                                                        //              (terminated)
		.av_debugaccess         (),                                                                                            //              (terminated)
		.av_outputenable        (),                                                                                            //              (terminated)
		.uav_response           (),                                                                                            //              (terminated)
		.av_response            (2'b00),                                                                                       //              (terminated)
		.uav_writeresponsevalid (),                                                                                            //              (terminated)
		.av_writeresponsevalid  (1'b0)                                                                                         //              (terminated)
	);

endmodule
