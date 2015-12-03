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
// Module Name:         fmc_imageon_hdmi_passthrough.c
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

#include <stdio.h>

#include "xparameters.h"
#include "sleep.h"

#include "fmc_iic.h"
fmc_iic_t fmc_imageon_iic;

#include "fmc_imageon.h"
fmc_imageon_t fmc_imageon;

#include "video_resolution.h"

Xuint8 fmc_imageon_hdmii_edid_content[256] =
{
		0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00,
		0x06, 0x8F, 0x07, 0x11, 0x01, 0x00, 0x00, 0x00,
		0x17, 0x11, 0x01, 0x03, 0x80, 0x0C, 0x09, 0x78,
		0x0A, 0x1E, 0xAC, 0x98, 0x59, 0x56, 0x85, 0x28,
		0x29, 0x52, 0x57, 0x00, 0x00, 0x00, 0x01, 0x01,
		0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
		0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x8C, 0x0A,
		0xD0, 0x8A, 0x20, 0xE0, 0x2D, 0x10, 0x10, 0x3E,
		0x96, 0x00, 0x81, 0x60, 0x00, 0x00, 0x00, 0x18,
		0x01, 0x1D, 0x80, 0x18, 0x71, 0x1C, 0x16, 0x20,
		0x58, 0x2C, 0x25, 0x00, 0x81, 0x49, 0x00, 0x00,
		0x00, 0x9E, 0x00, 0x00, 0x00, 0xFC, 0x00, 0x56,
		0x41, 0x2D, 0x31, 0x38, 0x30, 0x39, 0x41, 0x0A,
		0x20, 0x20, 0x20, 0x20, 0x00, 0x00, 0x00, 0xFD,
		0x00, 0x17, 0x3D, 0x0D, 0x2E, 0x11, 0x00, 0x0A,
		0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x01, 0x1C,
		0x02, 0x03, 0x34, 0x71, 0x4D, 0x82, 0x05, 0x04,
		0x01, 0x10, 0x11, 0x14, 0x13, 0x1F, 0x06, 0x15,
		0x03, 0x12, 0x35, 0x0F, 0x7F, 0x07, 0x17, 0x1F,
		0x38, 0x1F, 0x07, 0x30, 0x2F, 0x07, 0x72, 0x3F,
		0x7F, 0x72, 0x57, 0x7F, 0x00, 0x37, 0x7F, 0x72,
		0x83, 0x4F, 0x00, 0x00, 0x67, 0x03, 0x0C, 0x00,
		0x10, 0x00, 0x88, 0x2D, 0x00, 0x00, 0x00, 0xFF,
		0x00, 0x0A, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
		0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x00, 0x00,
		0x00, 0xFF, 0x00, 0x0A, 0x20, 0x20, 0x20, 0x20,
		0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
		0x00, 0x00, 0x00, 0xFF, 0x00, 0x0A, 0x20, 0x20,
		0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20,
		0x20, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xDA
};

int fmc_imageon_hdmi_passthrough( void )
{
   int ret;
   Xuint32 timeout = 100;

   // HDMI Input Settings
   Xuint32 hdmii_locked;
   Xuint32 hdmii_width;
   Xuint32 hdmii_height;
   Xuint32 hdmii_resolution;
   fmc_imageon_video_timing_t hdmii_timing;

   // HDMI Output settings
   Xuint32 hdmio_width;
   Xuint32 hdmio_height;
   Xuint32 hdmio_resolution;
   fmc_imageon_video_timing_t hdmio_timing;

   xil_printf("\n\r");
   xil_printf("------------------------------------------------------\n\r");
   xil_printf("--          FMC-IMAGEON HDMI Pass-Through           --\n\r");
   xil_printf("------------------------------------------------------\n\r");
   xil_printf("\n\r");

   xil_printf( "FMC-IMAGEON Initialization ...\n\r" );

   ret = fmc_iic_xps_init(&fmc_imageon_iic,"FMC-IMAGEON I2C Controller",XPAR_AXI_IIC_0_BASEADDR);
   if ( !ret )
   {
      xil_printf( "ERROR : Failed to open FMC-IIC driver\n\r" );
      exit(0);
   }

   fmc_imageon_init(&fmc_imageon, "FMC-IMAGEON", &fmc_imageon_iic);
   //fmc_imageon.bVerbose = 0; // without verbose
   fmc_imageon.bVerbose = 1; // with verbose

   xil_printf( "HDMI Input Initialization ...\n\r" );
   ret = fmc_imageon_hdmii_init( &fmc_imageon,
                                 1, // hdmiiEnable = 1
                                 1, // editInit = 1
                                 fmc_imageon_hdmii_edid_content
                                 );
   if ( !ret )
   {
      xil_printf( "ERROR : Failed to init HDMI Input Interface\n\r" );
      exit(0);
   }

   xil_printf( "Waiting for ADV7611 to locked on incoming video ...\n\r" );
   hdmii_locked = 0;
   while ( !hdmii_locked && timeout-- )
   {
      millisleep(100); // wait 100msec ...
      hdmii_locked = fmc_imageon_hdmii_get_lock( &fmc_imageon );
   }
   if ( !hdmii_locked )
   {
      xil_printf( "\tERROR : ADV7611 has NOT locked on incoming video, aborting !\n\r" );
      return -1;
   }
   xil_printf( "\tADV7611 Video Input LOCKED\n\r" );
   millisleep(100); // wait 100msec for timing to stabilize

   // Get Video Input information
   fmc_imageon_hdmii_get_timing( &fmc_imageon, &hdmii_timing );
   hdmii_width  = hdmii_timing.HActiveVideo;
   hdmii_height = hdmii_timing.VActiveVideo;
   hdmii_resolution = vres_detect( hdmii_width, hdmii_height );

   xil_printf( "ADV7611 Video Input Information\n\r" );
   xil_printf( "\tVideo Input      = %s", hdmii_timing.IsHDMI ? "HDMI" : "DVI" );
   xil_printf( "%s", hdmii_timing.IsEncrypted ? ", HDCP Encrypted" : "" );
   xil_printf( ", %s\n\r", hdmii_timing.IsInterlaced ? "Interlaced" : "Progressive" );
   xil_printf( "\tColor Depth      = %d bits per channel\n\r", hdmii_timing.ColorDepth );
   xil_printf( "\tHSYNC Timing     = hav=%04d, hfp=%02d, hsw=%02d(hsp=%d), hbp=%03d\n\r",
      hdmii_timing.HActiveVideo,
      hdmii_timing.HFrontPorch,
      hdmii_timing.HSyncWidth, hdmii_timing.HSyncPolarity,
      hdmii_timing.HBackPorch
      );
   xil_printf( "\tVSYNC Timing     = vav=%04d, vfp=%02d, vsw=%02d(vsp=%d), vbp=%03d\n\r",
      hdmii_timing.VActiveVideo,
      hdmii_timing.VFrontPorch,
      hdmii_timing.VSyncWidth, hdmii_timing.VSyncPolarity,
      hdmii_timing.VBackPorch
      );
   xil_printf( "\tVideo Dimensions = %d x %d\n\r", hdmii_width, hdmii_height );

   if ( (hdmii_resolution) == -1 )
   {
      xil_printf( "\tERROR : Invalid resolution, aborting !\n\r" );
      return -1;
   }

   // Set HDMI output to same resolution as HDMI input
   hdmio_width  = hdmii_width;
   hdmio_height = hdmii_height;
   memcpy( &hdmio_timing, &hdmii_timing, sizeof(fmc_imageon_video_timing_t) );
   //hdmio_timing.IsHDMI = 1; // If your monitor is HDMI
   hdmio_timing.IsHDMI = 0; // If your monitor is DVI

   xil_printf( "ADV7511 Video Output Information\n\r" );
   xil_printf( "\tVideo Output     = %s", hdmio_timing.IsHDMI ? "HDMI" : "DVI" );
   xil_printf( "%s", hdmio_timing.IsEncrypted ? ", HDCP Encrypted" : "" );
   xil_printf( ", %s\n\r", hdmio_timing.IsInterlaced ? "Interlaced" : "Progressive" );
   xil_printf( "\tColor Depth      = %d bits per channel\n\r", hdmio_timing.ColorDepth );
   xil_printf( "\tHSYNC Timing     = hav=%04d, hfp=%02d, hsw=%02d(hsp=%d), hbp=%03d\n\r",
      hdmio_timing.HActiveVideo,
      hdmio_timing.HFrontPorch,
      hdmio_timing.HSyncWidth, hdmio_timing.HSyncPolarity,
      hdmio_timing.HBackPorch
      );
   xil_printf( "\tVSYNC Timing     = vav=%04d, vfp=%02d, vsw=%02d(vsp=%d), vbp=%03d\n\r",
      hdmio_timing.VActiveVideo,
      hdmio_timing.VFrontPorch,
      hdmio_timing.VSyncWidth, hdmio_timing.VSyncPolarity,
      hdmio_timing.VBackPorch
      );
   xil_printf( "\tVideo Dimensions = %d x %d\n\r", hdmio_width, hdmio_height );

   xil_printf( "HDMI Output Initialization ...\n\r" );
   ret = fmc_imageon_hdmio_init( &fmc_imageon,
 	                             1,             // hdmioEnable = 1
 	                             &hdmio_timing, // pTiming
 	                             0              // waitHPD = 0
 	                             );
   if ( !ret )
   {
      xil_printf( "ERROR : Failed to init HDMI Output Interface\n\r" );
      exit(0);
   }

   xil_printf("\n\r");
   xil_printf( "Done\n\r" );
   xil_printf("\n\r");

   return 0;
}
