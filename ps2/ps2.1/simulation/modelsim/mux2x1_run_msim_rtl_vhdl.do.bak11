transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Anuya/manthan/npteldsdlol/ps2/ps2.1/mux2X1.vhdl}
vcom -93 -work work {C:/Users/Anuya/manthan/npteldsdlol/ps2/ps2.1/Gates.vhdl}
vcom -93 -work work {C:/Users/Anuya/manthan/npteldsdlol/ps2/ps2.1/DUT.vhdl}

vcom -93 -work work {C:/Users/Anuya/manthan/npteldsdlol/ps2/ps2.1/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
