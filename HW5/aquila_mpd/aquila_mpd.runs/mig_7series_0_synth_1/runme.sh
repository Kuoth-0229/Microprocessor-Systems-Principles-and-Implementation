#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/tools/Xilinx/Vivado/2024.1/ids_lite/ISE/bin/lin64:/tools/Xilinx/Vivado/2024.1/bin
else
  PATH=/tools/Xilinx/Vivado/2024.1/ids_lite/ISE/bin/lin64:/tools/Xilinx/Vivado/2024.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/kuoth/school/mp/hw5/hw5_111550105/aquila_mpd/aquila_mpd.runs/mig_7series_0_synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log mig_7series_0.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source mig_7series_0.tcl
