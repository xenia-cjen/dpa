wvResizeWindow -win $_nWave1 -4 1 1280 751
wvRestoreSignal -win $_nWave1 \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.rc" \
           -overWriteAutoAlias on
wvConvertFile -win $_nWave1 -o \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.vcd.fsdb" \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.vcd"
wvSetCursor -win $_nWave1 83022.671515 -snap {("G1" 10)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.vcd.fsdb" \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 70028.222859 -snap {("G1" 4)}
wvSetCursor -win $_nWave1 119774.412707 -snap {("G1" 5)}
wvSetCursor -win $_nWave1 69795.764027 -snap {("G1" 6)}
wvSetCursor -win $_nWave1 69795.764027 -snap {("G1" 6)}
wvGetSignalOpen -win $_nWave1
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test/DPA/ctrl_logic"
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/DPA/ctrl_logic/reset} \
{/test/DPA/ctrl_logic/clk} \
{/BLANK} \
{/test/DPA/ctrl_logic/global_cntr\[19:0\]} \
{/test/DPA/ctrl_logic/work_cntr\[19:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/next_state\[1:0\]} \
{/test/DPA/ctrl_logic/state\[1:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/im_a\[19:0\]} \
{/test/DPA/ctrl_logic/im_wen_n} \
{/test/DPA/data_path/im_q\[23:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/en_si} \
{/test/DPA/ctrl_logic/next_en_si} \
{/BLANK} \
{/test/DPA/ctrl_logic/read_cntr\[19:0\]} \
{/test/DPA/ctrl_logic/read_addr\[19:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/curr_time\[23:0\]} \
{/test/DPA/ctrl_logic/fb_addr\[19:0\]} \
{/test/DPA/ctrl_logic/photo_num\[1:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/curr_photo_addr\[19:0\]} \
{/test/DPA/ctrl_logic/curr_photo_size\[1:0\]} \
{/BLANK} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 18 )} 
wvSetPosition -win $_nWave1 {("G1" 18)}
wvGetSignalClose -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvUndo -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 17)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 14 )} 
wvSetCursor -win $_nWave1 119698.863587 -snap {("G1" 3)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/DPA"
wvGetSignalSetScope -win $_nWave1 "/test/DPA/ctrl_logic"
wvGetSignalSetScope -win $_nWave1 "/test/DPA/data_path"
wvGetSignalSetScope -win $_nWave1 "/test/DPA/ctrl_logic"
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 19)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/DPA/ctrl_logic/reset} \
{/test/DPA/ctrl_logic/clk} \
{/BLANK} \
{/test/DPA/ctrl_logic/global_cntr\[19:0\]} \
{/test/DPA/ctrl_logic/work_cntr\[19:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/next_state\[1:0\]} \
{/test/DPA/ctrl_logic/state\[1:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/im_a\[19:0\]} \
{/test/DPA/ctrl_logic/im_wen_n} \
{/test/DPA/data_path/im_q\[23:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/en_si} \
{/test/DPA/ctrl_logic/next_en_si} \
{/BLANK} \
{/test/DPA/ctrl_logic/read_cntr\[19:0\]} \
{/test/DPA/ctrl_logic/read_addr\[19:0\]} \
{/test/DPA/ctrl_logic/next_read_cntr\[19:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/curr_time\[23:0\]} \
{/test/DPA/ctrl_logic/fb_addr\[19:0\]} \
{/test/DPA/ctrl_logic/photo_num\[1:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/curr_photo_addr\[19:0\]} \
{/test/DPA/ctrl_logic/curr_photo_size\[1:0\]} \
{/BLANK} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 19 )} 
wvSetPosition -win $_nWave1 {("G1" 19)}
wvGetSignalClose -win $_nWave1
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 19)}
wvSetPosition -win $_nWave1 {("G1" 18)}
wvSelectSignal -win $_nWave1 {( "G1" 17 )} 
wvSetPosition -win $_nWave1 {("G1" 17)}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/test"
wvGetSignalSetScope -win $_nWave1 "/test/DPA"
wvGetSignalSetScope -win $_nWave1 "/test/DPA/ctrl_logic"
wvGetSignalSetScope -win $_nWave1 "/test/DPA/data_path"
wvGetSignalSetScope -win $_nWave1 "/test/DPA/ctrl_logic"
wvSetPosition -win $_nWave1 {("G1" 20)}
wvSetPosition -win $_nWave1 {("G1" 20)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/test/DPA/ctrl_logic/reset} \
{/test/DPA/ctrl_logic/clk} \
{/BLANK} \
{/test/DPA/ctrl_logic/global_cntr\[19:0\]} \
{/test/DPA/ctrl_logic/work_cntr\[19:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/next_state\[1:0\]} \
{/test/DPA/ctrl_logic/state\[1:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/im_a\[19:0\]} \
{/test/DPA/ctrl_logic/im_wen_n} \
{/test/DPA/data_path/im_q\[23:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/en_si} \
{/test/DPA/ctrl_logic/next_en_si} \
{/BLANK} \
{/test/DPA/ctrl_logic/read_cntr\[19:0\]} \
{/test/DPA/ctrl_logic/next_read_cntr\[19:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/init_time_mux_sel} \
{/test/DPA/ctrl_logic/read_addr\[19:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/curr_time\[23:0\]} \
{/test/DPA/ctrl_logic/fb_addr\[19:0\]} \
{/test/DPA/ctrl_logic/photo_num\[1:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/curr_photo_addr\[19:0\]} \
{/test/DPA/ctrl_logic/curr_photo_size\[1:0\]} \
{/BLANK} \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 20 )} 
wvSetPosition -win $_nWave1 {("G1" 20)}
wvGetSignalClose -win $_nWave1
wvSetCursor -win $_nWave1 93262.483024 -snap {("G1" 18)}
wvSetCursor -win $_nWave1 95238.383088 -snap {("G1" 18)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvReloadFile -win $_nWave1
wvExit
