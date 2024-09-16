create_library_set -name max_timing\
   -timing\
    [list ../../../../../../install/FOUNDRY/digital/90nm/dig/lib/slow.lib]
create_library_set -name min_timing\
   -timing\
    [list ../../../../../../install/FOUNDRY/digital/90nm/dig/lib/fast.lib]
create_rc_corner -name default_rc_corner\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_delay_corner -name max_delay\
   -library_set max_timing
create_delay_corner -name min_delay\
   -library_set min_timing
create_constraint_mode -name top\
   -sdc_files\
    [list /dev/null]
create_analysis_view -name setup -constraint_mode top -delay_corner max_delay
create_analysis_view -name hold -constraint_mode top -delay_corner min_delay
set_analysis_view -setup [list setup] -hold [list hold]
