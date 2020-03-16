
# (C) 2001-2019 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 18.1 625 win32 2019.12.01.19:54:55

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     Computer_System
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries
# and the Quartus-generated IP in your project, along with your design and
# testbench files, follow the guidelines below.
# 
# 1) Copy the shell script text from the TOP-LEVEL TEMPLATE section
# below into a new file, e.g. named "vcs_sim.sh".
# 
# 2) Copy the text from the DESIGN FILE LIST & OPTIONS TEMPLATE section into
# a separate file, e.g. named "filelist.f".
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # TOP_LEVEL_NAME is used in the Quartus-generated IP simulation script to
# # set the top-level simulation or testbench module/entity name.
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator.
# #
# # Source the Quartus-generated IP simulation script and do the following:
# # - Compile the Quartus EDA simulation library and IP simulation files.
# # - Specify TOP_LEVEL_NAME and QSYS_SIMDIR.
# # - Compile the design and top-level simulation module/entity using
# #   information specified in "filelist.f".
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# # - Run the simulation.
# #
# source <script generation output directory>/synopsys/vcs/vcs_setup.sh \
# TOP_LEVEL_NAME=<simulation top> \
# QSYS_SIMDIR=<script generation output directory> \
# USER_DEFINED_ELAB_OPTIONS="\"-f filelist.f\"" \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# ----------------------------------------
# # DESIGN FILE LIST & OPTIONS TEMPLATE - BEGIN
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the Quartus-generated IP simulation script)
# #
# +systemverilogext+.sv
# <design and testbench files, compile-time options, elaboration options>
# #
# # DESIGN FILE LIST & OPTIONS TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If Computer_System is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 18.1 625 win32 2019.12.01.19:54:55
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="Computer_System"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="C:/intelfpga/18.1/quartus/"
SKIP_FILE_COPY=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# copy RAM/ROM files to simulation directory

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hmi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hssi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_pcie_hip_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v \
  $QSYS_SIMDIR/submodules/verbosity_pkg.sv \
  $QSYS_SIMDIR/submodules/avalon_utilities_pkg.sv \
  $QSYS_SIMDIR/submodules/avalon_mm_pkg.sv \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_1_avalon_st_adapter_error_adapter_0.sv \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv \
  $QSYS_SIMDIR/submodules/Computer_System_Audio_Subsystem_Audio_PLL_audio_pll.vo \
  $QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv \
  $QSYS_SIMDIR/submodules/Computer_System_ARM_A9_HPS_hps_io_border_memory.sv \
  $QSYS_SIMDIR/submodules/Computer_System_ARM_A9_HPS_hps_io_border_hps_io.sv \
  $QSYS_SIMDIR/submodules/Computer_System_ARM_A9_HPS_hps_io_border.sv \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_1_avalon_st_adapter.v \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_1_rsp_mux.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_1_rsp_demux.sv \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_1_cmd_mux.sv \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_1_cmd_demux.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v \
  $QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_1_router_002.sv \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_1_router.sv \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_0_avalon_st_adapter.v \
  $QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_0_rsp_mux.sv \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_0_rsp_demux.sv \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_0_cmd_mux.sv \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_0_cmd_demux.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_uncmpr.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_13_1.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_new.sv \
  $QSYS_SIMDIR/submodules/altera_incr_burst_converter.sv \
  $QSYS_SIMDIR/submodules/altera_wrap_burst_converter.sv \
  $QSYS_SIMDIR/submodules/altera_default_burst_converter.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_0_router_004.sv \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_0_router_002.sv \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_0_router.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_axi_master_ni.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv \
  $QSYS_SIMDIR/submodules/altera_up_avalon_reset_from_locked_signal.v \
  $QSYS_SIMDIR/submodules/Computer_System_System_PLL_sys_pll.vo \
  $QSYS_SIMDIR/submodules/Computer_System_Audio_Subsystem_Audio_PLL.v \
  $QSYS_SIMDIR/submodules/altera_up_audio_bit_counter.v \
  $QSYS_SIMDIR/submodules/altera_up_audio_in_deserializer.v \
  $QSYS_SIMDIR/submodules/altera_up_audio_out_serializer.v \
  $QSYS_SIMDIR/submodules/altera_up_clock_edge.v \
  $QSYS_SIMDIR/submodules/altera_up_sync_fifo.v \
  $QSYS_SIMDIR/submodules/Computer_System_Audio_Subsystem_Audio.v \
  $QSYS_SIMDIR/submodules/Computer_System_ARM_A9_HPS_hps_io.v \
  $QSYS_SIMDIR/submodules/questa_mvc_svapi.svh \
  $QSYS_SIMDIR/submodules/mgc_common_axi.sv \
  $QSYS_SIMDIR/submodules/mgc_axi_master.sv \
  $QSYS_SIMDIR/submodules/mgc_axi_slave.sv \
  $QSYS_SIMDIR/submodules/Computer_System_ARM_A9_HPS_fpga_interfaces_f2h_stm_hw_events.sv \
  $QSYS_SIMDIR/submodules/Computer_System_ARM_A9_HPS_fpga_interfaces.sv \
  $QSYS_SIMDIR/submodules/altera_reset_controller.v \
  $QSYS_SIMDIR/submodules/altera_reset_synchronizer.v \
  $QSYS_SIMDIR/submodules/Computer_System_irq_mapper_001.sv \
  $QSYS_SIMDIR/submodules/Computer_System_irq_mapper.sv \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_3.v \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_2.v \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_1.v \
  $QSYS_SIMDIR/submodules/Computer_System_mm_interconnect_0.v \
  $QSYS_SIMDIR/submodules/Computer_System_sdram2module.v \
  $QSYS_SIMDIR/submodules/Computer_System_s2m_fifo.v \
  $QSYS_SIMDIR/submodules/Computer_System_pll_0.vo \
  $QSYS_SIMDIR/submodules/Computer_System_module2sdram.v \
  $QSYS_SIMDIR/submodules/Computer_System_m2s_fifo.v \
  $QSYS_SIMDIR/submodules/Computer_System_System_PLL.v \
  $QSYS_SIMDIR/submodules/Computer_System_Slider_Switches.v \
  $QSYS_SIMDIR/submodules/Computer_System_SDRAM.v \
  $QSYS_SIMDIR/submodules/Computer_System_Pushbuttons.v \
  $QSYS_SIMDIR/submodules/Computer_System_LEDs.v \
  $QSYS_SIMDIR/submodules/Computer_System_HEX5_HEX4.v \
  $QSYS_SIMDIR/submodules/Computer_System_HEX3_HEX0.v \
  $QSYS_SIMDIR/submodules/Computer_System_Audio_Subsystem.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_serial_bus_controller.v \
  $QSYS_SIMDIR/submodules/altera_up_slow_clock_generator.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_dc2.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_d5m.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_lcm.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ltm.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de1_soc.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2_115.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de2i_150.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_de10_standard.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_audio.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7180.v \
  $QSYS_SIMDIR/submodules/altera_up_av_config_auto_init_ob_adv7181.v \
  $QSYS_SIMDIR/submodules/Computer_System_AV_Config.v \
  $QSYS_SIMDIR/submodules/Computer_System_ARM_A9_HPS.v \
  $QSYS_SIMDIR/Computer_System.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
