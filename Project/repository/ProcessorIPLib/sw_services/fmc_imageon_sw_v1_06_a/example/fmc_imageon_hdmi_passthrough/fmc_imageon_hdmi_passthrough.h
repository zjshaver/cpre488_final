//----------------------------------------------------------------
//      _____
//     /     \
//    /____   \____
//   / \===\   \==/
//  /___\===\___\/  AVNET
//       \======/
//        \====/
//---------------------------------------------------------------
//
// This design is the property of Avnet.  Publication of this
// design is not authorized without written consent from Avnet.
//
// Please direct any questions to:  technical.support@avnet.com
//
// Disclaimer:
//    Avnet, Inc. makes no warranty for the use of this code or design.
//    This code is provided  "As Is". Avnet, Inc assumes no responsibility for
//    any errors, which may appear in this code, nor does it make a commitment
//    to update the information contained herein. Avnet, Inc specifically
//    disclaims any implied warranties of fitness for a particular purpose.
//                     Copyright(c) 2011 Avnet, Inc.
//                             All rights reserved.
//
//----------------------------------------------------------------
//
// Create Date:         Nov 15, 2011
// Design Name:         FMC-IMAGEON HDMI Passthrough
// Module Name:         fmc_imageon_hdmi_passthrough.h
// Project Name:        FMC-IMAGEON HDMI Passthrough Program
// Target Devices:      Spartan-6, Virtex-6, Kintex-6
// Hardware Boards:     FMC-IMAGEON
// 
//
// Tool versions:       ISE 14.1
//
// Description:         FMC-IMAGEON HDMI Demo Program
//                      This application will configure the FMC-IMAGEON module
//                      for the simple case of an HDMI passthrough:
//                      - HDMI Input
//                         - ADV7611 configured for 16 bit YCbCr 4:2:2 mode
//                           with embedded syncs
//                      - HDMI Output
//                         - ADV7511 configured for 16 bit YCbCr 4:2:2 mode
//                           with embedded syncs
//
// Dependencies:
//
// Revision:            Nov 15, 2011: 1.00 Initial version
//
//----------------------------------------------------------------

int fmc_imageon_hdmi_passthrough( void );
