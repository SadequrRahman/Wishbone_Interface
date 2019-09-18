setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/WorkingDir/Fpga/pico_dev_test/wb_manager_tb/wb_manager_tb.adf"]} { 
	design create wb_manager_tb "D:/WorkingDir/Fpga/pico_dev_test"
  set newDesign 1
}
design open "D:/WorkingDir/Fpga/pico_dev_test/wb_manager_tb"
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
addfile "D:/WorkingDir/Fpga/pico_dev_test/timeout.vhd"
addfile "D:/WorkingDir/Fpga/pico_dev_test/efb_i2c_VHDL.vhd"
addfile "D:/WorkingDir/Fpga/pico_dev_test/wb_manager.vhd"
addfile "D:/WorkingDir/Fpga/pico_dev_test/wb_manager_tb.vhd"
vlib "D:/WorkingDir/Fpga/pico_dev_test/wb_manager_tb/work"
set worklib work
adel -all
vcom -dbg "D:/WorkingDir/Fpga/pico_dev_test/timeout.vhd"
vcom -dbg -work work "D:/WorkingDir/Fpga/pico_dev_test/efb_i2c_VHDL.vhd"
vcom -dbg -work work "D:/WorkingDir/Fpga/pico_dev_test/wb_manager.vhd"
vcom -dbg -work work "D:/WorkingDir/Fpga/pico_dev_test/wb_manager_tb.vhd"
entity wb_manager_tb
vsim  +access +r wb_manager_tb   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
