#####################################################################
# -- (c) Copyright 2008 - 2011 Xilinx, Inc. All rights reserved.
# --
# -- This file contains confidential and proprietary information
# -- of Xilinx, Inc. and is protected under U.S. and
# -- international copyright and other intellectual property
# -- laws.
# --
# -- DISCLAIMER
# -- This disclaimer is not a license and does not grant any
# -- rights to the materials distributed herewith. Except as
# -- otherwise provided in a valid license issued to you by
# -- Xilinx, and to the maximum extent permitted by applicable
# -- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
# -- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
# -- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
# -- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
# -- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
# -- (2) Xilinx shall not be liable (whether in contract or tort,
# -- including negligence, or under any other theory of
# -- liability) for any loss or damage of any kind or nature
# -- related to, arising under or in connection with these
# -- materials, including for any direct, or any indirect,
# -- special, incidental, or consequential loss or damage
# -- (including loss of data, profits, goodwill, or any type of
# -- loss or damage suffered as a result of any action brought
# -- by a third party) even if such damage or loss was
# -- reasonably foreseeable or Xilinx had been advised of the
# -- possibility of the same.
# --
# -- CRITICAL APPLICATIONS
# -- Xilinx products are not designed or intended to be fail-
# -- safe, or for use in any application requiring fail-safe
# -- performance, such as life-support or safety devices or
# -- systems, Class III medical devices, nuclear facilities,
# -- applications related to the deployment of airbags, or any
# -- other applications that could lead to death, personal
# -- injury, or severe property or environmental damage
# -- (individually and collectively, "Critical
# -- Applications"). Customer assumes the sole risk and
# -- liability of any use of Xilinx products in Critical
# -- Applications, subject only to applicable laws and
# -- regulations governing limitations on product liability.
# --
# -- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
# -- PART OF THIS FILE AT ALL TIMES.
#####################################################################
#uses "xillib.tcl"

proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XVTC" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" "C_GENERATE_EN" "C_DETECT_EN" "C_DET_HSYNC_EN" "C_DET_VSYNC_EN" "C_DET_HBLANK_EN" "C_DET_VBLANK_EN" "C_DET_AVIDEO_EN" "C_DET_ACHROMA_EN"
    local_xdefine_config_file $drv_handle "xvtc_g.c" "XVtc" "DEVICE_ID" "C_BASEADDR"
    xdefine_canonical_xpars $drv_handle "xparameters.h" "VTC" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" "C_GENERATE_EN" "C_DETECT_EN" "C_DET_HSYNC_EN" "C_DET_VSYNC_EN" "C_DET_HBLANK_EN" "C_DET_VBLANK_EN" "C_DET_AVIDEO_EN" "C_DET_ACHROMA_EN"
}

#
# Create configuration C file as required by Xilinx  drivers
# Temporary fix until 11.1

proc local_xdefine_config_file {drv_handle file_name drv_string args} {
    set filename [file join "src" $file_name] 
    file delete $filename
    set config_file [open $filename w]
    xprint_generated_header $config_file "Driver configuration"    
    puts $config_file "#include \"xparameters.h\""
    puts $config_file "#include \"[string tolower $drv_string].h\""
    puts $config_file "\n/*"
    puts $config_file "* The configuration table for devices"
    puts $config_file "*/\n"
    puts $config_file [format "%s_Config %s_ConfigTable\[\] =" $drv_string $drv_string]
    puts $config_file "\{"
    set periphs [xget_periphs $drv_handle]     
    set start_comma ""
    foreach periph $periphs {
	puts $config_file [format "%s\t\{" $start_comma]
	set comma ""
	foreach arg $args {
            puts "Handling $arg"
	    # Check if this is a driver parameter or a peripheral parameter
	    set value [xget_value $drv_handle "PARAMETER" $arg]
	    if {[llength $value] == 0} {
		set p2p_name [xget_p2p_name $periph $arg]
                # puts "p2p_name is: $p2p_name"
                set p2p_name ""

		if { [string compare -nocase $p2p_name ""] == 0} { 
		    puts -nonewline $config_file [format "%s\t\t%s" $comma [xget_name $periph $arg]]
		} else {
		    puts -nonewline $config_file [format "%s\t\t%s" $comma $p2p_name]
		}
	    } else {
		puts -nonewline $config_file [format "%s\t\t%s" $comma [xget_dname $drv_string $arg]]
	    }
	    set comma ",\n"
	}
	puts -nonewline $config_file "\n\t\}"
	set start_comma ",\n"
    }
    puts $config_file "\n\};"

    puts $config_file "\n";

    close $config_file
}


#
# Given a list of arguments, define each as a canonical constant name, using
# the driver name, in an include file.
#
proc xdefine_canonical_xpars {drv_handle file_name drv_string args} {
    # Open include file
    set file_handle [xopen_include_file $file_name]

    # Get all peripherals connected to this driver
    set periphs [xget_periphs $drv_handle]

    # Print canonical parameters for each peripheral
    set device_id 0
    foreach periph $periphs {
        puts $file_handle ""
        set periph_name [string toupper [xget_hw_name $periph]]
        set canonical_name [format "%s_%s" $drv_string $device_id]

        # Make sure canonical name is not the same as hardware instance
        if { [string compare -nocase $canonical_name $periph_name] == 0 } {
            # Abort canonical names
            close $file_handle
            return
        }

        puts $file_handle "/* Canonical definitions for peripheral $periph_name */"

        foreach arg $args {

            set lvalue [xget_dname $canonical_name $arg]

# The commented out rvalue is the name of the instance-specific constant
#           set rvalue [xget_name $periph $arg]

            # The rvalue set below is the actual value of the parameter
            set rvalue [xget_param_value $periph $arg]
            if {[llength $rvalue] == 0} {
                set rvalue 0
            }
            set rvalue [xformat_addr_string $rvalue $arg]

            puts $file_handle "#define $lvalue $rvalue"

        }
        incr device_id
        puts $file_handle ""
    }
    puts $file_handle "\n/******************************************************************/\n"
    close $file_handle
}
