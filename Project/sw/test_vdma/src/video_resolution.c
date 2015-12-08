/*****************************************************************************
 * Joseph Zambreno
 * Phillip Jones
 *
 * Department of Electrical and Computer Engineering
 * Iowa State University
 *****************************************************************************/

/*****************************************************************************
 * video_resolution.c - Video resolution lookup functions. Contains information
 * that would have been nice to know in MP-0.
 *
 *
 * NOTES:
 * 02/04/14 by JAZ::Design created.
 *****************************************************************************/

#include "camera_app.h"

vres_timing_t vres_resolutions[NUM_VIDEO_RESOLUTIONS] = {
   // name     vav,  vfp,  vsw,  vbp,  vsp,  hav,  hfp,  hsw,  hbp,  hsp
   { "VGA",    480,   10,    2,   33,    0,  640,   16,   96,   48,    0 }, // VIDEO_RESOLUTION_VGA
   { "NTSC",   480,    9,    6,   30,    1,  720,   16,   62,   60,    1 }, // VIDEO_RESOLUTION_NTSC
   { "SVGA",   600,    1,    4,   23,    1,  800,   40,  128,   88,    1 }, // VIDEO_RESOLUTION_SVGA
   { "XGA",    768,    3,    6,   29,    0, 1024,   24,  136,  160,    0 }, // VIDEO_RESOLUTION_XGA
   { "720P",   720,    5,    5,   20,    1, 1280,  110,   40,  220,    1 }, // VIDEO_RESOLUTION_720P
   { "SXGA",  1024,    1,    3,   26,    0, 1280,   48,  184,  200,    0 }, // VIDEO_RESOLUTION_SXGA
   { "1080P", 1080,    4,    5,   36,    1, 1920,   88,   44,  148,    1 }, // VIDEO_RESOLUTION_1080P
   { "UXGA",  1200,    1,    3,   46,    0, 1600,   64,  192,  304,    0 }  // VIDEO_RESOLUTION_UXGA
};

char *vres_get_name(Xuint32 resolutionId)
{
   if ( resolutionId < NUM_VIDEO_RESOLUTIONS )
   {
      return vres_resolutions[resolutionId].pName;
   }
   else
   {
      return "{UNKNOWN}";
   }
}

Xuint32 vres_get_width(Xuint32 resolutionId)
{
   return vres_resolutions[resolutionId].HActiveVideo; // horizontal active
}

Xuint32 vres_get_height(Xuint32 resolutionId)
{
   return vres_resolutions[resolutionId].VActiveVideo; // vertical active
}

Xuint32 vres_get_timing(Xuint32 ResolutionId, vres_timing_t *pTiming )
{
	pTiming->pName         = vres_resolutions[ResolutionId].pName;
	pTiming->HActiveVideo  = vres_resolutions[ResolutionId].HActiveVideo;
	pTiming->HFrontPorch   = vres_resolutions[ResolutionId].HFrontPorch;
	pTiming->HSyncWidth    = vres_resolutions[ResolutionId].HSyncWidth;
	pTiming->HBackPorch    = vres_resolutions[ResolutionId].HBackPorch;
	pTiming->HSyncPolarity = vres_resolutions[ResolutionId].HSyncPolarity;
	pTiming->VActiveVideo  = vres_resolutions[ResolutionId].VActiveVideo;
	pTiming->VFrontPorch   = vres_resolutions[ResolutionId].VFrontPorch;
	pTiming->VSyncWidth    = vres_resolutions[ResolutionId].VSyncWidth;
	pTiming->VBackPorch    = vres_resolutions[ResolutionId].VBackPorch;
	pTiming->VSyncPolarity = vres_resolutions[ResolutionId].VSyncPolarity;

	return 0;
}

Xint32 vres_detect( Xuint32 width, Xuint32 height )
{
  Xint32 i;
  Xint32 resolution = -1;

  for ( i = 0; i < NUM_VIDEO_RESOLUTIONS; i++ )
  {
     if ( width == vres_get_width(i) && height == vres_get_height(i) )
     {
        //xil_printf( "Detected Video Resolution = %s\r\n", vres_get_name(i) );
        resolution = i;
        break;
     }
  }  
  return resolution;
}

