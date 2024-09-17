# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Tue Sep 03 10:25:03 IST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design WA_8

set_load -pin_load 0.15 [get_ports {z[16]}]
set_load -pin_load 0.15 [get_ports {z[15]}]
set_load -pin_load 0.15 [get_ports {z[14]}]
set_load -pin_load 0.15 [get_ports {z[13]}]
set_load -pin_load 0.15 [get_ports {z[12]}]
set_load -pin_load 0.15 [get_ports {z[11]}]
set_load -pin_load 0.15 [get_ports {z[10]}]
set_load -pin_load 0.15 [get_ports {z[9]}]
set_load -pin_load 0.15 [get_ports {z[8]}]
set_load -pin_load 0.15 [get_ports {z[7]}]
set_load -pin_load 0.15 [get_ports {z[6]}]
set_load -pin_load 0.15 [get_ports {z[5]}]
set_load -pin_load 0.15 [get_ports {z[4]}]
set_load -pin_load 0.15 [get_ports {z[3]}]
set_load -pin_load 0.15 [get_ports {z[2]}]
set_load -pin_load 0.15 [get_ports {z[1]}]
set_load -pin_load 0.15 [get_ports {z[0]}]
set_clock_gating_check -setup 0.0 
set_input_delay -add_delay -max 0.8 [get_ports {x[7]}]
set_input_delay -add_delay -max 0.8 [get_ports {x[6]}]
set_input_delay -add_delay -max 0.8 [get_ports {x[5]}]
set_input_delay -add_delay -max 0.8 [get_ports {x[4]}]
set_input_delay -add_delay -max 0.8 [get_ports {x[3]}]
set_input_delay -add_delay -max 0.8 [get_ports {x[2]}]
set_input_delay -add_delay -max 0.8 [get_ports {x[1]}]
set_input_delay -add_delay -max 0.8 [get_ports {x[0]}]
set_input_delay -add_delay -max 0.8 [get_ports {y[7]}]
set_input_delay -add_delay -max 0.8 [get_ports {y[6]}]
set_input_delay -add_delay -max 0.8 [get_ports {y[5]}]
set_input_delay -add_delay -max 0.8 [get_ports {y[4]}]
set_input_delay -add_delay -max 0.8 [get_ports {y[3]}]
set_input_delay -add_delay -max 0.8 [get_ports {y[2]}]
set_input_delay -add_delay -max 0.8 [get_ports {y[1]}]
set_input_delay -add_delay -max 0.8 [get_ports {y[0]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[16]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[15]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[14]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[13]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[12]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[11]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[10]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[9]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[8]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[7]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[6]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[5]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[4]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[3]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[2]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[1]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[0]}]
set_max_fanout 20.000 [current_design]
set_input_transition 0.12 [get_ports {x[7]}]
set_input_transition 0.12 [get_ports {x[6]}]
set_input_transition 0.12 [get_ports {x[5]}]
set_input_transition 0.12 [get_ports {x[4]}]
set_input_transition 0.12 [get_ports {x[3]}]
set_input_transition 0.12 [get_ports {x[2]}]
set_input_transition 0.12 [get_ports {x[1]}]
set_input_transition 0.12 [get_ports {x[0]}]
set_input_transition 0.12 [get_ports {y[7]}]
set_input_transition 0.12 [get_ports {y[6]}]
set_input_transition 0.12 [get_ports {y[5]}]
set_input_transition 0.12 [get_ports {y[4]}]
set_input_transition 0.12 [get_ports {y[3]}]
set_input_transition 0.12 [get_ports {y[2]}]
set_input_transition 0.12 [get_ports {y[1]}]
set_input_transition 0.12 [get_ports {y[0]}]
set_wire_load_mode "enclosed"
