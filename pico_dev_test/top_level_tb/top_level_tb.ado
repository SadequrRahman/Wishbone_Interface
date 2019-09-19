setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/WorkingDir/Fpga/pico_dev_test/top_level_tb/top_level_tb.adf"]} { 
	design create top_level_tb "D:/WorkingDir/Fpga/pico_dev_test"
  set newDesign 1
}
design open "D:/WorkingDir/Fpga/pico_dev_test/top_level_tb"
cd "D:/WorkingDir/Fpga/pico_dev_test"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "D:/WorkingDir/Fpga/pico_dev_test/i2c_interface/source/i2c_master_controller.vhd"
addfile "D:/WorkingDir/Fpga/pico_dev_test/timeout.vhd"
addfile "D:/WorkingDir/Fpga/pico_dev_test/efb_i2c_VHDL.vhd"
addfile "D:/WorkingDir/Fpga/pico_dev_test/wb_manager.vhd"
addfile "D:/WorkingDir/Fpga/pico_dev_test/HeartBeat.vhd"
addfile "D:/WorkingDir/Fpga/pico_dev_test/top_level.vhd"
addfile "D:/WorkingDir/Fpga/pico_dev_test/top_level_tb.vhd"
vlib "D:/WorkingDir/Fpga/pico_dev_test/top_level_tb/work"
set worklib work
adel -all
vcom -dbg -work work "D:/WorkingDir/Fpga/pico_dev_test/i2c_interface/source/i2c_master_controller.vhd"
vcom -dbg -work work "D:/WorkingDir/Fpga/pico_dev_test/timeout.vhd"
vcom -dbg -work work "D:/WorkingDir/Fpga/pico_dev_test/efb_i2c_VHDL.vhd"
vcom -dbg -work work "D:/WorkingDir/Fpga/pico_dev_test/wb_manager.vhd"
vcom -dbg -work work "D:/WorkingDir/Fpga/pico_dev_test/HeartBeat.vhd"
vcom -dbg -work work "D:/WorkingDir/Fpga/pico_dev_test/top_level.vhd"
vcom -dbg "D:/WorkingDir/Fpga/pico_dev_test/top_level_tb.vhd"
entity top_level_tb
vsim  +access +r top_level_tb   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
