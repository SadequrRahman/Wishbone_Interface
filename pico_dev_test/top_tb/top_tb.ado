setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "D:/WorkingDir/top_tb/top_tb.adf"]} { 
	design create top_tb "D:/WorkingDir"
  set newDesign 1
}
design open "D:/WorkingDir/top_tb"
cd "D:/WorkingDir"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "D:/WorkingDir/top_level.vhd"
vlib "D:/WorkingDir/top_tb/work"
set worklib work
adel -all
vcom -dbg -work work "D:/WorkingDir/top_level.vhd"
entity top
vsim  +access +r top   -PL pmi_work -L ovi_machxo2
add wave *
run 1000ns
