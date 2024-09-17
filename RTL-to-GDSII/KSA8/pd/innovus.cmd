#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Tue Sep  3 11:58:54 2024                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.15-s110_1 (64bit) 09/23/2022 13:08 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.15-s110_1 NR220912-2004/21_15-UB (database version 18.20.592) {superthreading v2.17}
#@(#)CDS: AAE 21.15-s039 (64bit) 09/23/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.15-s038_1 () Sep 20 2022 11:42:13 ( )
#@(#)CDS: SYNTECH 21.15-s012_1 () Sep  5 2022 10:25:51 ( )
#@(#)CDS: CPE v21.15-s076
#@(#)CDS: IQuantus/TQuantus 21.1.1-s867 (64bit) Sun Jun 26 22:12:54 PDT 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
win
save_global Default.globals
set init_gnd_net VSS
set init_lef_file {../../../../../../install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated.lef ../../../../../../install/FOUNDRY/digital/90nm/dig/lef/gsclib090_translated_ref.lef}
set init_verilog ksa8-net.v
set init_mmmc_file Default.view
set init_pwr_net VDD
init_design
fit
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site gsclib090site -r 0.7 0.7 10 10 10 10
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site gsclib090site -r 0.625 0.691667 10.15 10.15 10.15 10.15
uiSetTool select
getIoFlowFlag
fit
getIoFlowFlag
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site gsclib090site -r 0.7 0.7 10.15 10.15 10.15 10.15
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site gsclib090site -r 0.625 0.691667 10.15 10.15 10.15 10.15
uiSetTool select
getIoFlowFlag
fit
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site gsclib090site -r 0.7 0.7 10 10 10 10
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site gsclib090site -r 0.625 0.691667 10.15 10.15 10.15 10.15
uiSetTool select
getIoFlowFlag
fit
fit
zoomBox -32.83150 -8.61900 81.05550 46.44100
zoomBox -24.64450 -5.86600 72.15950 40.93500
zoomBox -17.97350 -2.70550 64.31000 37.07550
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal9 bottom Metal9 left Metal8 right Metal8} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.5 bottom 0.5 left 0.5 right 0.5} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal9 bottom Metal9 left Metal8 right Metal8} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.5 bottom 0.5 left 0.5 right 0.5} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal9 -direction horizontal -width 1.8 -spacing 0.5 -number_of_sets 3 -start_from bottom -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal9 -direction horizontal -width 1.8 -spacing 0.5 -number_of_sets 3 -start_from bottom -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal8 -direction vertical -width 1.8 -spacing 0.5 -number_of_sets 3 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal8 -direction vertical -width 1.8 -spacing 0.5 -number_of_sets 3 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal9(9) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal9(9) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal9(9) }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal9(9) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal9(9) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal9(9) }
saveDesign powerplan.enc
addEndCap -preCap FILL2 -postCap FILL2 -prefix ENDCAP
addEndCap -preCap FILL2 -postCap FILL2 -prefix ENDCAP
addWellTap -cell FILL2 -cellInterval 40 -prefix WELLTAP
addWellTap -cell FILL2 -cellInterval 40 -prefix WELLTAP
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
saveDesign preplacement.enc
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setNanoRouteMode -quiet -droutePostRouteWidenWireRule LEFDefaultRouteSpec_gpdk090
setNanoRouteMode -quiet -timingEngine {}
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 1 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
setDrawView ameba
setDrawView fplan
setDrawView place
setLayerPreference node_layer -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_cell -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_cell -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference Metal1 -isVisible 1
setLayerPreference Metal1 -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference Metal1 -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_layer -isVisible 1
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
setLayerPreference node_cell -isVisible 0
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix ksa8_preCTS -outDir timingReports
selectWire 16.8950 16.8950 17.0350 30.8100 2 {sum[2]}
deselectAll
selectWire 17.7650 -0.0700 17.9050 13.8450 2 {sum[3]}
deselectAll
selectWire -0.0700 13.7050 12.9750 13.8450 3 {b[1]}
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal9(9) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal9(9) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal9(9) }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal9(9) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal9(9) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal9(9) }
setDrawView fplan
setDrawView place
setDrawView fplan
setDrawView ameba
setDrawView place
setLayerPreference node_gird -isVisible 1
setLayerPreference node_gird -isVisible 0
zoomBox -1.53200 0.77200 57.91800 29.51400
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference violation -isVisible 0
setLayerPreference violation -isVisible 1
setLayerPreference allLayers -isVisible 0
setLayerPreference allLayers -isVisible 1
setLayerPreference allLayers -isSelectable 0
setLayerPreference allLayers -isSelectable 1
gui_select -rect {15.77050 17.18050 21.70450 14.24950}
deselectAll
fit
zoomSelected
gui_select -rect {23.43150 21.80500 29.78200 16.46350}
deselectAll
setLayerPreference node_layer -isVisible 0
setLayerPreference node_layer -isVisible 1
gui_select -rect {32.55800 1.53300 30.87550 0.22950}
gui_select -rect {30.95950 5.10800 35.67000 -5.32200}
deselectAll
setLayerPreference Via8 -isVisible 0
setLayerPreference Metal9 -isVisible 0
setLayerPreference Metal8 -isVisible 0
setLayerPreference Via7 -isVisible 0
setLayerPreference Metal7 -isVisible 0
setLayerPreference Via6 -isVisible 0
setLayerPreference Metal6 -isVisible 0
setLayerPreference Via5 -isVisible 0
setLayerPreference Metal5 -isVisible 0
zoomBox 21.83300 22.39350 35.37550 14.82350
zoomBox 22.11200 21.54600 33.12800 16.13200
setLayerPreference node_cell -isVisible 1
zoomBox 18.86900 15.08100 34.36850 22.57450
zoomBox 14.52300 13.66350 35.97600 24.03500
zoomBox 11.75950 12.76200 36.99800 24.96400
zoomBox 4.72400 10.45350 39.65650 27.34200
zoomBox -11.20650 5.28000 45.67500 32.78000
zoomBox -18.50400 2.87150 48.41550 35.22450
zoomBox -4.41150 7.09250 43.93750 30.46750
zoomBox 5.76950 10.14200 40.70200 27.03050
zoomBox 12.47250 12.32800 37.71150 24.53000
zoomBox 19.19550 14.53550 34.69550 22.02900
zoomBox 22.16450 15.51000 33.36350 20.92450
zoomBox 23.32350 15.89050 32.84300 20.49300
setLayerPreference Metal9 -isVisible 1
setLayerPreference Via8 -isVisible 1
setLayerPreference Metal8 -isVisible 1
setLayerPreference Via7 -isVisible 1
setLayerPreference Metal7 -isVisible 1
setLayerPreference Via6 -isVisible 1
setLayerPreference Metal6 -isVisible 1
setLayerPreference Via5 -isVisible 1
setLayerPreference Metal5 -isVisible 1
zoomBox 17.09400 14.65800 35.33350 23.47600
zoomBox 14.79450 14.20300 36.25300 24.57750
zoomBox 12.08950 13.66800 37.33450 25.87300
zoomBox 5.11550 12.26850 40.05750 29.16150
zoomBox -4.54500 10.33150 43.81850 33.71350
zoomBox -10.68800 9.10000 46.21000 36.60800
zoomBox -17.91550 7.65100 49.02350 40.01350
setLayerPreference node_bump -isVisible 0
setLayerPreference node_bump -isVisible 1
setLayerPreference Metal9 -isVisible 0
setLayerPreference Via8 -isVisible 0
setLayerPreference Metal8 -isVisible 0
setLayerPreference Via7 -isVisible 0
setLayerPreference Metal7 -isVisible 0
zoomBox -25.58000 6.03150 53.17200 44.10500
zoomBox -34.60550 4.17600 58.04400 48.96850
fit
zoomBox -6.10550 0.19150 53.34450 28.93350
zoomBox 2.80250 2.90950 45.75600 23.67600
zoomBox 8.30650 5.80450 39.34150 20.80900
zoomBox 12.28300 7.89650 34.70650 18.73750
zoomBox 13.83600 8.71350 32.89650 17.92850
zoomBox 15.15600 9.40800 31.35800 17.24100
zoomBox 16.27850 9.99850 30.05000 16.65650
zoomBox 17.21900 10.51050 28.92450 16.16950
zoomBox 18.69800 11.31500 27.15500 15.40350
zoomBox 19.76550 11.89600 25.87650 14.85050
zoomBox 20.18650 12.12700 25.38150 14.63850
zoomBox 18.06600 11.38300 26.52600 15.47300
zoomBox 15.97550 10.66600 27.68500 16.32700
zoomBox 13.08200 9.67350 29.28900 17.50900
zoomBox 11.24200 9.04250 30.30900 18.26050
zoomBox 6.52500 7.42150 32.91600 20.18050
zoomBox -0.00350 5.17800 36.52450 22.83800
zoomBox -4.15550 3.75150 38.81900 24.52800
zoomBox -8.37400 2.27850 42.18450 26.72150
zoomBox -15.65450 0.96400 43.82600 29.72050
zoomBox -24.22000 -0.58250 45.75750 33.24900
zoomBox -46.15200 -4.54250 50.70350 42.28350
zoomBox -23.49400 4.91200 46.48550 38.74450
zoomBox -7.12250 11.74300 43.43750 36.18700
redraw
redraw
redraw
redraw
redraw
getCTSMode -engine -quiet
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal9(9) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal9(9) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal9(9) }
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -noBoundary false -maxAllowedDelay 1
setPlaceMode -fp false
place_design
setPlaceMode -fp false
place_design
fit
setNanoRouteMode -quiet -routeTopRoutingLayer 9
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration 1
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
setLayerPreference allLayers -isVisible 0
setLayerPreference allLayers -isVisible 1
setLayerPreference Metal7 -isVisible 1
setLayerPreference Via7 -isVisible 1
setLayerPreference Metal8 -isVisible 1
setLayerPreference Via8 -isVisible 1
setLayerPreference Metal9 -isVisible 1
getCTSMode -engine -quiet
getCTSMode -engine -quiet
getFillerMode -quiet
addFiller -cell FILL32 FILL4 FILL16 FILL8 FILL64 FILL2 FILL1 -prefix FILLER
addFiller -cell FILL32 FILL4 FILL16 FILL8 FILL64 FILL2 FILL1 -prefix FILLER
saveDesign route.enc
selectWire 5.3250 23.6150 41.0750 25.4150 9 VDD
deselectAll
selectWire 16.8950 16.8950 17.0350 30.3050 2 {sum[2]}
deselectAll
selectWire 17.4750 0.4350 17.6150 11.8150 2 {sum[3]}
deselectAll
selectWire 7.3250 13.4150 12.9750 13.5550 3 {b[1]}
deselectAll
selectWire 12.5450 0.4350 12.6850 11.8150 2 {sum[1]}
deselectAll
selectWire 30.2350 0.3650 30.3750 13.5550 2 {b[5]}
deselectAll
selectWire 27.0450 5.8750 27.1850 11.5250 2 {b[4]}
zoomBox -11.77050 11.98900 58.17050 45.80300
zoomBox -46.50850 -0.21950 87.47750 64.55800
zoomBox -11.81000 3.36150 58.13200 37.17600
zoomBox 9.41000 6.42600 40.44400 21.43000
deselectAll
selectWire 26.1750 6.4550 26.3150 10.9450 2 {a[4]}
deselectAll
selectInst g555__3680
deselectAll
selectWire 23.8550 14.2850 27.1850 14.4250 3 n_15
deselectAll
selectWire 27.6250 12.5450 27.7650 14.1350 2 n_0
deselectAll
selectWire 17.4750 0.4350 17.6150 11.8150 2 {sum[3]}
deselectAll
selectWire 14.2850 0.4350 14.4250 10.9450 2 {a[1]}
fit
dumpToGIF ksa8_pd
ui_view_box
ui_view_box
dbquery -area {-11.7705 -1.537 58.1705 32.277} -objType inst
dbquery -area {-11.7705 -1.537 58.1705 32.277} -objType regular
dbquery -area {-11.7705 -1.537 58.1705 32.277} -objType special
selectObject Wire {a[1](28570,870,28850,21890)}
deselectObject Wire {a[1](28570,870,28850,21890)}
deselectObject Wire {a[1](28570,870,28850,21890)}
selectWire 3.0250 15.6200 43.3750 17.4200 9 VSS
deselectWire 3.0250 15.6200 43.3750 17.4200 9 VSS
deselectWire 3.0250 15.6200 43.3750 17.4200 9 VSS
selectWire 21.1500 5.3250 22.9500 25.4150 8 VDD
deselectWire 21.1500 5.3250 22.9500 25.4150 8 VDD
deselectWire 21.1500 5.3250 22.9500 25.4150 8 VDD
selectWire 5.3250 10.1500 41.0750 11.9500 9 VDD
zoomBox -18.26450 -3.38500 64.01900 36.39600
zoomBox -8.03550 0.56950 51.41450 29.31150
zoomBox -18.26600 -3.38500 64.01950 36.39700
zoomBox -6.71850 2.86200 52.73300 31.60450
zoomBox -12.02400 0.01000 57.91900 33.82500
setLayerPreference node_layer -isVisible 0
zoomBox -9.39300 2.91850 50.05850 31.66100
zoomBox -5.37700 5.25100 45.15750 29.68250
zoomBox -11.80150 3.64750 47.65100 32.39050
zoomBox -18.47600 1.64100 51.46800 35.45650
zoomBox -29.78800 -3.07950 52.49950 36.70350
setLayerPreference node_layer -isVisible 1
ui_view_box
ui_view_box
dbquery -area {-29.788 -3.0795 52.4995 36.7035} -objType inst
dbquery -area {-29.788 -3.0795 52.4995 36.7035} -objType regular
dbquery -area {-29.788 -3.0795 52.4995 36.7035} -objType special
deselectPhyPin 23.2750 0.0000 23.4150 0.5750 2 {sum[4]}
selectWire 5.3250 10.1500 41.0750 11.9500 9 VDD
ui_view_box
ui_view_box
dbquery -area {-29.788 -3.0795 52.4995 36.7035} -objType inst
dbquery -area {-29.788 -3.0795 52.4995 36.7035} -objType regular
dbquery -area {-29.788 -3.0795 52.4995 36.7035} -objType special
selectWire 5.3250 10.1500 41.0750 11.9500 9 VDD
setLayerPreference node_layer -isVisible 0
zoomBox -14.89000 2.11050 44.56300 30.85400
zoomBox -4.12650 5.86000 38.82900 26.62750
zoomBox 3.65050 8.56950 34.68600 23.57400
zoomBox 1.12100 6.87000 37.63350 24.52250
zoomBox -5.35550 2.51900 45.18100 26.95150
zoomBox -34.61650 -17.14100 79.28000 37.92400
zoomBox -28.20650 -10.81300 68.60600 35.99250
ui_view_box
ui_view_box
dbquery -area {-28.207 -10.813 68.606 35.9925} -objType inst
dbquery -area {-28.207 -10.813 68.606 35.9925} -objType regular
dbquery -area {-28.207 -10.813 68.606 35.9925} -objType special
deselectInst g567__5115
selectWire 5.3250 10.1500 41.0750 11.9500 9 VDD
