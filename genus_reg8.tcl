# Start genus in this folder, then:  source genus_reg8.tcl
set_db init_lib_search_path /home/install/FOUNDRY/digital/45nm/dig/lib
set_db init_hdl_search_path .
set_db library typical.lib
read_hdl reg8.v
elaborate reg8
set_db syn_generic_effort medium
set_db syn_map_effort medium
set_db syn_opt_effort medium
syn_generic
syn_map
syn_opt
report_timing -unconstrained > reg8_timing.rpt
report_power > reg8_power.rpt
report_area > reg8_area.rpt
gui_show
