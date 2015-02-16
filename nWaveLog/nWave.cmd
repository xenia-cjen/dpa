wvResizeWindow -win $_nWave1 -4 112 1280 751
wvResizeWindow -win $_nWave1 1981 2 1280 779
wvResizeWindow -win $_nWave1 1981 2 1855 1056
wvRestoreSignal -win $_nWave1 \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.rc" \
           -overWriteAutoAlias on
wvResizeWindow -win $_nWave1 636 30 1280 751
wvResizeWindow -win $_nWave1 1981 2 1855 1056
wvRestoreSignal -win $_nWave1 \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.rc" \
           -overWriteAutoAlias on
wvConvertFile -win $_nWave1 -o \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.vcd.fsdb" \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.vcd"
wvResizeWindow -win $_nWave1 1981 2 1855 1056
wvSetCursor -win $_nWave1 119378.387943 -snap {("G1" 21)}
wvSetCursor -win $_nWave1 70290.397965 -snap {("G1" 1)}
wvSetCursor -win $_nWave1 60371.476869 -snap {("G1" 2)}
wvSetCursor -win $_nWave1 59985.716633 -snap {("G1" 2)}
wvResizeWindow -win $_nWave1 61 2 1855 1056
wvResizeWindow -win $_nWave1 671 30 1280 751
wvResizeWindow -win $_nWave1 61 2 1855 1056
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.vcd.fsdb" \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 91917.020134 -snap {("G1" 25)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.vcd.fsdb" \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.vcd"
wvReloadFile -win $_nWave1
wvCreateBusOpen -win $_nWave1
wvSetCursor -win $_nWave1 134639.966225 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave1 -off
wvGetSignalClose -win $_nWave1
wvConvertFile -win $_nWave1 -o \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.vcd.fsdb" \
           "/home/raid5_3/user04/r04099/Documents/cvsd/hw/hw3/DPA.vcd"
wvReloadFile -win $_nWave1
wvSetCursor -win $_nWave1 125671.040747 -snap {("G2" 0)}
