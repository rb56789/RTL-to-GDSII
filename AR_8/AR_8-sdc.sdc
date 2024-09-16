# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Tue Sep 03 14:55:05 IST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design AR_8

set_load -pin_load 0.15 [get_ports {k[15]}]
set_load -pin_load 0.15 [get_ports {k[14]}]
set_load -pin_load 0.15 [get_ports {k[13]}]
set_load -pin_load 0.15 [get_ports {k[12]}]
set_load -pin_load 0.15 [get_ports {k[11]}]
set_load -pin_load 0.15 [get_ports {k[10]}]
set_load -pin_load 0.15 [get_ports {k[9]}]
set_load -pin_load 0.15 [get_ports {k[8]}]
set_load -pin_load 0.15 [get_ports {k[7]}]
set_load -pin_load 0.15 [get_ports {k[6]}]
set_load -pin_load 0.15 [get_ports {k[5]}]
set_load -pin_load 0.15 [get_ports {k[4]}]
set_load -pin_load 0.15 [get_ports {k[3]}]
set_load -pin_load 0.15 [get_ports {k[2]}]
set_load -pin_load 0.15 [get_ports {k[1]}]
set_load -pin_load 0.15 [get_ports {k[0]}]
set_clock_gating_check -setup 0.0 
set_input_delay -add_delay -max 0.8 [get_ports {a[7]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[6]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[5]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[4]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[3]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[2]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[1]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[0]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[7]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[6]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[5]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[4]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[3]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[2]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[1]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[0]}]
set_output_delay -add_delay -max 0.8 [get_ports {k[15]}]
set_output_delay -add_delay -max 0.8 [get_ports {k[14]}]
set_output_delay -add_delay -max 0.8 [get_ports {k[13]}]
set_output_delay -add_delay -max 0.8 [get_ports {k[12]}]
set_output_delay -add_delay -max 0.8 [get_ports {k[11]}]
set_output_delay -add_delay -max 0.8 [get_ports {k[10]}]
set_output_delay -add_delay -max 0.8 [get_ports {k[9]}]
set_output_delay -add_delay -max 0.8 [get_ports {k[8]}]
set_output_delay -add_delay -max 0.8 [get_ports {k[7]}]
set_output_delay -add_delay -max 0.8 [get_ports {k[6]}]
set_output_delay -add_delay -max 0.8 [get_ports {k[5]}]
set_output_delay -add_delay -max 0.8 [get_ports {k[4]}]
set_output_delay -add_delay -max 0.8 [get_ports {k[3]}]
set_output_delay -add_delay -max 0.8 [get_ports {k[2]}]
set_output_delay -add_delay -max 0.8 [get_ports {k[1]}]
set_output_delay -add_delay -max 0.8 [get_ports {k[0]}]
set_max_fanout 20.000 [current_design]
set_input_transition 0.12 [get_ports {a[7]}]
set_input_transition 0.12 [get_ports {a[6]}]
set_input_transition 0.12 [get_ports {a[5]}]
set_input_transition 0.12 [get_ports {a[4]}]
set_input_transition 0.12 [get_ports {a[3]}]
set_input_transition 0.12 [get_ports {a[2]}]
set_input_transition 0.12 [get_ports {a[1]}]
set_input_transition 0.12 [get_ports {a[0]}]
set_input_transition 0.12 [get_ports {b[7]}]
set_input_transition 0.12 [get_ports {b[6]}]
set_input_transition 0.12 [get_ports {b[5]}]
set_input_transition 0.12 [get_ports {b[4]}]
set_input_transition 0.12 [get_ports {b[3]}]
set_input_transition 0.12 [get_ports {b[2]}]
set_input_transition 0.12 [get_ports {b[1]}]
set_input_transition 0.12 [get_ports {b[0]}]
set_wire_load_mode "enclosed"
