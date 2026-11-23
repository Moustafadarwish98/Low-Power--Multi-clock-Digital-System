
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP
set top_module_netlist SYS_TOP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
# Library
lappend search_path /home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys

# RTL Folders
lappend search_path /home/IC/Projects/System/Backend_RTL/16_bit_ALU
lappend search_path /home/IC/Projects/System/Backend_RTL/Asynchronous_FIFO
lappend search_path /home/IC/Projects/System/Backend_RTL/Clock_Divider
lappend search_path /home/IC/Projects/System/Backend_RTL/Clock_Divider_Mux
lappend search_path /home/IC/Projects/System/Backend_RTL/Clock_gating
lappend search_path /home/IC/Projects/System/Backend_RTL/Data_Synchronizer
lappend search_path /home/IC/Projects/System/Backend_RTL/Pulse_gen
lappend search_path /home/IC/Projects/System/Backend_RTL/RegFile
lappend search_path /home/IC/Projects/System/Backend_RTL/Reset_Synchronizer
lappend search_path /home/IC/Projects/System/Backend_RTL/System_control
lappend search_path /home/IC/Projects/System/Backend_RTL/System_Wrapper_DFT
lappend search_path /home/IC/Projects/System/Backend_RTL/UART
lappend search_path /home/IC/Projects/System/Backend_RTL/UART_RX
lappend search_path /home/IC/Projects/System/Backend_RTL/UART_TX
lappend search_path /home/IC/Projects/System/Backend_RTL/mux2x1


set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format  verilog
set file_format2 sverilog

# Analyze source files
# mux2x1
analyze -format $file_format mux2x1.v
# System TOP
analyze -format $file_format SYS_TOP.v
# System controller
analyze -format $file_format2 system_control.sv
# UART TOP
analyze -format $file_format  UART_top.v
# UART TX
analyze -format $file_format2 UART_tx_top.sv
analyze -format $file_format2 FSM_tx.sv
analyze -format $file_format2 mux.v
analyze -format $file_format2 parity_calc.v
analyze -format $file_format2 serializer.v
# UART RX
analyze -format $file_format2  data_sampling.sv
analyze -format $file_format  deserializer.v
analyze -format $file_format  edge_bit_counter.v
analyze -format $file_format2 FSM.sv
analyze -format $file_format  parity_check.v
analyze -format $file_format  stop_check.v
analyze -format $file_format  start_check.v
analyze -format $file_format  UART_rx_top.v
# Clock divider
analyze -format $file_format  clk_div.v
# Clock gating
analyze -format $file_format  clk_gating.v
# Clock Div mux
analyze -format $file_format  clk_div_mux.v
# Data synchronizer
analyze -format $file_format  data_sync.v
# Pulse generator
analyze -format $file_format pulse_gen.v
# Reset synchronizer
analyze -format $file_format  reset_sync.v
# ALU
analyze -format $file_format  ALU_16b.v
# FIFO
analyze -format $file_format  FIFO_mem.v
analyze -format $file_format  read_control.v
analyze -format $file_format  write_control.v
analyze -format $file_format  synchronizer.v
analyze -format $file_format  FIFO_top.v
# Register file
analyze -format $file_format  registerfile.v

# Elaborate
elaborate -lib WORK SYS_TOP
###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

file mkdir reports

check_design > reports/check_design.rpt

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./cons.tcl

#################### Archirecture Scan Chains #########################
puts "###############################################"
puts "############ Configure scan chains ############"
puts "###############################################"

set_scan_configuration \
  -clock_mixing no_mix \
  -style multiplexed_flip_flop \
  -replace true \
  -max_length 100 

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

#test_ready compile
compile -scan

################################################################### 
# Setting Test Timing Variables
################################################################### 

# Preclock Measure Protocol (default protocol)
set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

########################## Define DFT Signals ##########################
set_dft_signal -port [get_ports scan_clk]  -type ScanClock   -view existing_dft  -timing {30 60}
set_dft_signal -port [get_ports scan_rst]  -type Reset       -view existing_dft  -active_state 0
set_dft_signal -port [get_ports test_mode] -type Constant    -view existing_dft  -active_state 1 
set_dft_signal -port [get_ports test_mode] -type TestMode    -view spec          -active_state 1 
set_dft_signal -port [get_ports SE]        -type ScanEnable  -view spec          -active_state 1   -usage scan
set_dft_signal -port [get_ports SI]        -type ScanDataIn  -view spec 
set_dft_signal -port [get_ports SO]        -type ScanDataOut -view spec 

############################# Create Test Protocol #####################

create_test_protocol
                            
###################### Pre-DFT Design Rule Checking ####################

dft_drc -verbose

############################# Preview DFT ##############################

preview_dft -show scan_summary

############################# Insert DFT ###############################

insert_dft

######################## Optimize Logic post DFT #######################

compile -scan -incremental

###################### Design Rule Checking post DFT ###################

dft_drc -verbose -coverage_estimate

##################### Close Formality Setup file ###########################

set_svf -off
#############################################################################
# Create output directories
#############################################################################
file mkdir netlists
file mkdir sdf
file mkdir sdc

#############################################################################
# Write out files
#############################################################################
#Avoid Writing assign statements in the netlist
change_name -hier -rule verilog
write_file -format verilog -hierarchy -output netlists/$top_module_netlist.ddc
write_file -format verilog -hierarchy -output netlists/$top_module_netlist.v
write_sdf  sdf/$top_module.sdf
write_sdc  -nosplit sdc/$top_module.sdc

####################### reporting ##########################################

report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -delay_type min > reports/hold.rpt
report_timing -delay_type max > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators -nosplit > reports/constraints.rpt
dft_drc -verbose -coverage_estimate > dft_coverage.rpt

################# starting graphical user interface #######################

#gui_start

#exit
