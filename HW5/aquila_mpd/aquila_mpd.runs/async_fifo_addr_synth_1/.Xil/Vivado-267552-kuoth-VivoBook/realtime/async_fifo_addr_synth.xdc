set_property SRC_FILE_INFO {cfile:/home/kuoth/school/mp/hw5/hw5_111550105/aquila_mpd/aquila_mpd.gen/sources_1/ip/async_fifo_addr/async_fifo_addr_ooc.xdc rfile:../../../../../aquila_mpd.gen/sources_1/ip/async_fifo_addr/async_fifo_addr_ooc.xdc id:1 order:EARLY scoped_inst:U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/kuoth/school/mp/hw5/hw5_111550105/aquila_mpd/aquila_mpd.runs/async_fifo_addr_synth_1/dont_touch.xdc rfile:../../../dont_touch.xdc id:2} [current_design]
set_property SRC_FILE_INFO {cfile:/home/kuoth/school/mp/hw5/hw5_111550105/aquila_mpd/aquila_mpd.gen/sources_1/ip/async_fifo_addr/async_fifo_addr_clocks.xdc rfile:../../../../../aquila_mpd.gen/sources_1/ip/async_fifo_addr/async_fifo_addr_clocks.xdc id:3 order:LATE scoped_inst:U0} [current_design]
set_property SRC_FILE_INFO {cfile:/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl rfile:../../../../../../../../../../../../tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl id:4 order:LATE scoped_inst:U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:/tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl rfile:../../../../../../../../../../../../tools/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl id:5 order:LATE scoped_inst:U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst unmanaged:yes} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:55 export:INPUT save:INPUT read:FILTER_OUT_OF_CONTEXT} [current_design]
create_clock -period 10.000 -name wr_clk [get_ports wr_clk]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:FILTER_OUT_OF_CONTEXT} [current_design]
create_clock -period 10.000 -name rd_clk [get_ports rd_clk]
set_property src_info {type:XDC file:2 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property KEEP_HIERARCHY SOFT [get_cells U0]
set_property src_info {type:SCOPED_XDC file:3 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_pins [list U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_fb_i_reg/C \
          U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwas.wsts/ram_full_i_reg/C \
          U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM_reg/WCLK \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst/dest_graysync_ff_reg[0][0]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst/dest_graysync_ff_reg[0][1]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst/dest_graysync_ff_reg[0][2]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst/dest_graysync_ff_reg[0][3]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst/dest_graysync_ff_reg[1][0]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst/dest_graysync_ff_reg[1][1]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst/dest_graysync_ff_reg[1][2]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst/dest_graysync_ff_reg[1][3]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst/dest_graysync_ff_reg[2][0]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst/dest_graysync_ff_reg[2][1]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst/dest_graysync_ff_reg[2][2]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst/dest_graysync_ff_reg[2][3]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst/dest_out_bin_ff_reg[0]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst/dest_out_bin_ff_reg[1]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst/dest_out_bin_ff_reg[2]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst/dest_out_bin_ff_reg[3]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst/src_gray_ff_reg[0]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst/src_gray_ff_reg[1]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst/src_gray_ff_reg[2]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst/src_gray_ff_reg[3]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gic0.gc0.count_d1_reg[0]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gic0.gc0.count_d1_reg[1]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gic0.gc0.count_d1_reg[2]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gic0.gc0.count_d1_reg[3]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gic0.gc0.count_d2_reg[0]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gic0.gc0.count_d2_reg[1]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gic0.gc0.count_d2_reg[2]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gic0.gc0.count_d2_reg[3]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gic0.gc0.count_reg[0]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gic0.gc0.count_reg[1]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gic0.gc0.count_reg[2]/C} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/wpntr/gic0.gc0.count_reg[3]/C}]] -to [get_cells [list {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[0]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[10]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[11]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[12]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[13]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[14]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[15]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[16]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[17]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[18]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[19]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[1]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[20]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[21]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[22]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[23]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[24]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[25]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[26]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[27]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[28]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[29]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[2]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[30]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[31]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[3]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[4]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[5]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[6]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[7]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[8]} \
          {U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/gpr1.dout_i_reg[9]}]]
current_instance U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst
set_property src_info {type:SCOPED_XDC file:4 line:16 export:INPUT save:NONE read:READ} [current_design]
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 10.000
current_instance
current_instance U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst
set_property src_info {type:SCOPED_XDC file:5 line:16 export:INPUT save:NONE read:READ} [current_design]
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 10.000
current_instance
set_property src_info {type:TCL file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
set_property KEEP_HIERARCHY SOFT [get_cells U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst]
set_property src_info {type:TCL file:{} line:-1 export:INPUT save:INPUT read:READ} [current_design]
set_property KEEP_HIERARCHY SOFT [get_cells U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst]
