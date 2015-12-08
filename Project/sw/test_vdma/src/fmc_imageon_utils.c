/*****************************************************************************
 * Joseph Zambreno
 * Phillip Jones
 *
 * Department of Electrical and Computer Engineering
 * Iowa State University
 *****************************************************************************/

/*****************************************************************************
 * fmc_imageon_utils.c - main initialization and configuration routines
 * for the Avnet FMC-IMAGEON board. Most of the bugs are their fault.
 *
 *
 * NOTES:
 * 02/04/14 by JAZ::Design created.
 *****************************************************************************/

#include "camera_app.h"


// Main FMC-IMAGEON initialization function. Add your code here.
int fmc_imageon_enable( camera_config_t *config )
{
   int ret;

   xil_printf("\n\r");
   xil_printf("------------------------------------------------\n\r");
   xil_printf("--    FMC-IMAGEON Camera Application (MP-2)   --\n\r");
   xil_printf("------------------------------------------------\n\r");
   xil_printf("\n\r");

   config->bVerbose = 1;
   config->vita_aec = 0;       // off
   config->vita_again = 0;     // 1.0
   config->vita_dgain = 128;   // 1.0
   config->vita_exposure = 90; // 90% of frame period


   config->hdmio_width  = 1280;
   config->hdmio_height = 720;
   config->hdmio_resolution = VIDEO_RESOLUTION_720P;

   // Clear frame stores
   Xuint32 i;
   Xuint32 storage_size = config->uNumFrames_HdmiFrameBuffer * ((1280*720)*3);
   volatile Xuint32 *pStorageMem = (Xuint32 *)config->uBaseAddr_MEM_HdmiFrameBuffer;

   // Frame #1 - Red pixels
   for (i = 0; i < storage_size / config->uNumFrames_HdmiFrameBuffer; i += 4) {
	   *pStorageMem++ = 0xF0525A52;
   }
   // Frame #2 - Green pixels
   for (i = 0; i < storage_size / config->uNumFrames_HdmiFrameBuffer; i += 4) {
	   *pStorageMem++ = 0x36912291;
   }
   // Frame #3 - Blue pixels
   for (i = 0; i < storage_size / config->uNumFrames_HdmiFrameBuffer; i += 4) {
	   *pStorageMem++ = 0x6E29F029;
   }

   // Initialize Output Side of AXI VDMA
   xil_printf( "Video DMA (Output Side) Initialization ...\n\r" );
   vfb_common_init(
      config->uDeviceId_VDMA_HdmiFrameBuffer, // uDeviceId
      &(config->vdma_hdmi)                    // pAxiVdma
      );
   vfb_tx_init(
      &(config->vdma_hdmi),                   // pAxiVdma
      &(config->vdmacfg_hdmi_read),           // pReadCfg
      config->hdmio_resolution,               // uVideoResolution
      config->hdmio_resolution,               // uStorageResolution
      config->uBaseAddr_MEM_HdmiFrameBuffer,  // uMemAddr
      config->uNumFrames_HdmiFrameBuffer      // uNumFrames
      );

   // Initialize Input Side of AXI VDMA
   xil_printf( "Video DMA (Input Side) Initialization ...\n\r" );
   vfb_rx_init(
      &(config->vdma_hdmi),                   // pAxiVdma
      &(config->vdmacfg_hdmi_write),          // pWriteCfg
      config->hdmio_resolution,               // uVideoResolution
      config->hdmio_resolution,               // uStorageResolution
      config->uBaseAddr_MEM_HdmiFrameBuffer + 0x7E9000,  // uMemAddr
      config->uNumFrames_HdmiFrameBuffer      // uNumFrames
      );

   sleep(1); // Version of sleep() we are using is off by 64X.

   // Status of AXI VDMA
   vfb_dump_registers( &(config->vdma_hdmi) );
   if ( vfb_check_errors( &(config->vdma_hdmi), 1/*clear errors, if any*/ ) ) {
      vfb_dump_registers( &(config->vdma_hdmi) );
   }

   xil_printf("\n\r");
   xil_printf( "Done\n\r" );
   xil_printf("\n\r");

   return 0;
}
