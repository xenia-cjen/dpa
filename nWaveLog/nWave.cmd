wvResizeWindow -win $_nWave1 -4 1 1280 751
wvRestoreSignal -win $_nWave1 \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.rc" \
           -overWriteAutoAlias on
wvConvertFile -win $_nWave1 -o \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.vcd.fsdb" \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.vcd"
wvSetCursor -win $_nWave1 69690.008518 -snap {("G1" 20)}
wvSelectSignal -win $_nWave1 {( "G1" 21 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 23)}
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSelectSignal -win $_nWave1 {( "G1" 22 )} 
wvCut -win $_nWave1
wvSetPosition -win $_nWave1 {("G1" 22)}
wvSetPosition -win $_nWave1 {("G1" 21)}
wvSaveSignal -win $_nWave1 \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.rc"
wvExit
