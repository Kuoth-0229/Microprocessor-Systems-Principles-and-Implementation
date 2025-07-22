## This file is a general .xdc for the ARTY Rev. A
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project


# Clock signal

set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports clk_i]
#create_clock -name clk_i -period 10.000 -waveform {0.000 5.000} [get_ports clk_i];
#derive_pll_clocks
#derive_clock_uncertainty
#create_generated_clock -period 24.000 -waveform {0.000 12.000} -name clk -source [get_pins clk_wiz_0/clk_in1] [get_nets clk]
#create_generated_clock -period  6.000 -waveform {0.000  3.000} -name clk_166M -source [get_pins clk_wiz_0/clk_in1] [get_nets clk_166M]
#create_generated_clock -period  5.000 -waveform {0.000  2.500} -name clk_200M -source [get_pins clk_wiz_0/clk_in1] [get_nets clk_200M]

set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33} [get_ports resetn_i]

#Switches

#set_property -dict { PACKAGE_PIN A8  IOSTANDARD LVCMOS33 } [get_ports { usr_sw[0] }]; #IO_L12N_T1_MRCC_16 Sch=sw[0]
#set_property -dict { PACKAGE_PIN C11 IOSTANDARD LVCMOS33 } [get_ports { usr_sw[1] }]; #IO_L13P_T2_MRCC_16 Sch=sw[1]
#set_property -dict { PACKAGE_PIN C10 IOSTANDARD LVCMOS33 } [get_ports { usr_sw[2] }]; #IO_L13N_T2_MRCC_16 Sch=sw[2]
#set_property -dict { PACKAGE_PIN A10 IOSTANDARD LVCMOS33 } [get_ports { usr_sw[3] }]; #IO_L14P_T2_SRCC_16 Sch=sw[3]


# LEDs

set_property -dict {PACKAGE_PIN H5 IOSTANDARD LVCMOS33} [get_ports {usr_led[0]}]
set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS33} [get_ports {usr_led[1]}]
set_property -dict {PACKAGE_PIN T9 IOSTANDARD LVCMOS33} [get_ports {usr_led[2]}]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {usr_led[3]}]
#set_property -dict { PACKAGE_PIN E1  IOSTANDARD LVCMOS33 } [get_ports { rgb_led[0] }]; #IO_L18N_T2_35 Sch=led0_b
#set_property -dict { PACKAGE_PIN F6  IOSTANDARD LVCMOS33 } [get_ports { rgb_led[1] }]; #IO_L19N_T3_VREF_35 Sch=led0_g
#set_property -dict { PACKAGE_PIN G6  IOSTANDARD LVCMOS33 } [get_ports { rgb_led[2] }]; #IO_L19P_T3_35 Sch=led0_r
#set_property -dict { PACKAGE_PIN G4  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_b[1] }]; #IO_L20P_T3_35 Sch=led1_b
#set_property -dict { PACKAGE_PIN J4  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_g[1] }]; #IO_L21P_T3_DQS_35 Sch=led1_g
#set_property -dict { PACKAGE_PIN G3  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_r[1] }]; #IO_L20N_T3_35 Sch=led1_r
#set_property -dict { PACKAGE_PIN H4  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_b[2] }]; #IO_L21N_T3_DQS_35 Sch=led2_b
#set_property -dict { PACKAGE_PIN J2  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_g[2] }]; #IO_L22N_T3_35 Sch=led2_g
#set_property -dict { PACKAGE_PIN J3  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_r[2] }]; #IO_L22P_T3_35 Sch=led2_r
#set_property -dict { PACKAGE_PIN K2  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_b[3] }]; #IO_L23P_T3_35 Sch=led3_b
#set_property -dict { PACKAGE_PIN H6  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_g[3] }]; #IO_L24P_T3_35 Sch=led3_g
#set_property -dict { PACKAGE_PIN K1  IOSTANDARD LVCMOS33 } [get_ports { rgb_led_r[3] }]; #IO_L23N_T3_35 Sch=led3_r


#Buttons

set_property -dict {PACKAGE_PIN D9 IOSTANDARD LVCMOS33} [get_ports {usr_btn[0]}]
set_property -dict {PACKAGE_PIN C9 IOSTANDARD LVCMOS33} [get_ports {usr_btn[1]}]
set_property -dict {PACKAGE_PIN B9 IOSTANDARD LVCMOS33} [get_ports {usr_btn[2]}]
set_property -dict {PACKAGE_PIN B8 IOSTANDARD LVCMOS33} [get_ports {usr_btn[3]}]

#UART
set_property -dict {PACKAGE_PIN D10 IOSTANDARD LVCMOS33} [get_ports uart_tx]
set_property -dict {PACKAGE_PIN A9 IOSTANDARD LVCMOS33} [get_ports uart_rx]

##ChipKit Digital I/O Low

#set_property -dict { PACKAGE_PIN V15 IOSTANDARD LVCMOS33 } [get_ports { ck_io[0] }]; #IO_L16P_T2_CSI_B_14 Sch=ck_io[0]
#set_property -dict { PACKAGE_PIN U16 IOSTANDARD LVCMOS33 } [get_ports { ck_io[1] }]; #IO_L18P_T2_A12_D28_14 Sch=ck_io[1]
#set_property -dict { PACKAGE_PIN P14 IOSTANDARD LVCMOS33 } [get_ports { ck_io[2] }]; #IO_L8N_T1_D12_14 Sch=ck_io[2]
#set_property -dict { PACKAGE_PIN T11 IOSTANDARD LVCMOS33 } [get_ports { ck_io[3] }]; #IO_L19P_T3_A10_D26_14 Sch=ck_io[3]
#set_property -dict { PACKAGE_PIN R12 IOSTANDARD LVCMOS33 } [get_ports { ck_io[4] }]; #IO_L5P_T0_D06_14 Sch=ck_io[4]
#set_property -dict { PACKAGE_PIN T14 IOSTANDARD LVCMOS33 } [get_ports { ck_io[5] }]; #IO_L14P_T2_SRCC_14 Sch=ck_io[5]
#set_property -dict { PACKAGE_PIN T15 IOSTANDARD LVCMOS33 } [get_ports { ck_io[6] }]; #IO_L14N_T2_SRCC_14 Sch=ck_io[6]
#set_property -dict { PACKAGE_PIN T16 IOSTANDARD LVCMOS33 } [get_ports { LCD_E }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=ck_io[7]
#set_property -dict { PACKAGE_PIN N15 IOSTANDARD LVCMOS33 } [get_ports { LCD_RW }]; #IO_L11P_T1_SRCC_14 Sch=ck_io[8]
#set_property -dict { PACKAGE_PIN M16 IOSTANDARD LVCMOS33 } [get_ports { LCD_RS }]; #IO_L10P_T1_D14_14 Sch=ck_io[9]
#set_property -dict { PACKAGE_PIN V17 IOSTANDARD LVCMOS33 } [get_ports { LCD_D[3] }]; #IO_L18N_T2_A11_D27_14 Sch=ck_io[10]
#set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 } [get_ports { LCD_D[2] }]; #IO_L17N_T2_A13_D29_14 Sch=ck_io[11]
#set_property -dict { PACKAGE_PIN R17 IOSTANDARD LVCMOS33 } [get_ports { LCD_D[1] }]; #IO_L12N_T1_MRCC_14 Sch=ck_io[12]
#set_property -dict { PACKAGE_PIN P17 IOSTANDARD LVCMOS33 } [get_ports { LCD_D[0] }]; #IO_L12P_T1_MRCC_14 Sch=ck_io[13]

##ChipKit Digital I/O High

#set_property -dict { PACKAGE_PIN U11 IOSTANDARD LVCMOS33 } [get_ports { ck_io[26] }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=ck_io[26]
#set_property -dict { PACKAGE_PIN V16 IOSTANDARD LVCMOS33 } [get_ports { ck_io[27] }]; #IO_L16N_T2_A15_D31_14 Sch=ck_io[27]
#set_property -dict { PACKAGE_PIN M13 IOSTANDARD LVCMOS33 } [get_ports { VGA_HSYNC }]; #IO_L6N_T0_D08_VREF_14 Sch=ck_io[28]
#set_property -dict { PACKAGE_PIN R10 IOSTANDARD LVCMOS33 } [get_ports { VGA_VSYNC }]; #IO_25_14 Sch=ck_io[29]
#set_property -dict { PACKAGE_PIN R11 IOSTANDARD LVCMOS33 } [get_ports { VGA_GREEN[0] }]; #IO_0_14 Sch=ck_io[30]
#set_property -dict { PACKAGE_PIN R13 IOSTANDARD LVCMOS33 } [get_ports { VGA_GREEN[1] }]; #IO_L5N_T0_D07_14 Sch=ck_io[31]
#set_property -dict { PACKAGE_PIN R15 IOSTANDARD LVCMOS33 } [get_ports { VGA_GREEN[2] }]; #IO_L13N_T2_MRCC_14 Sch=ck_io[32]
#set_property -dict { PACKAGE_PIN P15 IOSTANDARD LVCMOS33 } [get_ports { VGA_GREEN[3] }]; #IO_L13P_T2_MRCC_14 Sch=ck_io[33]
#set_property -dict { PACKAGE_PIN R16 IOSTANDARD LVCMOS33 } [get_ports { VGA_BLUE[0] }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=ck_io[34]
#set_property -dict { PACKAGE_PIN N16 IOSTANDARD LVCMOS33 } [get_ports { VGA_BLUE[1] }]; #IO_L11N_T1_SRCC_14 Sch=ck_io[35]
#set_property -dict { PACKAGE_PIN N14 IOSTANDARD LVCMOS33 } [get_ports { VGA_BLUE[2] }]; #IO_L8P_T1_D11_14 Sch=ck_io[36]
#set_property -dict { PACKAGE_PIN U17 IOSTANDARD LVCMOS33 } [get_ports { VGA_BLUE[3] }]; #IO_L17P_T2_A14_D30_14 Sch=ck_io[37]
#set_property -dict { PACKAGE_PIN T18 IOSTANDARD LVCMOS33 } [get_ports { VGA_RED[0] }]; #IO_L7N_T1_D10_14 Sch=ck_io[38]
#set_property -dict { PACKAGE_PIN R18 IOSTANDARD LVCMOS33 } [get_ports { VGA_RED[1] }]; #IO_L7P_T1_D09_14 Sch=ck_io[39]
#set_property -dict { PACKAGE_PIN P18 IOSTANDARD LVCMOS33 } [get_ports { VGA_RED[2] }]; #IO_L9N_T1_DQS_D13_14 Sch=ck_io[40]
#set_property -dict { PACKAGE_PIN N17 IOSTANDARD LVCMOS33 } [get_ports { VGA_RED[3] }]; #IO_L9P_T1_DQS_14 Sch=ck_io[41]

##Misc. ChipKit signals

#set_property -dict { PACKAGE_PIN M17   IOSTANDARD LVCMOS33 } [get_ports { ck_ioa }]; #IO_L10N_T1_D15_14 Sch=ck_ioa
#set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { ck_rst }]; #IO_L16P_T2_35 Sch=ck_rst

## ChipKit SPI

#set_property -dict { PACKAGE_PIN F4  IOSTANDARD LVCMOS33 } [get_ports { spi_miso }]; #IO_L17N_T2_35 Sch=ck_miso
#set_property -dict { PACKAGE_PIN D3  IOSTANDARD LVCMOS33 } [get_ports { spi_mosi }]; #IO_L17P_T2_35 Sch=ck_mosi
#set_property -dict { PACKAGE_PIN F3  IOSTANDARD LVCMOS33 } [get_ports { spi_sck }]; #IO_L18P_T2_35 Sch=ck_sck
#set_property -dict { PACKAGE_PIN D4  IOSTANDARD LVCMOS33 } [get_ports { spi_ss }]; #IO_L16N_T2_35 Sch=ck_ss


## ChipKit I2C

#set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { i2c_scl }]; #IO_L4P_T0_D04_14 Sch=ck_scl
#set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { i2c_sda }]; #IO_L4N_T0_D05_14 Sch=ck_sda
#set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { scl_pup }]; #IO_L9N_T1_DQS_AD3N_15 Sch=scl_pup
#set_property -dict { PACKAGE_PIN A13   IOSTANDARD LVCMOS33 } [get_ports { sda_pup }]; #IO_L9P_T1_DQS_AD3P_15 Sch=sda_pup


##SMSC Ethernet PHY

#set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { eth_col }]; #IO_L16N_T2_A27_15 Sch=eth_col
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { eth_crs }]; #IO_L15N_T2_DQS_ADV_B_15 Sch=eth_crs
#set_property -dict { PACKAGE_PIN F16   IOSTANDARD LVCMOS33 } [get_ports { eth_mdc }]; #IO_L14N_T2_SRCC_15 Sch=eth_mdc
#set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { eth_mdio }]; #IO_L17P_T2_A26_15 Sch=eth_mdio
#set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS33 } [get_ports { eth_ref_clk }]; #IO_L22P_T3_A17_15 Sch=eth_ref_clk
#set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { eth_rstn }]; #IO_L20P_T3_A20_15 Sch=eth_rstn
#set_property -dict { PACKAGE_PIN F15   IOSTANDARD LVCMOS33 } [get_ports { eth_rx_clk }]; #IO_L14P_T2_SRCC_15 Sch=eth_rx_clk
#set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { eth_rx_dv }]; #IO_L13N_T2_MRCC_15 Sch=eth_rx_dv
#set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { eth_rxd[0] }]; #IO_L21N_T3_DQS_A18_15 Sch=eth_rxd[0]
#set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVCMOS33 } [get_ports { eth_rxd[1] }]; #IO_L16P_T2_A28_15 Sch=eth_rxd[1]
#set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS33 } [get_ports { eth_rxd[2] }]; #IO_L21P_T3_DQS_15 Sch=eth_rxd[2]
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { eth_rxd[3] }]; #IO_L18N_T2_A23_15 Sch=eth_rxd[3]
#set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { eth_rxerr }]; #IO_L20N_T3_A19_15 Sch=eth_rxerr
#set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { eth_tx_clk }]; #IO_L13P_T2_MRCC_15 Sch=eth_tx_clk
#set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { eth_tx_en }]; #IO_L19N_T3_A21_VREF_15 Sch=eth_tx_en
#set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { eth_txd[0] }]; #IO_L15P_T2_DQS_15 Sch=eth_txd[0]
#set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { eth_txd[1] }]; #IO_L19P_T3_A22_15 Sch=eth_txd[1]
#set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { eth_txd[2] }]; #IO_L17N_T2_A25_15 Sch=eth_txd[2]
#set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { eth_txd[3] }]; #IO_L18P_T2_A24_15 Sch=eth_txd[3]


##Quad SPI Flash

#set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS33 } [get_ports { qspi_cs }]; #IO_L6P_T0_FCS_B_14 Sch=qspi_cs
#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[0] }]; #IO_L1P_T0_D00_MOSI_14 Sch=qspi_dq[0]
#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[1] }]; #IO_L1N_T0_D01_DIN_14 Sch=qspi_dq[1]
#set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[2] }]; #IO_L2P_T0_D02_14 Sch=qspi_dq[2]
#set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[3] }]; #IO_L2N_T0_D03_14 Sch=qspi_dq[3]


##ChipKit Analog I/O (in Digital I/O mode)

#set_property -dict { PACKAGE_PIN F5 IOSTANDARD LVCMOS33 } [get_ports { ck_A[0] }]; # Sch=ck_A0
#set_property -dict { PACKAGE_PIN D8 IOSTANDARD LVCMOS33 } [get_ports { ck_A[1] }]; # Sch=ck_A1
#set_property -dict { PACKAGE_PIN C7 IOSTANDARD LVCMOS33 } [get_ports { ck_A[2] }]; # Sch=ck_A2
#set_property -dict { PACKAGE_PIN E7 IOSTANDARD LVCMOS33 } [get_ports { ck_A[3] }]; # Sch=ck_A3
#set_property -dict { PACKAGE_PIN D7 IOSTANDARD LVCMOS33 } [get_ports { ck_A[4] }]; # Sch=ck_A4
#set_property -dict { PACKAGE_PIN D5 IOSTANDARD LVCMOS33 } [get_ports { ck_A[5] }]; # Sch=ck_A5
#set_property -dict { PACKAGE_PIN B7 IOSTANDARD LVCMOS33 } [get_ports { ck_A[6] }]; # Sch=ck_A6
#set_property -dict { PACKAGE_PIN B6 IOSTANDARD LVCMOS33 } [get_ports { ck_A[7] }]; # Sch=ck_A7
#set_property -dict { PACKAGE_PIN E6 IOSTANDARD LVCMOS33 } [get_ports { ck_A[8] }]; # Sch=ck_A8
#set_property -dict { PACKAGE_PIN E5 IOSTANDARD LVCMOS33 } [get_ports { ck_A[9] }]; # Sch=ck_A9
#set_property -dict { PACKAGE_PIN A4 IOSTANDARD LVCMOS33 } [get_ports { ck_A[10] }]; # Sch=ck_A10
#set_property -dict { PACKAGE_PIN A3 IOSTANDARD LVCMOS33 } [get_ports { ck_A[11] }]; # Sch=ck_A11


##Power Analysis

#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { sns0v_n[95] }]; #IO_L8N_T1_AD10N_15 Sch=sns0v_n[95]
#set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports { sns0v_p[95] }]; #IO_L8P_T1_AD10P_15 Sch=sns0v_p[95]
#set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports { sns5v_n[0] }]; #IO_L5N_T0_AD9N_15 Sch=sns5v_n[0]
#set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVCMOS33 } [get_ports { sns5v_p[0] }]; #IO_L5P_T0_AD9P_15 Sch=sns5v_p[0]
#set_property -dict { PACKAGE_PIN C12   IOSTANDARD LVCMOS33 } [get_ports { vsns5v[0] }]; #IO_L3P_T0_DQS_AD1P_15 Sch=vsns5v[0]
#set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { vsnsvu }]; #IO_L7P_T1_AD2P_15 Sch=vsnsvu

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

set_property MARK_DEBUG false [get_nets {Aquila_SoC/mem2wbk_rd_addr[1]}]
set_property MARK_DEBUG false [get_nets {Aquila_SoC/mem2wbk_rd_addr[2]}]
set_property MARK_DEBUG false [get_nets {Aquila_SoC/mem2wbk_rd_addr[3]}]
set_property MARK_DEBUG false [get_nets {Aquila_SoC/mem2wbk_rd_addr[4]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[15]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[8]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[9]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[10]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[11]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[12]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[13]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[14]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[16]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[17]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[18]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[19]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[20]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[21]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[22]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[23]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[24]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[25]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[26]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[27]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[29]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[30]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[28]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_core2mem[31]}]

set_property MARK_DEBUG true [get_nets {Aquila_SoC/data_addr_o[0]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/data_addr_o[1]}]
set_property MARK_DEBUG true [get_nets Aquila_SoC/data_rw_o]

set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[19]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[24]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[25]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[26]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[27]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[28]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[29]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[30]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[31]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[12]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[14]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[15]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[16]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[17]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[18]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[4]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[5]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[6]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[7]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[8]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[9]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[10]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[11]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/p_d_addr[13]}]
connect_debug_port u_ila_0/probe2 [get_nets [list {Aquila_SoC/RISCV_CORE0/memory_counter[0]} {Aquila_SoC/RISCV_CORE0/memory_counter[1]} {Aquila_SoC/RISCV_CORE0/memory_counter[2]} {Aquila_SoC/RISCV_CORE0/memory_counter[3]} {Aquila_SoC/RISCV_CORE0/memory_counter[4]} {Aquila_SoC/RISCV_CORE0/memory_counter[5]} {Aquila_SoC/RISCV_CORE0/memory_counter[6]} {Aquila_SoC/RISCV_CORE0/memory_counter[7]} {Aquila_SoC/RISCV_CORE0/memory_counter[8]} {Aquila_SoC/RISCV_CORE0/memory_counter[9]} {Aquila_SoC/RISCV_CORE0/memory_counter[10]} {Aquila_SoC/RISCV_CORE0/memory_counter[11]} {Aquila_SoC/RISCV_CORE0/memory_counter[12]} {Aquila_SoC/RISCV_CORE0/memory_counter[13]} {Aquila_SoC/RISCV_CORE0/memory_counter[14]} {Aquila_SoC/RISCV_CORE0/memory_counter[15]} {Aquila_SoC/RISCV_CORE0/memory_counter[16]} {Aquila_SoC/RISCV_CORE0/memory_counter[17]} {Aquila_SoC/RISCV_CORE0/memory_counter[18]} {Aquila_SoC/RISCV_CORE0/memory_counter[19]} {Aquila_SoC/RISCV_CORE0/memory_counter[20]} {Aquila_SoC/RISCV_CORE0/memory_counter[21]} {Aquila_SoC/RISCV_CORE0/memory_counter[22]} {Aquila_SoC/RISCV_CORE0/memory_counter[23]} {Aquila_SoC/RISCV_CORE0/memory_counter[24]} {Aquila_SoC/RISCV_CORE0/memory_counter[25]} {Aquila_SoC/RISCV_CORE0/memory_counter[26]} {Aquila_SoC/RISCV_CORE0/memory_counter[27]} {Aquila_SoC/RISCV_CORE0/memory_counter[28]} {Aquila_SoC/RISCV_CORE0/memory_counter[29]} {Aquila_SoC/RISCV_CORE0/memory_counter[30]} {Aquila_SoC/RISCV_CORE0/memory_counter[31]} {Aquila_SoC/RISCV_CORE0/memory_counter[32]} {Aquila_SoC/RISCV_CORE0/memory_counter[33]} {Aquila_SoC/RISCV_CORE0/memory_counter[34]} {Aquila_SoC/RISCV_CORE0/memory_counter[35]} {Aquila_SoC/RISCV_CORE0/memory_counter[36]} {Aquila_SoC/RISCV_CORE0/memory_counter[37]} {Aquila_SoC/RISCV_CORE0/memory_counter[38]} {Aquila_SoC/RISCV_CORE0/memory_counter[39]} {Aquila_SoC/RISCV_CORE0/memory_counter[40]} {Aquila_SoC/RISCV_CORE0/memory_counter[41]} {Aquila_SoC/RISCV_CORE0/memory_counter[42]} {Aquila_SoC/RISCV_CORE0/memory_counter[43]} {Aquila_SoC/RISCV_CORE0/memory_counter[44]} {Aquila_SoC/RISCV_CORE0/memory_counter[45]} {Aquila_SoC/RISCV_CORE0/memory_counter[46]} {Aquila_SoC/RISCV_CORE0/memory_counter[47]} {Aquila_SoC/RISCV_CORE0/memory_counter[48]} {Aquila_SoC/RISCV_CORE0/memory_counter[49]} {Aquila_SoC/RISCV_CORE0/memory_counter[50]} {Aquila_SoC/RISCV_CORE0/memory_counter[51]} {Aquila_SoC/RISCV_CORE0/memory_counter[52]} {Aquila_SoC/RISCV_CORE0/memory_counter[53]} {Aquila_SoC/RISCV_CORE0/memory_counter[54]} {Aquila_SoC/RISCV_CORE0/memory_counter[55]} {Aquila_SoC/RISCV_CORE0/memory_counter[56]} {Aquila_SoC/RISCV_CORE0/memory_counter[57]} {Aquila_SoC/RISCV_CORE0/memory_counter[58]} {Aquila_SoC/RISCV_CORE0/memory_counter[59]} {Aquila_SoC/RISCV_CORE0/memory_counter[60]} {Aquila_SoC/RISCV_CORE0/memory_counter[61]} {Aquila_SoC/RISCV_CORE0/memory_counter[62]} {Aquila_SoC/RISCV_CORE0/memory_counter[63]} {Aquila_SoC/RISCV_CORE0/memory_counter[64]} {Aquila_SoC/RISCV_CORE0/memory_counter[65]} {Aquila_SoC/RISCV_CORE0/memory_counter[66]} {Aquila_SoC/RISCV_CORE0/memory_counter[67]} {Aquila_SoC/RISCV_CORE0/memory_counter[68]} {Aquila_SoC/RISCV_CORE0/memory_counter[69]} {Aquila_SoC/RISCV_CORE0/memory_counter[70]} {Aquila_SoC/RISCV_CORE0/memory_counter[71]} {Aquila_SoC/RISCV_CORE0/memory_counter[72]} {Aquila_SoC/RISCV_CORE0/memory_counter[73]} {Aquila_SoC/RISCV_CORE0/memory_counter[74]} {Aquila_SoC/RISCV_CORE0/memory_counter[75]} {Aquila_SoC/RISCV_CORE0/memory_counter[76]} {Aquila_SoC/RISCV_CORE0/memory_counter[77]} {Aquila_SoC/RISCV_CORE0/memory_counter[78]} {Aquila_SoC/RISCV_CORE0/memory_counter[79]} {Aquila_SoC/RISCV_CORE0/memory_counter[80]} {Aquila_SoC/RISCV_CORE0/memory_counter[81]} {Aquila_SoC/RISCV_CORE0/memory_counter[82]} {Aquila_SoC/RISCV_CORE0/memory_counter[83]} {Aquila_SoC/RISCV_CORE0/memory_counter[84]} {Aquila_SoC/RISCV_CORE0/memory_counter[85]} {Aquila_SoC/RISCV_CORE0/memory_counter[86]} {Aquila_SoC/RISCV_CORE0/memory_counter[87]} {Aquila_SoC/RISCV_CORE0/memory_counter[88]} {Aquila_SoC/RISCV_CORE0/memory_counter[89]} {Aquila_SoC/RISCV_CORE0/memory_counter[90]} {Aquila_SoC/RISCV_CORE0/memory_counter[91]} {Aquila_SoC/RISCV_CORE0/memory_counter[92]} {Aquila_SoC/RISCV_CORE0/memory_counter[93]} {Aquila_SoC/RISCV_CORE0/memory_counter[94]} {Aquila_SoC/RISCV_CORE0/memory_counter[95]} {Aquila_SoC/RISCV_CORE0/memory_counter[96]} {Aquila_SoC/RISCV_CORE0/memory_counter[97]} {Aquila_SoC/RISCV_CORE0/memory_counter[98]} {Aquila_SoC/RISCV_CORE0/memory_counter[99]} {Aquila_SoC/RISCV_CORE0/memory_counter[100]} {Aquila_SoC/RISCV_CORE0/memory_counter[101]} {Aquila_SoC/RISCV_CORE0/memory_counter[102]} {Aquila_SoC/RISCV_CORE0/memory_counter[103]} {Aquila_SoC/RISCV_CORE0/memory_counter[104]} {Aquila_SoC/RISCV_CORE0/memory_counter[105]} {Aquila_SoC/RISCV_CORE0/memory_counter[106]} {Aquila_SoC/RISCV_CORE0/memory_counter[107]} {Aquila_SoC/RISCV_CORE0/memory_counter[108]} {Aquila_SoC/RISCV_CORE0/memory_counter[109]} {Aquila_SoC/RISCV_CORE0/memory_counter[110]} {Aquila_SoC/RISCV_CORE0/memory_counter[111]} {Aquila_SoC/RISCV_CORE0/memory_counter[112]} {Aquila_SoC/RISCV_CORE0/memory_counter[113]} {Aquila_SoC/RISCV_CORE0/memory_counter[114]} {Aquila_SoC/RISCV_CORE0/memory_counter[115]} {Aquila_SoC/RISCV_CORE0/memory_counter[116]} {Aquila_SoC/RISCV_CORE0/memory_counter[117]} {Aquila_SoC/RISCV_CORE0/memory_counter[118]} {Aquila_SoC/RISCV_CORE0/memory_counter[119]} {Aquila_SoC/RISCV_CORE0/memory_counter[120]} {Aquila_SoC/RISCV_CORE0/memory_counter[121]} {Aquila_SoC/RISCV_CORE0/memory_counter[122]} {Aquila_SoC/RISCV_CORE0/memory_counter[123]} {Aquila_SoC/RISCV_CORE0/memory_counter[124]} {Aquila_SoC/RISCV_CORE0/memory_counter[125]} {Aquila_SoC/RISCV_CORE0/memory_counter[126]} {Aquila_SoC/RISCV_CORE0/memory_counter[127]} {Aquila_SoC/RISCV_CORE0/memory_counter[128]} {Aquila_SoC/RISCV_CORE0/memory_counter[129]} {Aquila_SoC/RISCV_CORE0/memory_counter[130]} {Aquila_SoC/RISCV_CORE0/memory_counter[131]} {Aquila_SoC/RISCV_CORE0/memory_counter[132]} {Aquila_SoC/RISCV_CORE0/memory_counter[133]} {Aquila_SoC/RISCV_CORE0/memory_counter[134]} {Aquila_SoC/RISCV_CORE0/memory_counter[135]} {Aquila_SoC/RISCV_CORE0/memory_counter[136]} {Aquila_SoC/RISCV_CORE0/memory_counter[137]} {Aquila_SoC/RISCV_CORE0/memory_counter[138]} {Aquila_SoC/RISCV_CORE0/memory_counter[139]} {Aquila_SoC/RISCV_CORE0/memory_counter[140]} {Aquila_SoC/RISCV_CORE0/memory_counter[141]} {Aquila_SoC/RISCV_CORE0/memory_counter[142]} {Aquila_SoC/RISCV_CORE0/memory_counter[143]} {Aquila_SoC/RISCV_CORE0/memory_counter[144]} {Aquila_SoC/RISCV_CORE0/memory_counter[145]} {Aquila_SoC/RISCV_CORE0/memory_counter[146]} {Aquila_SoC/RISCV_CORE0/memory_counter[147]} {Aquila_SoC/RISCV_CORE0/memory_counter[148]} {Aquila_SoC/RISCV_CORE0/memory_counter[149]} {Aquila_SoC/RISCV_CORE0/memory_counter[150]} {Aquila_SoC/RISCV_CORE0/memory_counter[151]} {Aquila_SoC/RISCV_CORE0/memory_counter[152]} {Aquila_SoC/RISCV_CORE0/memory_counter[153]} {Aquila_SoC/RISCV_CORE0/memory_counter[154]} {Aquila_SoC/RISCV_CORE0/memory_counter[155]} {Aquila_SoC/RISCV_CORE0/memory_counter[156]} {Aquila_SoC/RISCV_CORE0/memory_counter[157]} {Aquila_SoC/RISCV_CORE0/memory_counter[158]} {Aquila_SoC/RISCV_CORE0/memory_counter[159]}]]
connect_debug_port u_ila_0/probe4 [get_nets [list {Aquila_SoC/data_addr_o[0]} {Aquila_SoC/data_addr_o[1]}]]
connect_debug_port u_ila_0/probe5 [get_nets [list {Aquila_SoC/RISCV_CORE0/stall_counter[0]} {Aquila_SoC/RISCV_CORE0/stall_counter[1]} {Aquila_SoC/RISCV_CORE0/stall_counter[2]} {Aquila_SoC/RISCV_CORE0/stall_counter[3]} {Aquila_SoC/RISCV_CORE0/stall_counter[4]} {Aquila_SoC/RISCV_CORE0/stall_counter[5]} {Aquila_SoC/RISCV_CORE0/stall_counter[6]} {Aquila_SoC/RISCV_CORE0/stall_counter[7]} {Aquila_SoC/RISCV_CORE0/stall_counter[8]} {Aquila_SoC/RISCV_CORE0/stall_counter[9]} {Aquila_SoC/RISCV_CORE0/stall_counter[10]} {Aquila_SoC/RISCV_CORE0/stall_counter[11]} {Aquila_SoC/RISCV_CORE0/stall_counter[12]} {Aquila_SoC/RISCV_CORE0/stall_counter[13]} {Aquila_SoC/RISCV_CORE0/stall_counter[14]} {Aquila_SoC/RISCV_CORE0/stall_counter[15]} {Aquila_SoC/RISCV_CORE0/stall_counter[16]} {Aquila_SoC/RISCV_CORE0/stall_counter[17]} {Aquila_SoC/RISCV_CORE0/stall_counter[18]} {Aquila_SoC/RISCV_CORE0/stall_counter[19]} {Aquila_SoC/RISCV_CORE0/stall_counter[20]} {Aquila_SoC/RISCV_CORE0/stall_counter[21]} {Aquila_SoC/RISCV_CORE0/stall_counter[22]} {Aquila_SoC/RISCV_CORE0/stall_counter[23]} {Aquila_SoC/RISCV_CORE0/stall_counter[24]} {Aquila_SoC/RISCV_CORE0/stall_counter[25]} {Aquila_SoC/RISCV_CORE0/stall_counter[26]} {Aquila_SoC/RISCV_CORE0/stall_counter[27]} {Aquila_SoC/RISCV_CORE0/stall_counter[28]} {Aquila_SoC/RISCV_CORE0/stall_counter[29]} {Aquila_SoC/RISCV_CORE0/stall_counter[30]} {Aquila_SoC/RISCV_CORE0/stall_counter[31]} {Aquila_SoC/RISCV_CORE0/stall_counter[32]} {Aquila_SoC/RISCV_CORE0/stall_counter[33]} {Aquila_SoC/RISCV_CORE0/stall_counter[34]} {Aquila_SoC/RISCV_CORE0/stall_counter[35]} {Aquila_SoC/RISCV_CORE0/stall_counter[36]} {Aquila_SoC/RISCV_CORE0/stall_counter[37]} {Aquila_SoC/RISCV_CORE0/stall_counter[38]} {Aquila_SoC/RISCV_CORE0/stall_counter[39]} {Aquila_SoC/RISCV_CORE0/stall_counter[40]} {Aquila_SoC/RISCV_CORE0/stall_counter[41]} {Aquila_SoC/RISCV_CORE0/stall_counter[42]} {Aquila_SoC/RISCV_CORE0/stall_counter[43]} {Aquila_SoC/RISCV_CORE0/stall_counter[44]} {Aquila_SoC/RISCV_CORE0/stall_counter[45]} {Aquila_SoC/RISCV_CORE0/stall_counter[46]} {Aquila_SoC/RISCV_CORE0/stall_counter[47]} {Aquila_SoC/RISCV_CORE0/stall_counter[48]} {Aquila_SoC/RISCV_CORE0/stall_counter[49]} {Aquila_SoC/RISCV_CORE0/stall_counter[50]} {Aquila_SoC/RISCV_CORE0/stall_counter[51]} {Aquila_SoC/RISCV_CORE0/stall_counter[52]} {Aquila_SoC/RISCV_CORE0/stall_counter[53]} {Aquila_SoC/RISCV_CORE0/stall_counter[54]} {Aquila_SoC/RISCV_CORE0/stall_counter[55]} {Aquila_SoC/RISCV_CORE0/stall_counter[56]} {Aquila_SoC/RISCV_CORE0/stall_counter[57]} {Aquila_SoC/RISCV_CORE0/stall_counter[58]} {Aquila_SoC/RISCV_CORE0/stall_counter[59]} {Aquila_SoC/RISCV_CORE0/stall_counter[60]} {Aquila_SoC/RISCV_CORE0/stall_counter[61]} {Aquila_SoC/RISCV_CORE0/stall_counter[62]} {Aquila_SoC/RISCV_CORE0/stall_counter[63]} {Aquila_SoC/RISCV_CORE0/stall_counter[64]} {Aquila_SoC/RISCV_CORE0/stall_counter[65]} {Aquila_SoC/RISCV_CORE0/stall_counter[66]} {Aquila_SoC/RISCV_CORE0/stall_counter[67]} {Aquila_SoC/RISCV_CORE0/stall_counter[68]} {Aquila_SoC/RISCV_CORE0/stall_counter[69]} {Aquila_SoC/RISCV_CORE0/stall_counter[70]} {Aquila_SoC/RISCV_CORE0/stall_counter[71]} {Aquila_SoC/RISCV_CORE0/stall_counter[72]} {Aquila_SoC/RISCV_CORE0/stall_counter[73]} {Aquila_SoC/RISCV_CORE0/stall_counter[74]} {Aquila_SoC/RISCV_CORE0/stall_counter[75]} {Aquila_SoC/RISCV_CORE0/stall_counter[76]} {Aquila_SoC/RISCV_CORE0/stall_counter[77]} {Aquila_SoC/RISCV_CORE0/stall_counter[78]} {Aquila_SoC/RISCV_CORE0/stall_counter[79]} {Aquila_SoC/RISCV_CORE0/stall_counter[80]} {Aquila_SoC/RISCV_CORE0/stall_counter[81]} {Aquila_SoC/RISCV_CORE0/stall_counter[82]} {Aquila_SoC/RISCV_CORE0/stall_counter[83]} {Aquila_SoC/RISCV_CORE0/stall_counter[84]} {Aquila_SoC/RISCV_CORE0/stall_counter[85]} {Aquila_SoC/RISCV_CORE0/stall_counter[86]} {Aquila_SoC/RISCV_CORE0/stall_counter[87]} {Aquila_SoC/RISCV_CORE0/stall_counter[88]} {Aquila_SoC/RISCV_CORE0/stall_counter[89]} {Aquila_SoC/RISCV_CORE0/stall_counter[90]} {Aquila_SoC/RISCV_CORE0/stall_counter[91]} {Aquila_SoC/RISCV_CORE0/stall_counter[92]} {Aquila_SoC/RISCV_CORE0/stall_counter[93]} {Aquila_SoC/RISCV_CORE0/stall_counter[94]} {Aquila_SoC/RISCV_CORE0/stall_counter[95]} {Aquila_SoC/RISCV_CORE0/stall_counter[96]} {Aquila_SoC/RISCV_CORE0/stall_counter[97]} {Aquila_SoC/RISCV_CORE0/stall_counter[98]} {Aquila_SoC/RISCV_CORE0/stall_counter[99]} {Aquila_SoC/RISCV_CORE0/stall_counter[100]} {Aquila_SoC/RISCV_CORE0/stall_counter[101]} {Aquila_SoC/RISCV_CORE0/stall_counter[102]} {Aquila_SoC/RISCV_CORE0/stall_counter[103]} {Aquila_SoC/RISCV_CORE0/stall_counter[104]} {Aquila_SoC/RISCV_CORE0/stall_counter[105]} {Aquila_SoC/RISCV_CORE0/stall_counter[106]} {Aquila_SoC/RISCV_CORE0/stall_counter[107]} {Aquila_SoC/RISCV_CORE0/stall_counter[108]} {Aquila_SoC/RISCV_CORE0/stall_counter[109]} {Aquila_SoC/RISCV_CORE0/stall_counter[110]} {Aquila_SoC/RISCV_CORE0/stall_counter[111]} {Aquila_SoC/RISCV_CORE0/stall_counter[112]} {Aquila_SoC/RISCV_CORE0/stall_counter[113]} {Aquila_SoC/RISCV_CORE0/stall_counter[114]} {Aquila_SoC/RISCV_CORE0/stall_counter[115]} {Aquila_SoC/RISCV_CORE0/stall_counter[116]} {Aquila_SoC/RISCV_CORE0/stall_counter[117]} {Aquila_SoC/RISCV_CORE0/stall_counter[118]} {Aquila_SoC/RISCV_CORE0/stall_counter[119]} {Aquila_SoC/RISCV_CORE0/stall_counter[120]} {Aquila_SoC/RISCV_CORE0/stall_counter[121]} {Aquila_SoC/RISCV_CORE0/stall_counter[122]} {Aquila_SoC/RISCV_CORE0/stall_counter[123]} {Aquila_SoC/RISCV_CORE0/stall_counter[124]} {Aquila_SoC/RISCV_CORE0/stall_counter[125]} {Aquila_SoC/RISCV_CORE0/stall_counter[126]} {Aquila_SoC/RISCV_CORE0/stall_counter[127]} {Aquila_SoC/RISCV_CORE0/stall_counter[128]} {Aquila_SoC/RISCV_CORE0/stall_counter[129]} {Aquila_SoC/RISCV_CORE0/stall_counter[130]} {Aquila_SoC/RISCV_CORE0/stall_counter[131]} {Aquila_SoC/RISCV_CORE0/stall_counter[132]} {Aquila_SoC/RISCV_CORE0/stall_counter[133]} {Aquila_SoC/RISCV_CORE0/stall_counter[134]} {Aquila_SoC/RISCV_CORE0/stall_counter[135]} {Aquila_SoC/RISCV_CORE0/stall_counter[136]} {Aquila_SoC/RISCV_CORE0/stall_counter[137]} {Aquila_SoC/RISCV_CORE0/stall_counter[138]} {Aquila_SoC/RISCV_CORE0/stall_counter[139]} {Aquila_SoC/RISCV_CORE0/stall_counter[140]} {Aquila_SoC/RISCV_CORE0/stall_counter[141]} {Aquila_SoC/RISCV_CORE0/stall_counter[142]} {Aquila_SoC/RISCV_CORE0/stall_counter[143]} {Aquila_SoC/RISCV_CORE0/stall_counter[144]} {Aquila_SoC/RISCV_CORE0/stall_counter[145]} {Aquila_SoC/RISCV_CORE0/stall_counter[146]} {Aquila_SoC/RISCV_CORE0/stall_counter[147]} {Aquila_SoC/RISCV_CORE0/stall_counter[148]} {Aquila_SoC/RISCV_CORE0/stall_counter[149]} {Aquila_SoC/RISCV_CORE0/stall_counter[150]} {Aquila_SoC/RISCV_CORE0/stall_counter[151]} {Aquila_SoC/RISCV_CORE0/stall_counter[152]} {Aquila_SoC/RISCV_CORE0/stall_counter[153]} {Aquila_SoC/RISCV_CORE0/stall_counter[154]} {Aquila_SoC/RISCV_CORE0/stall_counter[155]} {Aquila_SoC/RISCV_CORE0/stall_counter[156]} {Aquila_SoC/RISCV_CORE0/stall_counter[157]} {Aquila_SoC/RISCV_CORE0/stall_counter[158]} {Aquila_SoC/RISCV_CORE0/stall_counter[159]}]]
connect_debug_port u_ila_0/probe7 [get_nets [list {Aquila_SoC/RISCV_CORE0/profiler_counter[0]} {Aquila_SoC/RISCV_CORE0/profiler_counter[1]} {Aquila_SoC/RISCV_CORE0/profiler_counter[2]} {Aquila_SoC/RISCV_CORE0/profiler_counter[3]} {Aquila_SoC/RISCV_CORE0/profiler_counter[4]} {Aquila_SoC/RISCV_CORE0/profiler_counter[5]} {Aquila_SoC/RISCV_CORE0/profiler_counter[6]} {Aquila_SoC/RISCV_CORE0/profiler_counter[7]} {Aquila_SoC/RISCV_CORE0/profiler_counter[8]} {Aquila_SoC/RISCV_CORE0/profiler_counter[9]} {Aquila_SoC/RISCV_CORE0/profiler_counter[10]} {Aquila_SoC/RISCV_CORE0/profiler_counter[11]} {Aquila_SoC/RISCV_CORE0/profiler_counter[12]} {Aquila_SoC/RISCV_CORE0/profiler_counter[13]} {Aquila_SoC/RISCV_CORE0/profiler_counter[14]} {Aquila_SoC/RISCV_CORE0/profiler_counter[15]} {Aquila_SoC/RISCV_CORE0/profiler_counter[16]} {Aquila_SoC/RISCV_CORE0/profiler_counter[17]} {Aquila_SoC/RISCV_CORE0/profiler_counter[18]} {Aquila_SoC/RISCV_CORE0/profiler_counter[19]} {Aquila_SoC/RISCV_CORE0/profiler_counter[20]} {Aquila_SoC/RISCV_CORE0/profiler_counter[21]} {Aquila_SoC/RISCV_CORE0/profiler_counter[22]} {Aquila_SoC/RISCV_CORE0/profiler_counter[23]} {Aquila_SoC/RISCV_CORE0/profiler_counter[24]} {Aquila_SoC/RISCV_CORE0/profiler_counter[25]} {Aquila_SoC/RISCV_CORE0/profiler_counter[26]} {Aquila_SoC/RISCV_CORE0/profiler_counter[27]} {Aquila_SoC/RISCV_CORE0/profiler_counter[28]} {Aquila_SoC/RISCV_CORE0/profiler_counter[29]} {Aquila_SoC/RISCV_CORE0/profiler_counter[30]} {Aquila_SoC/RISCV_CORE0/profiler_counter[31]} {Aquila_SoC/RISCV_CORE0/profiler_counter[32]} {Aquila_SoC/RISCV_CORE0/profiler_counter[33]} {Aquila_SoC/RISCV_CORE0/profiler_counter[34]} {Aquila_SoC/RISCV_CORE0/profiler_counter[35]} {Aquila_SoC/RISCV_CORE0/profiler_counter[36]} {Aquila_SoC/RISCV_CORE0/profiler_counter[37]} {Aquila_SoC/RISCV_CORE0/profiler_counter[38]} {Aquila_SoC/RISCV_CORE0/profiler_counter[39]} {Aquila_SoC/RISCV_CORE0/profiler_counter[40]} {Aquila_SoC/RISCV_CORE0/profiler_counter[41]} {Aquila_SoC/RISCV_CORE0/profiler_counter[42]} {Aquila_SoC/RISCV_CORE0/profiler_counter[43]} {Aquila_SoC/RISCV_CORE0/profiler_counter[44]} {Aquila_SoC/RISCV_CORE0/profiler_counter[45]} {Aquila_SoC/RISCV_CORE0/profiler_counter[46]} {Aquila_SoC/RISCV_CORE0/profiler_counter[47]} {Aquila_SoC/RISCV_CORE0/profiler_counter[48]} {Aquila_SoC/RISCV_CORE0/profiler_counter[49]} {Aquila_SoC/RISCV_CORE0/profiler_counter[50]} {Aquila_SoC/RISCV_CORE0/profiler_counter[51]} {Aquila_SoC/RISCV_CORE0/profiler_counter[52]} {Aquila_SoC/RISCV_CORE0/profiler_counter[53]} {Aquila_SoC/RISCV_CORE0/profiler_counter[54]} {Aquila_SoC/RISCV_CORE0/profiler_counter[55]} {Aquila_SoC/RISCV_CORE0/profiler_counter[56]} {Aquila_SoC/RISCV_CORE0/profiler_counter[57]} {Aquila_SoC/RISCV_CORE0/profiler_counter[58]} {Aquila_SoC/RISCV_CORE0/profiler_counter[59]} {Aquila_SoC/RISCV_CORE0/profiler_counter[60]} {Aquila_SoC/RISCV_CORE0/profiler_counter[61]} {Aquila_SoC/RISCV_CORE0/profiler_counter[62]} {Aquila_SoC/RISCV_CORE0/profiler_counter[63]} {Aquila_SoC/RISCV_CORE0/profiler_counter[64]} {Aquila_SoC/RISCV_CORE0/profiler_counter[65]} {Aquila_SoC/RISCV_CORE0/profiler_counter[66]} {Aquila_SoC/RISCV_CORE0/profiler_counter[67]} {Aquila_SoC/RISCV_CORE0/profiler_counter[68]} {Aquila_SoC/RISCV_CORE0/profiler_counter[69]} {Aquila_SoC/RISCV_CORE0/profiler_counter[70]} {Aquila_SoC/RISCV_CORE0/profiler_counter[71]} {Aquila_SoC/RISCV_CORE0/profiler_counter[72]} {Aquila_SoC/RISCV_CORE0/profiler_counter[73]} {Aquila_SoC/RISCV_CORE0/profiler_counter[74]} {Aquila_SoC/RISCV_CORE0/profiler_counter[75]} {Aquila_SoC/RISCV_CORE0/profiler_counter[76]} {Aquila_SoC/RISCV_CORE0/profiler_counter[77]} {Aquila_SoC/RISCV_CORE0/profiler_counter[78]} {Aquila_SoC/RISCV_CORE0/profiler_counter[79]} {Aquila_SoC/RISCV_CORE0/profiler_counter[80]} {Aquila_SoC/RISCV_CORE0/profiler_counter[81]} {Aquila_SoC/RISCV_CORE0/profiler_counter[82]} {Aquila_SoC/RISCV_CORE0/profiler_counter[83]} {Aquila_SoC/RISCV_CORE0/profiler_counter[84]} {Aquila_SoC/RISCV_CORE0/profiler_counter[85]} {Aquila_SoC/RISCV_CORE0/profiler_counter[86]} {Aquila_SoC/RISCV_CORE0/profiler_counter[87]} {Aquila_SoC/RISCV_CORE0/profiler_counter[88]} {Aquila_SoC/RISCV_CORE0/profiler_counter[89]} {Aquila_SoC/RISCV_CORE0/profiler_counter[90]} {Aquila_SoC/RISCV_CORE0/profiler_counter[91]} {Aquila_SoC/RISCV_CORE0/profiler_counter[92]} {Aquila_SoC/RISCV_CORE0/profiler_counter[93]} {Aquila_SoC/RISCV_CORE0/profiler_counter[94]} {Aquila_SoC/RISCV_CORE0/profiler_counter[95]} {Aquila_SoC/RISCV_CORE0/profiler_counter[96]} {Aquila_SoC/RISCV_CORE0/profiler_counter[97]} {Aquila_SoC/RISCV_CORE0/profiler_counter[98]} {Aquila_SoC/RISCV_CORE0/profiler_counter[99]} {Aquila_SoC/RISCV_CORE0/profiler_counter[100]} {Aquila_SoC/RISCV_CORE0/profiler_counter[101]} {Aquila_SoC/RISCV_CORE0/profiler_counter[102]} {Aquila_SoC/RISCV_CORE0/profiler_counter[103]} {Aquila_SoC/RISCV_CORE0/profiler_counter[104]} {Aquila_SoC/RISCV_CORE0/profiler_counter[105]} {Aquila_SoC/RISCV_CORE0/profiler_counter[106]} {Aquila_SoC/RISCV_CORE0/profiler_counter[107]} {Aquila_SoC/RISCV_CORE0/profiler_counter[108]} {Aquila_SoC/RISCV_CORE0/profiler_counter[109]} {Aquila_SoC/RISCV_CORE0/profiler_counter[110]} {Aquila_SoC/RISCV_CORE0/profiler_counter[111]} {Aquila_SoC/RISCV_CORE0/profiler_counter[112]} {Aquila_SoC/RISCV_CORE0/profiler_counter[113]} {Aquila_SoC/RISCV_CORE0/profiler_counter[114]} {Aquila_SoC/RISCV_CORE0/profiler_counter[115]} {Aquila_SoC/RISCV_CORE0/profiler_counter[116]} {Aquila_SoC/RISCV_CORE0/profiler_counter[117]} {Aquila_SoC/RISCV_CORE0/profiler_counter[118]} {Aquila_SoC/RISCV_CORE0/profiler_counter[119]} {Aquila_SoC/RISCV_CORE0/profiler_counter[120]} {Aquila_SoC/RISCV_CORE0/profiler_counter[121]} {Aquila_SoC/RISCV_CORE0/profiler_counter[122]} {Aquila_SoC/RISCV_CORE0/profiler_counter[123]} {Aquila_SoC/RISCV_CORE0/profiler_counter[124]} {Aquila_SoC/RISCV_CORE0/profiler_counter[125]} {Aquila_SoC/RISCV_CORE0/profiler_counter[126]} {Aquila_SoC/RISCV_CORE0/profiler_counter[127]} {Aquila_SoC/RISCV_CORE0/profiler_counter[128]} {Aquila_SoC/RISCV_CORE0/profiler_counter[129]} {Aquila_SoC/RISCV_CORE0/profiler_counter[130]} {Aquila_SoC/RISCV_CORE0/profiler_counter[131]} {Aquila_SoC/RISCV_CORE0/profiler_counter[132]} {Aquila_SoC/RISCV_CORE0/profiler_counter[133]} {Aquila_SoC/RISCV_CORE0/profiler_counter[134]} {Aquila_SoC/RISCV_CORE0/profiler_counter[135]} {Aquila_SoC/RISCV_CORE0/profiler_counter[136]} {Aquila_SoC/RISCV_CORE0/profiler_counter[137]} {Aquila_SoC/RISCV_CORE0/profiler_counter[138]} {Aquila_SoC/RISCV_CORE0/profiler_counter[139]} {Aquila_SoC/RISCV_CORE0/profiler_counter[140]} {Aquila_SoC/RISCV_CORE0/profiler_counter[141]} {Aquila_SoC/RISCV_CORE0/profiler_counter[142]} {Aquila_SoC/RISCV_CORE0/profiler_counter[143]} {Aquila_SoC/RISCV_CORE0/profiler_counter[144]} {Aquila_SoC/RISCV_CORE0/profiler_counter[145]} {Aquila_SoC/RISCV_CORE0/profiler_counter[146]} {Aquila_SoC/RISCV_CORE0/profiler_counter[147]} {Aquila_SoC/RISCV_CORE0/profiler_counter[148]} {Aquila_SoC/RISCV_CORE0/profiler_counter[149]} {Aquila_SoC/RISCV_CORE0/profiler_counter[150]} {Aquila_SoC/RISCV_CORE0/profiler_counter[151]} {Aquila_SoC/RISCV_CORE0/profiler_counter[152]} {Aquila_SoC/RISCV_CORE0/profiler_counter[153]} {Aquila_SoC/RISCV_CORE0/profiler_counter[154]} {Aquila_SoC/RISCV_CORE0/profiler_counter[155]} {Aquila_SoC/RISCV_CORE0/profiler_counter[156]} {Aquila_SoC/RISCV_CORE0/profiler_counter[157]} {Aquila_SoC/RISCV_CORE0/profiler_counter[158]} {Aquila_SoC/RISCV_CORE0/profiler_counter[159]}]]



set_property MARK_DEBUG true [get_nets {Aquila_SoC/data_sel_r[0]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/data_sel_r[1]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[12]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[11]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[24]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[23]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[13]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[14]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[25]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[20]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[15]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[16]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[22]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[17]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[18]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[19]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[21]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[0]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[1]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[27]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[28]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[2]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[3]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[4]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[5]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[6]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[7]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[8]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[31]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[29]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[30]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[9]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[10]}]
set_property MARK_DEBUG true [get_nets {Aquila_SoC/RISCV_CORE0/Program_Counter/pc_o[26]}]


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list Clock_Generator/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {Aquila_SoC/RISCV_CORE0/memory_counter5[0]} {Aquila_SoC/RISCV_CORE0/memory_counter5[1]} {Aquila_SoC/RISCV_CORE0/memory_counter5[2]} {Aquila_SoC/RISCV_CORE0/memory_counter5[3]} {Aquila_SoC/RISCV_CORE0/memory_counter5[4]} {Aquila_SoC/RISCV_CORE0/memory_counter5[5]} {Aquila_SoC/RISCV_CORE0/memory_counter5[6]} {Aquila_SoC/RISCV_CORE0/memory_counter5[7]} {Aquila_SoC/RISCV_CORE0/memory_counter5[8]} {Aquila_SoC/RISCV_CORE0/memory_counter5[9]} {Aquila_SoC/RISCV_CORE0/memory_counter5[10]} {Aquila_SoC/RISCV_CORE0/memory_counter5[11]} {Aquila_SoC/RISCV_CORE0/memory_counter5[12]} {Aquila_SoC/RISCV_CORE0/memory_counter5[13]} {Aquila_SoC/RISCV_CORE0/memory_counter5[14]} {Aquila_SoC/RISCV_CORE0/memory_counter5[15]} {Aquila_SoC/RISCV_CORE0/memory_counter5[16]} {Aquila_SoC/RISCV_CORE0/memory_counter5[17]} {Aquila_SoC/RISCV_CORE0/memory_counter5[18]} {Aquila_SoC/RISCV_CORE0/memory_counter5[19]} {Aquila_SoC/RISCV_CORE0/memory_counter5[20]} {Aquila_SoC/RISCV_CORE0/memory_counter5[21]} {Aquila_SoC/RISCV_CORE0/memory_counter5[22]} {Aquila_SoC/RISCV_CORE0/memory_counter5[23]} {Aquila_SoC/RISCV_CORE0/memory_counter5[24]} {Aquila_SoC/RISCV_CORE0/memory_counter5[25]} {Aquila_SoC/RISCV_CORE0/memory_counter5[26]} {Aquila_SoC/RISCV_CORE0/memory_counter5[27]} {Aquila_SoC/RISCV_CORE0/memory_counter5[28]} {Aquila_SoC/RISCV_CORE0/memory_counter5[29]} {Aquila_SoC/RISCV_CORE0/memory_counter5[30]} {Aquila_SoC/RISCV_CORE0/memory_counter5[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {Aquila_SoC/RISCV_CORE0/profiler_counter5[0]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[1]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[2]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[3]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[4]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[5]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[6]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[7]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[8]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[9]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[10]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[11]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[12]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[13]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[14]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[15]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[16]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[17]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[18]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[19]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[20]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[21]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[22]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[23]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[24]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[25]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[26]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[27]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[28]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[29]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[30]} {Aquila_SoC/RISCV_CORE0/profiler_counter5[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 32 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {Aquila_SoC/RISCV_CORE0/memory_counter3[0]} {Aquila_SoC/RISCV_CORE0/memory_counter3[1]} {Aquila_SoC/RISCV_CORE0/memory_counter3[2]} {Aquila_SoC/RISCV_CORE0/memory_counter3[3]} {Aquila_SoC/RISCV_CORE0/memory_counter3[4]} {Aquila_SoC/RISCV_CORE0/memory_counter3[5]} {Aquila_SoC/RISCV_CORE0/memory_counter3[6]} {Aquila_SoC/RISCV_CORE0/memory_counter3[7]} {Aquila_SoC/RISCV_CORE0/memory_counter3[8]} {Aquila_SoC/RISCV_CORE0/memory_counter3[9]} {Aquila_SoC/RISCV_CORE0/memory_counter3[10]} {Aquila_SoC/RISCV_CORE0/memory_counter3[11]} {Aquila_SoC/RISCV_CORE0/memory_counter3[12]} {Aquila_SoC/RISCV_CORE0/memory_counter3[13]} {Aquila_SoC/RISCV_CORE0/memory_counter3[14]} {Aquila_SoC/RISCV_CORE0/memory_counter3[15]} {Aquila_SoC/RISCV_CORE0/memory_counter3[16]} {Aquila_SoC/RISCV_CORE0/memory_counter3[17]} {Aquila_SoC/RISCV_CORE0/memory_counter3[18]} {Aquila_SoC/RISCV_CORE0/memory_counter3[19]} {Aquila_SoC/RISCV_CORE0/memory_counter3[20]} {Aquila_SoC/RISCV_CORE0/memory_counter3[21]} {Aquila_SoC/RISCV_CORE0/memory_counter3[22]} {Aquila_SoC/RISCV_CORE0/memory_counter3[23]} {Aquila_SoC/RISCV_CORE0/memory_counter3[24]} {Aquila_SoC/RISCV_CORE0/memory_counter3[25]} {Aquila_SoC/RISCV_CORE0/memory_counter3[26]} {Aquila_SoC/RISCV_CORE0/memory_counter3[27]} {Aquila_SoC/RISCV_CORE0/memory_counter3[28]} {Aquila_SoC/RISCV_CORE0/memory_counter3[29]} {Aquila_SoC/RISCV_CORE0/memory_counter3[30]} {Aquila_SoC/RISCV_CORE0/memory_counter3[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {Aquila_SoC/RISCV_CORE0/profiler_counter3[0]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[1]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[2]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[3]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[4]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[5]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[6]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[7]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[8]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[9]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[10]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[11]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[12]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[13]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[14]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[15]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[16]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[17]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[18]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[19]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[20]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[21]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[22]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[23]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[24]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[25]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[26]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[27]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[28]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[29]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[30]} {Aquila_SoC/RISCV_CORE0/profiler_counter3[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 32 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {Aquila_SoC/RISCV_CORE0/memory_counter4[0]} {Aquila_SoC/RISCV_CORE0/memory_counter4[1]} {Aquila_SoC/RISCV_CORE0/memory_counter4[2]} {Aquila_SoC/RISCV_CORE0/memory_counter4[3]} {Aquila_SoC/RISCV_CORE0/memory_counter4[4]} {Aquila_SoC/RISCV_CORE0/memory_counter4[5]} {Aquila_SoC/RISCV_CORE0/memory_counter4[6]} {Aquila_SoC/RISCV_CORE0/memory_counter4[7]} {Aquila_SoC/RISCV_CORE0/memory_counter4[8]} {Aquila_SoC/RISCV_CORE0/memory_counter4[9]} {Aquila_SoC/RISCV_CORE0/memory_counter4[10]} {Aquila_SoC/RISCV_CORE0/memory_counter4[11]} {Aquila_SoC/RISCV_CORE0/memory_counter4[12]} {Aquila_SoC/RISCV_CORE0/memory_counter4[13]} {Aquila_SoC/RISCV_CORE0/memory_counter4[14]} {Aquila_SoC/RISCV_CORE0/memory_counter4[15]} {Aquila_SoC/RISCV_CORE0/memory_counter4[16]} {Aquila_SoC/RISCV_CORE0/memory_counter4[17]} {Aquila_SoC/RISCV_CORE0/memory_counter4[18]} {Aquila_SoC/RISCV_CORE0/memory_counter4[19]} {Aquila_SoC/RISCV_CORE0/memory_counter4[20]} {Aquila_SoC/RISCV_CORE0/memory_counter4[21]} {Aquila_SoC/RISCV_CORE0/memory_counter4[22]} {Aquila_SoC/RISCV_CORE0/memory_counter4[23]} {Aquila_SoC/RISCV_CORE0/memory_counter4[24]} {Aquila_SoC/RISCV_CORE0/memory_counter4[25]} {Aquila_SoC/RISCV_CORE0/memory_counter4[26]} {Aquila_SoC/RISCV_CORE0/memory_counter4[27]} {Aquila_SoC/RISCV_CORE0/memory_counter4[28]} {Aquila_SoC/RISCV_CORE0/memory_counter4[29]} {Aquila_SoC/RISCV_CORE0/memory_counter4[30]} {Aquila_SoC/RISCV_CORE0/memory_counter4[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 32 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {Aquila_SoC/p_d_addr[0]} {Aquila_SoC/p_d_addr[1]} {Aquila_SoC/p_d_addr[2]} {Aquila_SoC/p_d_addr[3]} {Aquila_SoC/p_d_addr[4]} {Aquila_SoC/p_d_addr[5]} {Aquila_SoC/p_d_addr[6]} {Aquila_SoC/p_d_addr[7]} {Aquila_SoC/p_d_addr[8]} {Aquila_SoC/p_d_addr[9]} {Aquila_SoC/p_d_addr[10]} {Aquila_SoC/p_d_addr[11]} {Aquila_SoC/p_d_addr[12]} {Aquila_SoC/p_d_addr[13]} {Aquila_SoC/p_d_addr[14]} {Aquila_SoC/p_d_addr[15]} {Aquila_SoC/p_d_addr[16]} {Aquila_SoC/p_d_addr[17]} {Aquila_SoC/p_d_addr[18]} {Aquila_SoC/p_d_addr[19]} {Aquila_SoC/p_d_addr[20]} {Aquila_SoC/p_d_addr[21]} {Aquila_SoC/p_d_addr[22]} {Aquila_SoC/p_d_addr[23]} {Aquila_SoC/p_d_addr[24]} {Aquila_SoC/p_d_addr[25]} {Aquila_SoC/p_d_addr[26]} {Aquila_SoC/p_d_addr[27]} {Aquila_SoC/p_d_addr[28]} {Aquila_SoC/p_d_addr[29]} {Aquila_SoC/p_d_addr[30]} {Aquila_SoC/p_d_addr[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 32 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {Aquila_SoC/RISCV_CORE0/profiler_counter4[0]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[1]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[2]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[3]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[4]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[5]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[6]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[7]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[8]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[9]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[10]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[11]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[12]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[13]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[14]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[15]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[16]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[17]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[18]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[19]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[20]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[21]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[22]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[23]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[24]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[25]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[26]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[27]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[28]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[29]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[30]} {Aquila_SoC/RISCV_CORE0/profiler_counter4[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 2 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {Aquila_SoC/data_sel_r[0]} {Aquila_SoC/data_sel_r[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 32 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {Aquila_SoC/RISCV_CORE0/memory_counter1[0]} {Aquila_SoC/RISCV_CORE0/memory_counter1[1]} {Aquila_SoC/RISCV_CORE0/memory_counter1[2]} {Aquila_SoC/RISCV_CORE0/memory_counter1[3]} {Aquila_SoC/RISCV_CORE0/memory_counter1[4]} {Aquila_SoC/RISCV_CORE0/memory_counter1[5]} {Aquila_SoC/RISCV_CORE0/memory_counter1[6]} {Aquila_SoC/RISCV_CORE0/memory_counter1[7]} {Aquila_SoC/RISCV_CORE0/memory_counter1[8]} {Aquila_SoC/RISCV_CORE0/memory_counter1[9]} {Aquila_SoC/RISCV_CORE0/memory_counter1[10]} {Aquila_SoC/RISCV_CORE0/memory_counter1[11]} {Aquila_SoC/RISCV_CORE0/memory_counter1[12]} {Aquila_SoC/RISCV_CORE0/memory_counter1[13]} {Aquila_SoC/RISCV_CORE0/memory_counter1[14]} {Aquila_SoC/RISCV_CORE0/memory_counter1[15]} {Aquila_SoC/RISCV_CORE0/memory_counter1[16]} {Aquila_SoC/RISCV_CORE0/memory_counter1[17]} {Aquila_SoC/RISCV_CORE0/memory_counter1[18]} {Aquila_SoC/RISCV_CORE0/memory_counter1[19]} {Aquila_SoC/RISCV_CORE0/memory_counter1[20]} {Aquila_SoC/RISCV_CORE0/memory_counter1[21]} {Aquila_SoC/RISCV_CORE0/memory_counter1[22]} {Aquila_SoC/RISCV_CORE0/memory_counter1[23]} {Aquila_SoC/RISCV_CORE0/memory_counter1[24]} {Aquila_SoC/RISCV_CORE0/memory_counter1[25]} {Aquila_SoC/RISCV_CORE0/memory_counter1[26]} {Aquila_SoC/RISCV_CORE0/memory_counter1[27]} {Aquila_SoC/RISCV_CORE0/memory_counter1[28]} {Aquila_SoC/RISCV_CORE0/memory_counter1[29]} {Aquila_SoC/RISCV_CORE0/memory_counter1[30]} {Aquila_SoC/RISCV_CORE0/memory_counter1[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 32 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {Aquila_SoC/RISCV_CORE0/pcu_pc[0]} {Aquila_SoC/RISCV_CORE0/pcu_pc[1]} {Aquila_SoC/RISCV_CORE0/pcu_pc[2]} {Aquila_SoC/RISCV_CORE0/pcu_pc[3]} {Aquila_SoC/RISCV_CORE0/pcu_pc[4]} {Aquila_SoC/RISCV_CORE0/pcu_pc[5]} {Aquila_SoC/RISCV_CORE0/pcu_pc[6]} {Aquila_SoC/RISCV_CORE0/pcu_pc[7]} {Aquila_SoC/RISCV_CORE0/pcu_pc[8]} {Aquila_SoC/RISCV_CORE0/pcu_pc[9]} {Aquila_SoC/RISCV_CORE0/pcu_pc[10]} {Aquila_SoC/RISCV_CORE0/pcu_pc[11]} {Aquila_SoC/RISCV_CORE0/pcu_pc[12]} {Aquila_SoC/RISCV_CORE0/pcu_pc[13]} {Aquila_SoC/RISCV_CORE0/pcu_pc[14]} {Aquila_SoC/RISCV_CORE0/pcu_pc[15]} {Aquila_SoC/RISCV_CORE0/pcu_pc[16]} {Aquila_SoC/RISCV_CORE0/pcu_pc[17]} {Aquila_SoC/RISCV_CORE0/pcu_pc[18]} {Aquila_SoC/RISCV_CORE0/pcu_pc[19]} {Aquila_SoC/RISCV_CORE0/pcu_pc[20]} {Aquila_SoC/RISCV_CORE0/pcu_pc[21]} {Aquila_SoC/RISCV_CORE0/pcu_pc[22]} {Aquila_SoC/RISCV_CORE0/pcu_pc[23]} {Aquila_SoC/RISCV_CORE0/pcu_pc[24]} {Aquila_SoC/RISCV_CORE0/pcu_pc[25]} {Aquila_SoC/RISCV_CORE0/pcu_pc[26]} {Aquila_SoC/RISCV_CORE0/pcu_pc[27]} {Aquila_SoC/RISCV_CORE0/pcu_pc[28]} {Aquila_SoC/RISCV_CORE0/pcu_pc[29]} {Aquila_SoC/RISCV_CORE0/pcu_pc[30]} {Aquila_SoC/RISCV_CORE0/pcu_pc[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 32 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {Aquila_SoC/RISCV_CORE0/memory_counter2[0]} {Aquila_SoC/RISCV_CORE0/memory_counter2[1]} {Aquila_SoC/RISCV_CORE0/memory_counter2[2]} {Aquila_SoC/RISCV_CORE0/memory_counter2[3]} {Aquila_SoC/RISCV_CORE0/memory_counter2[4]} {Aquila_SoC/RISCV_CORE0/memory_counter2[5]} {Aquila_SoC/RISCV_CORE0/memory_counter2[6]} {Aquila_SoC/RISCV_CORE0/memory_counter2[7]} {Aquila_SoC/RISCV_CORE0/memory_counter2[8]} {Aquila_SoC/RISCV_CORE0/memory_counter2[9]} {Aquila_SoC/RISCV_CORE0/memory_counter2[10]} {Aquila_SoC/RISCV_CORE0/memory_counter2[11]} {Aquila_SoC/RISCV_CORE0/memory_counter2[12]} {Aquila_SoC/RISCV_CORE0/memory_counter2[13]} {Aquila_SoC/RISCV_CORE0/memory_counter2[14]} {Aquila_SoC/RISCV_CORE0/memory_counter2[15]} {Aquila_SoC/RISCV_CORE0/memory_counter2[16]} {Aquila_SoC/RISCV_CORE0/memory_counter2[17]} {Aquila_SoC/RISCV_CORE0/memory_counter2[18]} {Aquila_SoC/RISCV_CORE0/memory_counter2[19]} {Aquila_SoC/RISCV_CORE0/memory_counter2[20]} {Aquila_SoC/RISCV_CORE0/memory_counter2[21]} {Aquila_SoC/RISCV_CORE0/memory_counter2[22]} {Aquila_SoC/RISCV_CORE0/memory_counter2[23]} {Aquila_SoC/RISCV_CORE0/memory_counter2[24]} {Aquila_SoC/RISCV_CORE0/memory_counter2[25]} {Aquila_SoC/RISCV_CORE0/memory_counter2[26]} {Aquila_SoC/RISCV_CORE0/memory_counter2[27]} {Aquila_SoC/RISCV_CORE0/memory_counter2[28]} {Aquila_SoC/RISCV_CORE0/memory_counter2[29]} {Aquila_SoC/RISCV_CORE0/memory_counter2[30]} {Aquila_SoC/RISCV_CORE0/memory_counter2[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 32 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {Aquila_SoC/RISCV_CORE0/profiler_counter1[0]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[1]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[2]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[3]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[4]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[5]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[6]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[7]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[8]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[9]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[10]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[11]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[12]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[13]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[14]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[15]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[16]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[17]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[18]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[19]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[20]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[21]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[22]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[23]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[24]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[25]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[26]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[27]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[28]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[29]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[30]} {Aquila_SoC/RISCV_CORE0/profiler_counter1[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 32 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {Aquila_SoC/RISCV_CORE0/profiler_counter2[0]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[1]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[2]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[3]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[4]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[5]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[6]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[7]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[8]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[9]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[10]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[11]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[12]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[13]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[14]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[15]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[16]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[17]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[18]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[19]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[20]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[21]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[22]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[23]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[24]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[25]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[26]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[27]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[28]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[29]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[30]} {Aquila_SoC/RISCV_CORE0/profiler_counter2[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 32 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list {Aquila_SoC/RISCV_CORE0/stall_counter1[0]} {Aquila_SoC/RISCV_CORE0/stall_counter1[1]} {Aquila_SoC/RISCV_CORE0/stall_counter1[2]} {Aquila_SoC/RISCV_CORE0/stall_counter1[3]} {Aquila_SoC/RISCV_CORE0/stall_counter1[4]} {Aquila_SoC/RISCV_CORE0/stall_counter1[5]} {Aquila_SoC/RISCV_CORE0/stall_counter1[6]} {Aquila_SoC/RISCV_CORE0/stall_counter1[7]} {Aquila_SoC/RISCV_CORE0/stall_counter1[8]} {Aquila_SoC/RISCV_CORE0/stall_counter1[9]} {Aquila_SoC/RISCV_CORE0/stall_counter1[10]} {Aquila_SoC/RISCV_CORE0/stall_counter1[11]} {Aquila_SoC/RISCV_CORE0/stall_counter1[12]} {Aquila_SoC/RISCV_CORE0/stall_counter1[13]} {Aquila_SoC/RISCV_CORE0/stall_counter1[14]} {Aquila_SoC/RISCV_CORE0/stall_counter1[15]} {Aquila_SoC/RISCV_CORE0/stall_counter1[16]} {Aquila_SoC/RISCV_CORE0/stall_counter1[17]} {Aquila_SoC/RISCV_CORE0/stall_counter1[18]} {Aquila_SoC/RISCV_CORE0/stall_counter1[19]} {Aquila_SoC/RISCV_CORE0/stall_counter1[20]} {Aquila_SoC/RISCV_CORE0/stall_counter1[21]} {Aquila_SoC/RISCV_CORE0/stall_counter1[22]} {Aquila_SoC/RISCV_CORE0/stall_counter1[23]} {Aquila_SoC/RISCV_CORE0/stall_counter1[24]} {Aquila_SoC/RISCV_CORE0/stall_counter1[25]} {Aquila_SoC/RISCV_CORE0/stall_counter1[26]} {Aquila_SoC/RISCV_CORE0/stall_counter1[27]} {Aquila_SoC/RISCV_CORE0/stall_counter1[28]} {Aquila_SoC/RISCV_CORE0/stall_counter1[29]} {Aquila_SoC/RISCV_CORE0/stall_counter1[30]} {Aquila_SoC/RISCV_CORE0/stall_counter1[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 32 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list {Aquila_SoC/RISCV_CORE0/stall_counter4[0]} {Aquila_SoC/RISCV_CORE0/stall_counter4[1]} {Aquila_SoC/RISCV_CORE0/stall_counter4[2]} {Aquila_SoC/RISCV_CORE0/stall_counter4[3]} {Aquila_SoC/RISCV_CORE0/stall_counter4[4]} {Aquila_SoC/RISCV_CORE0/stall_counter4[5]} {Aquila_SoC/RISCV_CORE0/stall_counter4[6]} {Aquila_SoC/RISCV_CORE0/stall_counter4[7]} {Aquila_SoC/RISCV_CORE0/stall_counter4[8]} {Aquila_SoC/RISCV_CORE0/stall_counter4[9]} {Aquila_SoC/RISCV_CORE0/stall_counter4[10]} {Aquila_SoC/RISCV_CORE0/stall_counter4[11]} {Aquila_SoC/RISCV_CORE0/stall_counter4[12]} {Aquila_SoC/RISCV_CORE0/stall_counter4[13]} {Aquila_SoC/RISCV_CORE0/stall_counter4[14]} {Aquila_SoC/RISCV_CORE0/stall_counter4[15]} {Aquila_SoC/RISCV_CORE0/stall_counter4[16]} {Aquila_SoC/RISCV_CORE0/stall_counter4[17]} {Aquila_SoC/RISCV_CORE0/stall_counter4[18]} {Aquila_SoC/RISCV_CORE0/stall_counter4[19]} {Aquila_SoC/RISCV_CORE0/stall_counter4[20]} {Aquila_SoC/RISCV_CORE0/stall_counter4[21]} {Aquila_SoC/RISCV_CORE0/stall_counter4[22]} {Aquila_SoC/RISCV_CORE0/stall_counter4[23]} {Aquila_SoC/RISCV_CORE0/stall_counter4[24]} {Aquila_SoC/RISCV_CORE0/stall_counter4[25]} {Aquila_SoC/RISCV_CORE0/stall_counter4[26]} {Aquila_SoC/RISCV_CORE0/stall_counter4[27]} {Aquila_SoC/RISCV_CORE0/stall_counter4[28]} {Aquila_SoC/RISCV_CORE0/stall_counter4[29]} {Aquila_SoC/RISCV_CORE0/stall_counter4[30]} {Aquila_SoC/RISCV_CORE0/stall_counter4[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 32 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list {Aquila_SoC/RISCV_CORE0/stall_counter5[0]} {Aquila_SoC/RISCV_CORE0/stall_counter5[1]} {Aquila_SoC/RISCV_CORE0/stall_counter5[2]} {Aquila_SoC/RISCV_CORE0/stall_counter5[3]} {Aquila_SoC/RISCV_CORE0/stall_counter5[4]} {Aquila_SoC/RISCV_CORE0/stall_counter5[5]} {Aquila_SoC/RISCV_CORE0/stall_counter5[6]} {Aquila_SoC/RISCV_CORE0/stall_counter5[7]} {Aquila_SoC/RISCV_CORE0/stall_counter5[8]} {Aquila_SoC/RISCV_CORE0/stall_counter5[9]} {Aquila_SoC/RISCV_CORE0/stall_counter5[10]} {Aquila_SoC/RISCV_CORE0/stall_counter5[11]} {Aquila_SoC/RISCV_CORE0/stall_counter5[12]} {Aquila_SoC/RISCV_CORE0/stall_counter5[13]} {Aquila_SoC/RISCV_CORE0/stall_counter5[14]} {Aquila_SoC/RISCV_CORE0/stall_counter5[15]} {Aquila_SoC/RISCV_CORE0/stall_counter5[16]} {Aquila_SoC/RISCV_CORE0/stall_counter5[17]} {Aquila_SoC/RISCV_CORE0/stall_counter5[18]} {Aquila_SoC/RISCV_CORE0/stall_counter5[19]} {Aquila_SoC/RISCV_CORE0/stall_counter5[20]} {Aquila_SoC/RISCV_CORE0/stall_counter5[21]} {Aquila_SoC/RISCV_CORE0/stall_counter5[22]} {Aquila_SoC/RISCV_CORE0/stall_counter5[23]} {Aquila_SoC/RISCV_CORE0/stall_counter5[24]} {Aquila_SoC/RISCV_CORE0/stall_counter5[25]} {Aquila_SoC/RISCV_CORE0/stall_counter5[26]} {Aquila_SoC/RISCV_CORE0/stall_counter5[27]} {Aquila_SoC/RISCV_CORE0/stall_counter5[28]} {Aquila_SoC/RISCV_CORE0/stall_counter5[29]} {Aquila_SoC/RISCV_CORE0/stall_counter5[30]} {Aquila_SoC/RISCV_CORE0/stall_counter5[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 32 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list {Aquila_SoC/p_d_core2mem[0]} {Aquila_SoC/p_d_core2mem[1]} {Aquila_SoC/p_d_core2mem[2]} {Aquila_SoC/p_d_core2mem[3]} {Aquila_SoC/p_d_core2mem[4]} {Aquila_SoC/p_d_core2mem[5]} {Aquila_SoC/p_d_core2mem[6]} {Aquila_SoC/p_d_core2mem[7]} {Aquila_SoC/p_d_core2mem[8]} {Aquila_SoC/p_d_core2mem[9]} {Aquila_SoC/p_d_core2mem[10]} {Aquila_SoC/p_d_core2mem[11]} {Aquila_SoC/p_d_core2mem[12]} {Aquila_SoC/p_d_core2mem[13]} {Aquila_SoC/p_d_core2mem[14]} {Aquila_SoC/p_d_core2mem[15]} {Aquila_SoC/p_d_core2mem[16]} {Aquila_SoC/p_d_core2mem[17]} {Aquila_SoC/p_d_core2mem[18]} {Aquila_SoC/p_d_core2mem[19]} {Aquila_SoC/p_d_core2mem[20]} {Aquila_SoC/p_d_core2mem[21]} {Aquila_SoC/p_d_core2mem[22]} {Aquila_SoC/p_d_core2mem[23]} {Aquila_SoC/p_d_core2mem[24]} {Aquila_SoC/p_d_core2mem[25]} {Aquila_SoC/p_d_core2mem[26]} {Aquila_SoC/p_d_core2mem[27]} {Aquila_SoC/p_d_core2mem[28]} {Aquila_SoC/p_d_core2mem[29]} {Aquila_SoC/p_d_core2mem[30]} {Aquila_SoC/p_d_core2mem[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 32 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list {Aquila_SoC/RISCV_CORE0/total_counter[0]} {Aquila_SoC/RISCV_CORE0/total_counter[1]} {Aquila_SoC/RISCV_CORE0/total_counter[2]} {Aquila_SoC/RISCV_CORE0/total_counter[3]} {Aquila_SoC/RISCV_CORE0/total_counter[4]} {Aquila_SoC/RISCV_CORE0/total_counter[5]} {Aquila_SoC/RISCV_CORE0/total_counter[6]} {Aquila_SoC/RISCV_CORE0/total_counter[7]} {Aquila_SoC/RISCV_CORE0/total_counter[8]} {Aquila_SoC/RISCV_CORE0/total_counter[9]} {Aquila_SoC/RISCV_CORE0/total_counter[10]} {Aquila_SoC/RISCV_CORE0/total_counter[11]} {Aquila_SoC/RISCV_CORE0/total_counter[12]} {Aquila_SoC/RISCV_CORE0/total_counter[13]} {Aquila_SoC/RISCV_CORE0/total_counter[14]} {Aquila_SoC/RISCV_CORE0/total_counter[15]} {Aquila_SoC/RISCV_CORE0/total_counter[16]} {Aquila_SoC/RISCV_CORE0/total_counter[17]} {Aquila_SoC/RISCV_CORE0/total_counter[18]} {Aquila_SoC/RISCV_CORE0/total_counter[19]} {Aquila_SoC/RISCV_CORE0/total_counter[20]} {Aquila_SoC/RISCV_CORE0/total_counter[21]} {Aquila_SoC/RISCV_CORE0/total_counter[22]} {Aquila_SoC/RISCV_CORE0/total_counter[23]} {Aquila_SoC/RISCV_CORE0/total_counter[24]} {Aquila_SoC/RISCV_CORE0/total_counter[25]} {Aquila_SoC/RISCV_CORE0/total_counter[26]} {Aquila_SoC/RISCV_CORE0/total_counter[27]} {Aquila_SoC/RISCV_CORE0/total_counter[28]} {Aquila_SoC/RISCV_CORE0/total_counter[29]} {Aquila_SoC/RISCV_CORE0/total_counter[30]} {Aquila_SoC/RISCV_CORE0/total_counter[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 32 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list {Aquila_SoC/RISCV_CORE0/stall_counter3[0]} {Aquila_SoC/RISCV_CORE0/stall_counter3[1]} {Aquila_SoC/RISCV_CORE0/stall_counter3[2]} {Aquila_SoC/RISCV_CORE0/stall_counter3[3]} {Aquila_SoC/RISCV_CORE0/stall_counter3[4]} {Aquila_SoC/RISCV_CORE0/stall_counter3[5]} {Aquila_SoC/RISCV_CORE0/stall_counter3[6]} {Aquila_SoC/RISCV_CORE0/stall_counter3[7]} {Aquila_SoC/RISCV_CORE0/stall_counter3[8]} {Aquila_SoC/RISCV_CORE0/stall_counter3[9]} {Aquila_SoC/RISCV_CORE0/stall_counter3[10]} {Aquila_SoC/RISCV_CORE0/stall_counter3[11]} {Aquila_SoC/RISCV_CORE0/stall_counter3[12]} {Aquila_SoC/RISCV_CORE0/stall_counter3[13]} {Aquila_SoC/RISCV_CORE0/stall_counter3[14]} {Aquila_SoC/RISCV_CORE0/stall_counter3[15]} {Aquila_SoC/RISCV_CORE0/stall_counter3[16]} {Aquila_SoC/RISCV_CORE0/stall_counter3[17]} {Aquila_SoC/RISCV_CORE0/stall_counter3[18]} {Aquila_SoC/RISCV_CORE0/stall_counter3[19]} {Aquila_SoC/RISCV_CORE0/stall_counter3[20]} {Aquila_SoC/RISCV_CORE0/stall_counter3[21]} {Aquila_SoC/RISCV_CORE0/stall_counter3[22]} {Aquila_SoC/RISCV_CORE0/stall_counter3[23]} {Aquila_SoC/RISCV_CORE0/stall_counter3[24]} {Aquila_SoC/RISCV_CORE0/stall_counter3[25]} {Aquila_SoC/RISCV_CORE0/stall_counter3[26]} {Aquila_SoC/RISCV_CORE0/stall_counter3[27]} {Aquila_SoC/RISCV_CORE0/stall_counter3[28]} {Aquila_SoC/RISCV_CORE0/stall_counter3[29]} {Aquila_SoC/RISCV_CORE0/stall_counter3[30]} {Aquila_SoC/RISCV_CORE0/stall_counter3[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 32 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list {Aquila_SoC/RISCV_CORE0/stall_counter2[0]} {Aquila_SoC/RISCV_CORE0/stall_counter2[1]} {Aquila_SoC/RISCV_CORE0/stall_counter2[2]} {Aquila_SoC/RISCV_CORE0/stall_counter2[3]} {Aquila_SoC/RISCV_CORE0/stall_counter2[4]} {Aquila_SoC/RISCV_CORE0/stall_counter2[5]} {Aquila_SoC/RISCV_CORE0/stall_counter2[6]} {Aquila_SoC/RISCV_CORE0/stall_counter2[7]} {Aquila_SoC/RISCV_CORE0/stall_counter2[8]} {Aquila_SoC/RISCV_CORE0/stall_counter2[9]} {Aquila_SoC/RISCV_CORE0/stall_counter2[10]} {Aquila_SoC/RISCV_CORE0/stall_counter2[11]} {Aquila_SoC/RISCV_CORE0/stall_counter2[12]} {Aquila_SoC/RISCV_CORE0/stall_counter2[13]} {Aquila_SoC/RISCV_CORE0/stall_counter2[14]} {Aquila_SoC/RISCV_CORE0/stall_counter2[15]} {Aquila_SoC/RISCV_CORE0/stall_counter2[16]} {Aquila_SoC/RISCV_CORE0/stall_counter2[17]} {Aquila_SoC/RISCV_CORE0/stall_counter2[18]} {Aquila_SoC/RISCV_CORE0/stall_counter2[19]} {Aquila_SoC/RISCV_CORE0/stall_counter2[20]} {Aquila_SoC/RISCV_CORE0/stall_counter2[21]} {Aquila_SoC/RISCV_CORE0/stall_counter2[22]} {Aquila_SoC/RISCV_CORE0/stall_counter2[23]} {Aquila_SoC/RISCV_CORE0/stall_counter2[24]} {Aquila_SoC/RISCV_CORE0/stall_counter2[25]} {Aquila_SoC/RISCV_CORE0/stall_counter2[26]} {Aquila_SoC/RISCV_CORE0/stall_counter2[27]} {Aquila_SoC/RISCV_CORE0/stall_counter2[28]} {Aquila_SoC/RISCV_CORE0/stall_counter2[29]} {Aquila_SoC/RISCV_CORE0/stall_counter2[30]} {Aquila_SoC/RISCV_CORE0/stall_counter2[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list Aquila_SoC/data_rw_o]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list Aquila_SoC/RISCV_CORE0/my_profiler/start_point]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
