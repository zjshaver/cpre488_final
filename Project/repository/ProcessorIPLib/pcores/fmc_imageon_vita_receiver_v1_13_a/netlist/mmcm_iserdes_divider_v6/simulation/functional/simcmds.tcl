# file: simcmds.tcl

# create the simulation script
vcd dumpfile isim.vcd
vcd dumpvars -m /mmcm_iserdes_divider_v6_tb -l 0
wave add /
run 50000ns
quit
