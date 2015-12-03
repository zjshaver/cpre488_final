/******************************************************************************
* (c) Copyright 2012 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information
* of Xilinx, Inc. and is protected under U.S. and
* international copyright and other intellectual property
* laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any
* rights to the materials distributed herewith. Except as
* otherwise provided in a valid license issued to you by
* Xilinx, and to the maximum extent permitted by applicable
* law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
* WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
* AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
* BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
* INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
* (2) Xilinx shall not be liable (whether in contract or tort,
* including negligence, or under any other theory of
* liability) for any loss or damage of any kind or nature
* related to, arising under or in connection with these
* materials, including for any direct, or any indirect,
* special, incidental, or consequential loss or damage
* (including loss of data, profits, goodwill, or any type of
* loss or damage suffered as a result of any action brought
* by a third party) even if such damage or loss was
* reasonably foreseeable or Xilinx had been advised of the
* possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-
* safe, or for use in any application requiring fail-safe
* performance, such as life-support or safety devices or
* systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any
* other applications that could lead to death, personal
* injury, or severe property or environmental damage
* (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and
* liability of any use of Xilinx products in Critical
* Applications, subject only to applicable laws and
* regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
* PART OF THIS FILE AT ALL TIMES.
******************************************************************************/

/*****************************************************************************/
/**
*
* @file rgb2ycrcb.c
*
* This is main code of Xilinx RGB to YCrCb Color Space Converter (RGB2YCRCB)
* device driver. Please see rgb2ycrcb.h for more details of the driver.
*
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -------------------------------------------------------
* 5.00a tb   02/27/12 Updated for RGB2YCRCB v5.00.a 
*
******************************************************************************/

/***************************** Include Files *********************************/

#include "rgb2ycrcb.h"
#include "xenv.h"



/*****************************************************************************/
// Note: Most of the functions are currently implemented as high-performance 
// macros within rgb2ycrcb.h
/*****************************************************************************/

/*****************************************************************************/
/**
*
* Select input coefficients for 4 supported Standards and 3 Input Ranges.
*
* @param standard_sel is the standards selection: 0 = SD_ITU_601 
*                                                 1 = HD_ITU_709__1125_NTSC
*                                                 2 = HD_ITU_709__1250_PAL
*                                                 3 = YUV
* @param input_range is the limit on the range of the data: 0 = 16_to_240_for_TV, 
*                                                           1 = 16_to_235_for_Studio_Equipment, 
*                                                           3 = 0_to_255_for_Computer_Graphics
* @param data_width has a valid range of [8,10,12,16]
* @param coef_in is a pointer to a rgb_coef_inputs data structure.
*
* @return   None.
*
* @note
*
******************************************************************************/
void RGB_select_standard(int standard_sel, int input_range, int data_width, struct rgb_coef_inputs *coef_in)
{
  double acoef[4][3] = {0.299, 0.299,  0.2568, 0.299, 0.299,  0.2568, 0.2126, 0.2126, 0.1819, 0.299,    0.299,    0.299};
  double bcoef[4][3] = {0.114, 0.114,  0.0979, 0.114, 0.114,  0.0979, 0.0722, 0.0722, 0.0618, 0.114,    0.114,    0.114};
  double ccoef[4][3] = {0.713, 0.7295, 0.5910, 0.713, 0.7295, 0.5910, 0.6350, 0.6495, 0.6495, 0.877283, 0.877283, 0.877283};
  double dcoef[4][3] = {0.564, 0.5772, 0.5772, 0.564, 0.5772, 0.5772, 0.5389, 0.5512, 0.5512, 0.492111, 0.492111, 0.492111};
  int yoffset = 1<<(data_width-4);
  int coffset = 1<<(data_width-1);
  int max[3] = {(240*(1<<(data_width-8))), (235*(1<<(data_width-8))), ((1<<data_width)-1)};
  int min[3] = { (16*(1<<(data_width-8))),  (16*(1<<(data_width-8))), 0};

  coef_in->acoef = acoef[standard_sel][input_range];
  coef_in->bcoef = bcoef[standard_sel][input_range];
  coef_in->ccoef = ccoef[standard_sel][input_range];
  coef_in->dcoef = dcoef[standard_sel][input_range];
  coef_in->yoffset  = yoffset;
  coef_in->cboffset = coffset;
  coef_in->croffset = coffset;
  coef_in->ymax = max[input_range];
  coef_in->ymin = min[input_range];
  coef_in->cbmax = max[input_range];
  coef_in->cbmin = min[input_range];
  coef_in->crmax = max[input_range];
  coef_in->crmin = min[input_range];
}


/*****************************************************************************/
/**
*
* Translate input coefficients into coefficients that can be programmed into the 
* RGB2YCrCb core.
*
* @param coef_in is a pointer to a rgb_coef_inputs data structure.
* @param coef_out is a pointer to a rgb_coef_output data structure.
*
* @return   The 32-bit value: bit(0)= Acoef + Bcoef > 1.0
*                             bit(1)= Y Offset outside data width range  [-2^data_width, (2^data_width)-1]
*                             bit(2)= Cb Offset outside data width range [-2^data_width, (2^data_width)-1]
*                             bit(3)= Cr Offset outside data width range [-2^data_width, (2^data_width)-1]
*                             bit(4)= Y Max outside data width range  [0, (2^data_width)-1]
*                             bit(5)= Y Min outside data width range  [0, (2^data_width)-1]
*                             bit(6)= Cb Max outside data width range [0, (2^data_width)-1]
*                             bit(7)= Cb Min outside data width range [0, (2^data_width)-1]
*                             bit(8)= Cr Max outside data width range [0, (2^data_width)-1]
*                             bit(9)= Cr Min outside data width range [0, (2^data_width)-1]
*
* @note
*
******************************************************************************/
int RGB_coefficient_translation(struct rgb_coef_inputs *coef_in, struct rgb_coef_outputs *coef_out, int data_width)
{
  int ret_val = 0;

  if((coef_in->acoef + coef_in->bcoef) > 1.0) {
    xil_printf("WARNING: Acoef (%lf) + Bcoef (%lf) can not be more then 1.0\r\n",coef_in->acoef, coef_in->bcoef);
    ret_val = ret_val | 0x1;
  }
  if(coef_in->yoffset < -(1<<data_width) || coef_in->yoffset > (1<<data_width)-1) {
    xil_printf("WARNING: Y Offset (%d) is outside the data width range [%d, %d]\r\n",
               coef_in->yoffset,-(1<<data_width), (1<<data_width)-1);
    ret_val = ret_val | 0x2;
  }
  if(coef_in->cboffset < -(1<<data_width) || coef_in->cboffset > (1<<data_width)-1) {
    xil_printf("WARNING: Cb Offset (%d) is outside the data width range [%d, %d]\r\n",
               coef_in->cboffset,-(1<<data_width), (1<<data_width)-1);
    ret_val = ret_val | 0x4;
  }
  if(coef_in->croffset < -(1<<data_width) || coef_in->croffset > (1<<data_width)-1) {
    xil_printf("WARNING: Cr Offset (%d) is outside the data width range [%d, %d]\r\n",
               coef_in->croffset,-(1<<data_width), (1<<data_width)-1);
    ret_val = ret_val | 0x8;
  }
  if(coef_in->ymax < 0 || coef_in->ymax > (1<<data_width)-1) {
    xil_printf("WARNING: Y Max (%d) is outside the data width range [0, %d]\r\n",
               coef_in->ymax, (1<<data_width)-1);
    ret_val = ret_val | 0x10;
  }
  if(coef_in->ymin < 0 || coef_in->ymin > (1<<data_width)-1) {
    xil_printf("WARNING: Y Min (%d) is outside the data width range [0, %d]\r\n",
               coef_in->ymin, (1<<data_width)-1);
    ret_val = ret_val | 0x20;
  }
  if(coef_in->cbmax < 0 || coef_in->cbmax > (1<<data_width)-1) {
    xil_printf("WARNING: Cb Max (%d) is outside the data width range [0, %d]\r\n",
               coef_in->cbmax, (1<<data_width)-1);
    ret_val = ret_val | 0x40;
  }
  if(coef_in->cbmin < 0 || coef_in->cbmin > (1<<data_width)-1) {
    xil_printf("WARNING: Cb Min (%d) is outside the data width range [0, %d]\r\n",
               coef_in->cbmin, (1<<data_width)-1);
    ret_val = ret_val | 0x80;
  }
  if(coef_in->crmax < 0 || coef_in->crmax > (1<<data_width)-1) {
    xil_printf("WARNING: Cr Max (%d) is outside the data width range [0, %d]\r\n",
               coef_in->crmax, (1<<data_width)-1);
    ret_val = ret_val | 0x100;
  }
  if(coef_in->crmin < 0 || coef_in->crmin > (1<<data_width)-1) {
    xil_printf("WARNING: Cr Min (%d) is outside the data width range [0, %d]\r\n",
               coef_in->crmin, (1<<data_width)-1);
    ret_val = ret_val | 0x200;
  }

  coef_out->acoef = coef_in->acoef * (1<<16);
  coef_out->bcoef = coef_in->bcoef * (1<<16);
  coef_out->ccoef = coef_in->ccoef * (1<<16);
  coef_out->dcoef = coef_in->dcoef * (1<<16);
  coef_out->yoffset  = coef_in->yoffset;
  coef_out->cboffset = coef_in->cboffset;
  coef_out->croffset = coef_in->croffset;
  coef_out->ymax  = coef_in->ymax;
  coef_out->ymin  = coef_in->ymin;
  coef_out->cbmax = coef_in->cbmax;
  coef_out->cbmin = coef_in->cbmin;
  coef_out->crmax = coef_in->crmax;
  coef_out->crmin = coef_in->crmin;

  return ret_val;
}

/*****************************************************************************/
/**
*
* Program the RGB2YCrCb coefficient/offset registers.
*
* @param BaseAddress is the Xilinx EDK base address of the RGB2YCrCb core (from xparameters.h)
* @param coef_out is a pointer to a rgb_coef_output data structure.
*
* @return   None.
*
* @note
*
******************************************************************************/
void RGB_set_coefficients(Xuint32 BaseAddress, struct rgb_coef_outputs *coef_out)
{
    RGB_WriteReg(BaseAddress, RGB_ACOEF, coef_out->acoef);       //ACOEF
    RGB_WriteReg(BaseAddress, RGB_BCOEF, coef_out->bcoef);       //BCOEF
    RGB_WriteReg(BaseAddress, RGB_CCOEF, coef_out->ccoef);       //CCOEF
    RGB_WriteReg(BaseAddress, RGB_DCOEF, coef_out->dcoef);       //DCOEF
    RGB_WriteReg(BaseAddress, RGB_YOFFSET,  coef_out->yoffset);  //YOFFSET
    RGB_WriteReg(BaseAddress, RGB_CBOFFSET, coef_out->cboffset); //CBOFFSET
    RGB_WriteReg(BaseAddress, RGB_CROFFSET, coef_out->croffset); //CROFFSET
    RGB_WriteReg(BaseAddress, RGB_YMAX, coef_out->ymax);         //YMAX
    RGB_WriteReg(BaseAddress, RGB_YMIN, coef_out->ymin);         //YMIN
    RGB_WriteReg(BaseAddress, RGB_CBMAX,coef_out->cbmax);        //CBMAX
    RGB_WriteReg(BaseAddress, RGB_CBMIN, coef_out->cbmin);       //CBMIN
    RGB_WriteReg(BaseAddress, RGB_CRMAX, coef_out->crmax);       //CRMAX
    RGB_WriteReg(BaseAddress, RGB_CRMIN, coef_out->crmin);       //CRMIN

}

/*****************************************************************************/
/**
*
* Read the RGB2YCrCb coefficient/offset registers.
*
* @param BaseAddress is the Xilinx EDK base address of the RGB2YCrCb core (from xparameters.h)
* @param coef_out is a pointer to a rgb_coef_output data structure.
*
* @return   None.
*
* @note
*
******************************************************************************/
void RGB_get_coefficients(Xuint32 BaseAddress, struct rgb_coef_outputs *coef_out)
{
  coef_out->acoef = RGB_ReadReg(BaseAddress, RGB_ACOEF); 
  coef_out->bcoef = RGB_ReadReg(BaseAddress, RGB_BCOEF); 
  coef_out->ccoef = RGB_ReadReg(BaseAddress, RGB_CCOEF); 
  coef_out->dcoef = RGB_ReadReg(BaseAddress, RGB_DCOEF);

  coef_out->yoffset  = RGB_ReadReg(BaseAddress, RGB_YOFFSET);
  coef_out->cboffset = RGB_ReadReg(BaseAddress, RGB_CBOFFSET); 
  coef_out->croffset = RGB_ReadReg(BaseAddress, RGB_CROFFSET);

  coef_out->ymax = RGB_ReadReg(BaseAddress, RGB_YMAX); 
  coef_out->ymin = RGB_ReadReg(BaseAddress, RGB_YMIN);

  coef_out->cbmax = RGB_ReadReg(BaseAddress, RGB_CBMAX);
  coef_out->cbmax = RGB_ReadReg(BaseAddress, RGB_CBMIN);

  coef_out->crmax = RGB_ReadReg(BaseAddress, RGB_CRMAX);
  coef_out->crmax = RGB_ReadReg(BaseAddress, RGB_CRMIN);

}
