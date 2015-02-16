SRC_FILE = testfixture.v DPA.v
SYN_SRC_FILE = testfixture.v DPA_syn.v 
TECH_FILE = tsmc13.v 
COM = ncverilog
COM_OPTS = -notimingcheck 
SYN_COM_OPTS = 
OPTION = +tb2+VCD
SYN_OPTION = +tb1

 	 	
com : testfixture.v DPA.v
	$(COM) $(COM_OPTS) $(SRC_FILE) +access+r +define$(OPTION)

syn : testfixture.v DPA_syn.v tsmc13.v DPA_syn.sdf
	$(COM) $(SYN_OPTS) $(SYN_SRC_FILE) -v $(TECH_FILE) +define+SDF$(SYN_OPTION)

clean :
	@rm -rf *.vcd* tb* ncverilog.* INCA_libs vfastLog

synclean : 
	@rm -rf *-verilog.syn *.mr *.pvl 
