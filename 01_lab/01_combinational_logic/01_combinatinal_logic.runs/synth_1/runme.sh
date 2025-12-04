#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/woodong-notebook/tools/xilinx/Vitis/2024.1/bin:/home/woodong-notebook/tools/xilinx/Vivado/2024.1/ids_lite/ISE/bin/lin64:/home/woodong-notebook/tools/xilinx/Vivado/2024.1/bin
else
  PATH=/home/woodong-notebook/tools/xilinx/Vitis/2024.1/bin:/home/woodong-notebook/tools/xilinx/Vivado/2024.1/ids_lite/ISE/bin/lin64:/home/woodong-notebook/tools/xilinx/Vivado/2024.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/woodong-notebook/workspace/05_verilog/01_lab/01_combinational_logic/01_combinatinal_logic.runs/synth_1'
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

EAStep vivado -log FND_top.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source FND_top.tcl
