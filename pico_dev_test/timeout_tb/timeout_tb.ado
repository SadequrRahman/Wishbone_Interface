setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/WorkingDir/Fpga/pico_dev_test/timeout_tb/timeout_tb.adf"]} { 
	design create timeout_tb "D:/WorkingDir/Fpga/pico_dev_test"
  set newDesign 1
}
design open "D:/WorkingDir/Fpga/pico_dev_test/timeout_tb"
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
addfile "D:/WorkingDir/Fpga/pico_dev_test/timeout_tb.vhd"
vlib "D:/WorkingDir/Fpga/pico_dev_test/timeout_tb/work"
set worklib work
adel -all
vcom -dbg -work work "D:/WorkingDir/Fpga/pico_dev_test/timeout.vhd"
vcom -dbg -work work "D:/WorkingDir/Fpga/pico_dev_test/timeout_tb.vhd"
entity timeout_tb
vsim  +access +r timeout_tb   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
