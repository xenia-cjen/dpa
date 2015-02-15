SRC_FILE = testfixture.v DPA.v
COM = ncverilog
COM_OPTS = -notimingcheck 
OPTION = +tb1+VCD

 	 	
com : testfixture.v DPA.v
	$(COM) $(COM_OPTS) $(SRC_FILE) +access+r +define$(OPTION)

clean :
	@rm -rf *.vcd* tb* ncverilog.* INCA_libs vfastLog
