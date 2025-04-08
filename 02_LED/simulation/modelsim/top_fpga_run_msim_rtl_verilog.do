transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/lisimo/Desktop/FPGA_Proj/LED {C:/Users/lisimo/Desktop/FPGA_Proj/LED/top_fpga.v}

vlog -vlog01compat -work work +incdir+C:/Users/lisimo/Desktop/FPGA_Proj/LED/simulation/modelsim {C:/Users/lisimo/Desktop/FPGA_Proj/LED/simulation/modelsim/top_fpga.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  top_fpga_vlg_tst

add wave *
view structure
view signals
run 4 sec
