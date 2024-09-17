# Cadence Genus(TM) Synthesis Solution, Version 21.14-s082_1, built Jun 23 2022 14:32:08

# Date: Wed Mar 20 16:39:11 2024
# Host: cadence_server (x86_64 w/Linux 3.10.0-1160.el7.x86_64) (4cores*8cpus*1physical cpu*Intel(R) Core(TM) i5-8365U CPU @ 1.60GHz 6144KB)
# OS:   CentOS Linux release 7.9.2009 (Core)
set x 90nm
set y 8
set z DA_8
			set_db init_lib_search_path /home/install/FOUNDRY/digital/$x/dig/lib/
			set_db library slow.lib
			set_db init_lib_search_path /home/install/FOUNDRY/digital/$x/dig/lib/
			set_db library slow.lib
			
			read_hdl $z.v

			elaborate $z

			set_input_delay -max 0.8 [all_inputs]
			set_output_delay -max 0.8 [all_output]
			set_input_transition 0.12 [all_inputs]
			set_load 0.15 [all_outputs]
			set_max_fanout 20.00 [current_design]
			syn_generic

			write_hdl
			syn_map
			write_hdl

			syn_opt
			write_hdl

			report_area >> $z-$y-$x.area.txt
			report_power >> $z-$y-$x.power.txt
			report_timing -unconstrained >> $z-$y-$x.timing.txt

			write_hdl > $z-net.v
			write_sdc > $z-sdc.sdc

                        gui_show






