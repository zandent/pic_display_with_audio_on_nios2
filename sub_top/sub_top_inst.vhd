	component sub_top is
		port (
			audio_0_external_interface_BCLK                 : in  std_logic                    := 'X'; -- BCLK
			audio_0_external_interface_DACDAT               : out std_logic;                           -- DACDAT
			audio_0_external_interface_DACLRCK              : in  std_logic                    := 'X'; -- DACLRCK
			clk_clk                                         : in  std_logic                    := 'X'; -- clk
			reset_reset_n                                   : in  std_logic                    := 'X'; -- reset_n
			video_vga_controller_0_external_interface_CLK   : out std_logic;                           -- CLK
			video_vga_controller_0_external_interface_HS    : out std_logic;                           -- HS
			video_vga_controller_0_external_interface_VS    : out std_logic;                           -- VS
			video_vga_controller_0_external_interface_BLANK : out std_logic;                           -- BLANK
			video_vga_controller_0_external_interface_SYNC  : out std_logic;                           -- SYNC
			video_vga_controller_0_external_interface_R     : out std_logic_vector(7 downto 0);        -- R
			video_vga_controller_0_external_interface_G     : out std_logic_vector(7 downto 0);        -- G
			video_vga_controller_0_external_interface_B     : out std_logic_vector(7 downto 0)         -- B
		);
	end component sub_top;

	u0 : component sub_top
		port map (
			audio_0_external_interface_BCLK                 => CONNECTED_TO_audio_0_external_interface_BCLK,                 --                audio_0_external_interface.BCLK
			audio_0_external_interface_DACDAT               => CONNECTED_TO_audio_0_external_interface_DACDAT,               --                                          .DACDAT
			audio_0_external_interface_DACLRCK              => CONNECTED_TO_audio_0_external_interface_DACLRCK,              --                                          .DACLRCK
			clk_clk                                         => CONNECTED_TO_clk_clk,                                         --                                       clk.clk
			reset_reset_n                                   => CONNECTED_TO_reset_reset_n,                                   --                                     reset.reset_n
			video_vga_controller_0_external_interface_CLK   => CONNECTED_TO_video_vga_controller_0_external_interface_CLK,   -- video_vga_controller_0_external_interface.CLK
			video_vga_controller_0_external_interface_HS    => CONNECTED_TO_video_vga_controller_0_external_interface_HS,    --                                          .HS
			video_vga_controller_0_external_interface_VS    => CONNECTED_TO_video_vga_controller_0_external_interface_VS,    --                                          .VS
			video_vga_controller_0_external_interface_BLANK => CONNECTED_TO_video_vga_controller_0_external_interface_BLANK, --                                          .BLANK
			video_vga_controller_0_external_interface_SYNC  => CONNECTED_TO_video_vga_controller_0_external_interface_SYNC,  --                                          .SYNC
			video_vga_controller_0_external_interface_R     => CONNECTED_TO_video_vga_controller_0_external_interface_R,     --                                          .R
			video_vga_controller_0_external_interface_G     => CONNECTED_TO_video_vga_controller_0_external_interface_G,     --                                          .G
			video_vga_controller_0_external_interface_B     => CONNECTED_TO_video_vga_controller_0_external_interface_B      --                                          .B
		);

