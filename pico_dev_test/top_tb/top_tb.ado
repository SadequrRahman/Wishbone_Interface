setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "F:/TUHH/HiWi/FPGA/git_workDir/pico_dev_test/top_tb/top_tb.adf"]} { 
	design create top_tb "F:/TUHH/HiWi/FPGA/git_workDir/pico_dev_test"
  set newDesign 1
}
design open "F:/TUHH/HiWi/FPGA/git_workDir/pico_dev_test/top_tb"
cd "F:/TUHH/HiWi/FPGA/git_workDir/pico_dev_test"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "F:/TUHH/HiWi/FPGA/git_workDir/pico_dev_test/top_level.vhd"
vlib "F:/TUHH/HiWi/FPGA/git_workDir/pico_dev_test/top_tb/work"
set worklib work
adel -all
vcom -dbg -work work "F:/TUHH/HiWi/FPGA/git_workDir/pico_dev_test/top_level.vhd"
entity top
vsim  +access +r top   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
