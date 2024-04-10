set rateCepidmc125 pidmc_default_clock_driver/clockdriver/pipelined_ce.ce_pipeline[1].ce_reg/latency_gt_0.fd_array[1].reg_comp/fd_prim_array[0].bit_is_0.fdre_comp
set rateCellspidmc125 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCepidmc125/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellspidmc125 -to $rateCellspidmc125 -setup 125
set_multicycle_path -from $rateCellspidmc125 -to $rateCellspidmc125 -hold 124
