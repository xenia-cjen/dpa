srcSourceCodeView
srcResizeWindow 3 66 804 500
debImport "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/testfixture.v" \
          "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.v" "-2001" \
          -path {/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3}
wvCreateWindow
wvResizeWindow -win $_nWave2 50 214 960 332
wvResizeWindow -win $_nWave2 50 236 960 332
wvRestoreSignal -win $_nWave2 \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.rc" \
           -overWriteAutoAlias on
wvConvertFile -win $_nWave2 -o \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.vcd.fsdb" \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.vcd"
wvResizeWindow -win $_nWave2 50 236 960 332
wvResizeWindow -win $_nWave2 -11 17 1280 751
wvSetCursor -win $_nWave2 90499.913107 -snap {("G1" 18)}
wvSelectSignal -win $_nWave2 -view {test/DPA/ctrl_logic/next_read_cntr[19:0]}
tfgGenerate -incr -ref {test.DPA.ctrl_logic.next_read_cntr#90000} -startWithStmt -schFG -traceFlattenMDA 0 -clockSkew 0 -bboxEmptyModule 0 -bboxIgnoreProtected 0 -cellModel 0 -confined_flattern 32768
tfgFolderClick   -win $_tFlowView3 {test.DPA.ctrl_logic.next_read_cntr[19:0]#90000}
tfgFolderClick  -funcblk -win $_tFlowView3 {test.DPA.ctrl_logic.next_read_cntr[19:0]#90000} -disableViewSync
tfgFolderClick   -win $_tFlowView3 {test.DPA.ctrl_logic.next_read_cntr[19:0]#90000}
tfgFolderClick   -win $_tFlowView3 {test.DPA.ctrl_logic.next_read_cntr[19:0]#90000}
tfgFolderClick   -win $_tFlowView3 {test.DPA.ctrl_logic.next_read_cntr[19:0]#90000} -disableViewSync
tfgNodeTraceActiveValue -win $_tFlowView3 -folder {group_0} {test.DPA.ctrl_logic.next_read_cntr[19:0]} -stopLevel 10
tfgFolderClick  -funcblk -win $_tFlowView3 {test.DPA.ctrl_logic.next_read_cntr[19:0]#90000}
tfgSetOption -win $_tFlowView3 -showSrcOnTip on
tfgLevelClick -win $_tFlowView3  -level 999991
tfgFolderClick  -funcblk -win $_tFlowView3 {test.DPA.ctrl_logic.next_read_cntr[19:0]#70000}
srcCreateWindow
tfgLevelClick -win $_tFlowView3  -level 999999
tfgLevelClick -win $_tFlowView3  -level 999999
tfgLevelClick -win $_tFlowView3  -level 999999
tfgLevelClick -win $_tFlowView3  -level 999999
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/test/DPA/ctrl_logic"
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
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
{/test/DPA/ctrl_logic/read_addr\[19:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/write_cntr\[19:0\]} \
{/test/DPA/ctrl_logic/next_write_cntr\[19:0\]} \
{/test/DPA/ctrl_logic/next_write_addr\[19:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/curr_time\[23:0\]} \
{/test/DPA/ctrl_logic/fb_addr\[19:0\]} \
{/test/DPA/ctrl_logic/photo_num\[1:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/curr_photo_addr\[19:0\]} \
{/test/DPA/ctrl_logic/curr_photo_size\[1:0\]} \
{/BLANK} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 23 )} 
wvSetPosition -win $_nWave2 {("G1" 23)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 22 )} 
wvSetPosition -win $_nWave2 {("G1" 22)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/test"
wvGetSignalSetScope -win $_nWave2 "/test/DPA"
wvGetSignalSetScope -win $_nWave2 "/test/DPA/ctrl_logic"
wvGetSignalSetScope -win $_nWave2 "/test/DPA/data_path"
wvGetSignalSetScope -win $_nWave2 "/test/DPA/ctrl_logic"
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 24)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
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
{/test/DPA/ctrl_logic/read_addr\[19:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/write_cntr\[19:0\]} \
{/test/DPA/ctrl_logic/next_write_cntr\[19:0\]} \
{/test/DPA/ctrl_logic/write_addr\[19:0\]} \
{/test/DPA/ctrl_logic/write_cntr\[19:0\]} \
{/test/DPA/ctrl_logic/next_write_addr\[19:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/curr_time\[23:0\]} \
{/test/DPA/ctrl_logic/fb_addr\[19:0\]} \
{/test/DPA/ctrl_logic/photo_num\[1:0\]} \
{/BLANK} \
{/test/DPA/ctrl_logic/curr_photo_addr\[19:0\]} \
{/test/DPA/ctrl_logic/curr_photo_size\[1:0\]} \
{/BLANK} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 24 )} 
wvSetPosition -win $_nWave2 {("G1" 24)}
wvGetSignalClose -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 24)}
wvSetPosition -win $_nWave2 {("G1" 23)}
wvSetCursor -win $_nWave2 99834.490448 -snap {("G1" 11)}
wvSetCursor -win $_nWave2 47185.658770 -snap {("G1" 20)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvCloseWindow -win $_nWave2
srcCloseWindow -win $_nTrace4
wvCreateWindow
wvResizeWindow -win $_nWave5 50 214 960 332
wvResizeWindow -win $_nWave5 50 236 960 332
wvRestoreSignal -win $_nWave5 \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.rc" \
           -overWriteAutoAlias on
wvResizeWindow -win $_nWave5 50 236 960 332
wvResizeWindow -win $_nWave5 -11 17 1280 751
wvCloseWindow -win $_nWave5
debExit
