# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Tue Sep 03 15:31:15 IST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design DA_32

set_load -pin_load 0.15 [get_ports {z[63]}]
set_load -pin_load 0.15 [get_ports {z[62]}]
set_load -pin_load 0.15 [get_ports {z[61]}]
set_load -pin_load 0.15 [get_ports {z[60]}]
set_load -pin_load 0.15 [get_ports {z[59]}]
set_load -pin_load 0.15 [get_ports {z[58]}]
set_load -pin_load 0.15 [get_ports {z[57]}]
set_load -pin_load 0.15 [get_ports {z[56]}]
set_load -pin_load 0.15 [get_ports {z[55]}]
set_load -pin_load 0.15 [get_ports {z[54]}]
set_load -pin_load 0.15 [get_ports {z[53]}]
set_load -pin_load 0.15 [get_ports {z[52]}]
set_load -pin_load 0.15 [get_ports {z[51]}]
set_load -pin_load 0.15 [get_ports {z[50]}]
set_load -pin_load 0.15 [get_ports {z[49]}]
set_load -pin_load 0.15 [get_ports {z[48]}]
set_load -pin_load 0.15 [get_ports {z[47]}]
set_load -pin_load 0.15 [get_ports {z[46]}]
set_load -pin_load 0.15 [get_ports {z[45]}]
set_load -pin_load 0.15 [get_ports {z[44]}]
set_load -pin_load 0.15 [get_ports {z[43]}]
set_load -pin_load 0.15 [get_ports {z[42]}]
set_load -pin_load 0.15 [get_ports {z[41]}]
set_load -pin_load 0.15 [get_ports {z[40]}]
set_load -pin_load 0.15 [get_ports {z[39]}]
set_load -pin_load 0.15 [get_ports {z[38]}]
set_load -pin_load 0.15 [get_ports {z[37]}]
set_load -pin_load 0.15 [get_ports {z[36]}]
set_load -pin_load 0.15 [get_ports {z[35]}]
set_load -pin_load 0.15 [get_ports {z[34]}]
set_load -pin_load 0.15 [get_ports {z[33]}]
set_load -pin_load 0.15 [get_ports {z[32]}]
set_load -pin_load 0.15 [get_ports {z[31]}]
set_load -pin_load 0.15 [get_ports {z[30]}]
set_load -pin_load 0.15 [get_ports {z[29]}]
set_load -pin_load 0.15 [get_ports {z[28]}]
set_load -pin_load 0.15 [get_ports {z[27]}]
set_load -pin_load 0.15 [get_ports {z[26]}]
set_load -pin_load 0.15 [get_ports {z[25]}]
set_load -pin_load 0.15 [get_ports {z[24]}]
set_load -pin_load 0.15 [get_ports {z[23]}]
set_load -pin_load 0.15 [get_ports {z[22]}]
set_load -pin_load 0.15 [get_ports {z[21]}]
set_load -pin_load 0.15 [get_ports {z[20]}]
set_load -pin_load 0.15 [get_ports {z[19]}]
set_load -pin_load 0.15 [get_ports {z[18]}]
set_load -pin_load 0.15 [get_ports {z[17]}]
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
set_input_delay -add_delay -max 0.8 [get_ports {a[31]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[30]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[29]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[28]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[27]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[26]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[25]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[24]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[23]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[22]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[21]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[20]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[19]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[18]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[17]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[16]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[15]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[14]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[13]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[12]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[11]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[10]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[9]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[8]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[7]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[6]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[5]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[4]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[3]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[2]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[1]}]
set_input_delay -add_delay -max 0.8 [get_ports {a[0]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[31]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[30]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[29]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[28]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[27]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[26]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[25]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[24]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[23]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[22]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[21]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[20]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[19]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[18]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[17]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[16]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[15]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[14]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[13]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[12]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[11]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[10]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[9]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[8]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[7]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[6]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[5]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[4]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[3]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[2]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[1]}]
set_input_delay -add_delay -max 0.8 [get_ports {b[0]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[63]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[62]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[61]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[60]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[59]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[58]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[57]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[56]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[55]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[54]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[53]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[52]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[51]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[50]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[49]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[48]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[47]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[46]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[45]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[44]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[43]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[42]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[41]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[40]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[39]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[38]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[37]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[36]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[35]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[34]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[33]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[32]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[31]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[30]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[29]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[28]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[27]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[26]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[25]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[24]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[23]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[22]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[21]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[20]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[19]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[18]}]
set_output_delay -add_delay -max 0.8 [get_ports {z[17]}]
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
set_input_transition 0.12 [get_ports {a[31]}]
set_input_transition 0.12 [get_ports {a[30]}]
set_input_transition 0.12 [get_ports {a[29]}]
set_input_transition 0.12 [get_ports {a[28]}]
set_input_transition 0.12 [get_ports {a[27]}]
set_input_transition 0.12 [get_ports {a[26]}]
set_input_transition 0.12 [get_ports {a[25]}]
set_input_transition 0.12 [get_ports {a[24]}]
set_input_transition 0.12 [get_ports {a[23]}]
set_input_transition 0.12 [get_ports {a[22]}]
set_input_transition 0.12 [get_ports {a[21]}]
set_input_transition 0.12 [get_ports {a[20]}]
set_input_transition 0.12 [get_ports {a[19]}]
set_input_transition 0.12 [get_ports {a[18]}]
set_input_transition 0.12 [get_ports {a[17]}]
set_input_transition 0.12 [get_ports {a[16]}]
set_input_transition 0.12 [get_ports {a[15]}]
set_input_transition 0.12 [get_ports {a[14]}]
set_input_transition 0.12 [get_ports {a[13]}]
set_input_transition 0.12 [get_ports {a[12]}]
set_input_transition 0.12 [get_ports {a[11]}]
set_input_transition 0.12 [get_ports {a[10]}]
set_input_transition 0.12 [get_ports {a[9]}]
set_input_transition 0.12 [get_ports {a[8]}]
set_input_transition 0.12 [get_ports {a[7]}]
set_input_transition 0.12 [get_ports {a[6]}]
set_input_transition 0.12 [get_ports {a[5]}]
set_input_transition 0.12 [get_ports {a[4]}]
set_input_transition 0.12 [get_ports {a[3]}]
set_input_transition 0.12 [get_ports {a[2]}]
set_input_transition 0.12 [get_ports {a[1]}]
set_input_transition 0.12 [get_ports {a[0]}]
set_input_transition 0.12 [get_ports {b[31]}]
set_input_transition 0.12 [get_ports {b[30]}]
set_input_transition 0.12 [get_ports {b[29]}]
set_input_transition 0.12 [get_ports {b[28]}]
set_input_transition 0.12 [get_ports {b[27]}]
set_input_transition 0.12 [get_ports {b[26]}]
set_input_transition 0.12 [get_ports {b[25]}]
set_input_transition 0.12 [get_ports {b[24]}]
set_input_transition 0.12 [get_ports {b[23]}]
set_input_transition 0.12 [get_ports {b[22]}]
set_input_transition 0.12 [get_ports {b[21]}]
set_input_transition 0.12 [get_ports {b[20]}]
set_input_transition 0.12 [get_ports {b[19]}]
set_input_transition 0.12 [get_ports {b[18]}]
set_input_transition 0.12 [get_ports {b[17]}]
set_input_transition 0.12 [get_ports {b[16]}]
set_input_transition 0.12 [get_ports {b[15]}]
set_input_transition 0.12 [get_ports {b[14]}]
set_input_transition 0.12 [get_ports {b[13]}]
set_input_transition 0.12 [get_ports {b[12]}]
set_input_transition 0.12 [get_ports {b[11]}]
set_input_transition 0.12 [get_ports {b[10]}]
set_input_transition 0.12 [get_ports {b[9]}]
set_input_transition 0.12 [get_ports {b[8]}]
set_input_transition 0.12 [get_ports {b[7]}]
set_input_transition 0.12 [get_ports {b[6]}]
set_input_transition 0.12 [get_ports {b[5]}]
set_input_transition 0.12 [get_ports {b[4]}]
set_input_transition 0.12 [get_ports {b[3]}]
set_input_transition 0.12 [get_ports {b[2]}]
set_input_transition 0.12 [get_ports {b[1]}]
set_input_transition 0.12 [get_ports {b[0]}]
set_wire_load_mode "enclosed"
