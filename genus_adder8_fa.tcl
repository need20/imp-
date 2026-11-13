# Start genus in this folder, then:  source genus_adder8_fa.tcl
set_db init_lib_search_path /home/install/FOUNDRY/digital/45nm/dig/lib
set_db init_hdl_search_path .
set_db library typical.lib
read_hdl adder8_fa.v
elaborate EightbitAdder
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
report_timing -unconstrained > EightbitAdder_timing.rpt
report_power > EightbitAdder_power.rpt
report_area > EightbitAdder_area.rpt
gui_show
