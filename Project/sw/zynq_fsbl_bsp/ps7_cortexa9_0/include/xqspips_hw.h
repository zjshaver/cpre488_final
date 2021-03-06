/******************************************************************************
*
* (c) Copyright 2010-13 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
******************************************************************************/
/*****************************************************************************/
/**
*
* @file xqspips_hw.h
*
* This header file contains the identifiers and basic HW access driver
* functions (or  macros) that can be used to access the device. Other driver
* functions are defined in xqspips.h.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who Date     Changes
* ----- --- -------- -----------------------------------------------
* 1.00  sdm 11/25/10 First release
* 2.00a ka  07/25/12 Added a few register defines for CR 670297
*		     and removed some defines of reserved fields for
*		     CR 671468
*		     Added define XQSPIPS_CR_HOLD_B_MASK for Holdb_dr
*		     bit in Configuration register.
* 2.01a sg  02/03/13 Added defines for DelayNss,Rx Watermark,Interrupts
*		     which need write to clear. Removed Read zeros mask from
*		     LQSPI Config register.
* </pre>
*
******************************************************************************/
#ifndef XQSPIPS_HW_H		/* prevent circular inclusions */
#define XQSPIPS_HW_H		/* by using protection macros */

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/

#include "xil_types.h"
#include "xil_assert.h"
#include "xil_io.h"
#include "xparameters.h"

/************************** Constant Definitions *****************************/

/** @name Register Map
 *
 * Register offsets from the base address of an QSPI device.
 * @{
 */
#define XQSPIPS_CR_OFFSET	 	0x00 /**< Configuration Register */
#define XQSPIPS_SR_OFFSET	 	0x04 /**< Interrupt Status */
#define XQSPIPS_IER_OFFSET	 	0x08 /**< Interrupt Enable */
#define XQSPIPS_IDR_OFFSET	 	0x0c /**< Interrupt Disable */
#define XQSPIPS_IMR_OFFSET	 	0x10 /**< Interrupt Enabled Mask */
#define XQSPIPS_ER_OFFSET	 	0x14 /**< Enable/Disable Register */
#define XQSPIPS_DR_OFFSET	 	0x18 /**< Delay Register */
#define XQSPIPS_TXD_00_OFFSET	 	0x1C /**< Transmit 4-byte inst/data */
#define XQSPIPS_RXD_OFFSET	 	0x20 /**< Data Receive Register */
#define XQSPIPS_SICR_OFFSET	 	0x24 /**< Slave Idle Count */
#define XQSPIPS_TXWR_OFFSET	 	0x28 /**< Transmit FIFO Watermark */
#define XQSPIPS_RXWR_OFFSET	 	0x2C /**< Receive FIFO Watermark */
#define XQSPIPS_GPIO_OFFSET	 	0x30 /**< GPIO Register */
#define XQSPIPS_LPBK_DLY_ADJ_OFFSET	0x38 /**< Loopback Delay Adjust Reg */
#define XQSPIPS_TXD_01_OFFSET	 	0x80 /**< Transmit 1-byte inst */
#define XQSPIPS_TXD_10_OFFSET	 	0x84 /**< Transmit 2-byte inst */
#define XQSPIPS_TXD_11_OFFSET	 	0x88 /**< Transmit 3-byte inst */
#define XQSPIPS_LQSPI_CR_OFFSET  	0xA0 /**< Linear QSPI config register */
#define XQSPIPS_LQSPI_SR_OFFSET  	0xA4 /**< Linear QSPI status register */
#define XQSPIPS_MOD_ID_OFFSET  		0xFC /**< Module ID register */

/* @} */

/** @name Configuration Register
 *
 * This register contains various control bits that
 * affect the operation of the QSPI device. Read/Write.
 * @{
 */

#define XQSPIPS_CR_IFMODE_MASK    0x80000000 /**< Flash mem interface mode */
#define XQSPIPS_CR_ENDIAN_MASK    0x04000000 /**< Tx/Rx FIFO endianness */
#define XQSPIPS_CR_MANSTRT_MASK   0x00010000 /**< Manual Transmission Start */
#define XQSPIPS_CR_MANSTRTEN_MASK 0x00008000 /**< Manual Transmission Start
						   Enable */
#define XQSPIPS_CR_SSFORCE_MASK   0x00004000 /**< Force Slave Select */
#define XQSPIPS_CR_SSCTRL_MASK    0x00000400 /**< Slave Select Decode */
#define XQSPIPS_CR_SSCTRL_SHIFT   10	      /**< Slave Select Decode shift */
#define XQSPIPS_CR_DATA_SZ_MASK   0x000000C0 /**< Size of word to be
						   transferred */
#define XQSPIPS_CR_PRESC_MASK     0x00000038 /**< Prescaler Setting */
#define XQSPIPS_CR_PRESC_SHIFT    3	      /**< Prescaler shift */
#define XQSPIPS_CR_PRESC_MAXIMUM  0x07	      /**< Prescaler maximum value */

#define XQSPIPS_CR_CPHA_MASK      0x00000004 /**< Phase Configuration */
#define XQSPIPS_CR_CPOL_MASK      0x00000002 /**< Polarity Configuration */

#define XQSPIPS_CR_MSTREN_MASK    0x00000001 /**< Master Mode Enable */

#define XQSPIPS_CR_HOLD_B_MASK    0x00080000 /**< HOLD_B Pin Drive Enable */

/* Deselect the Slave select line and set the transfer size to 32 at reset */
#define XQSPIPS_CR_RESET_STATE    (XQSPIPS_CR_IFMODE_MASK | \
				   XQSPIPS_CR_SSCTRL_MASK | \
				   XQSPIPS_CR_DATA_SZ_MASK | \
				   XQSPIPS_CR_MSTREN_MASK)
/* @} */


/** @name QSPI Interrupt Registers
 *
 * <b>QSPI Status Register</b>
 *
 * This register holds the interrupt status flags for an QSPI device. Some
 * of the flags are level triggered, which means that they are set as long
 * as the interrupt condition exists. Other flags are edge triggered,
 * which means they are set once the interrupt condition occurs and remain
 * set until they are cleared by software. The interrupts are cleared by
 * writing a '1' to the interrupt bit position in the Status Register.
 * Read/Write.
 *
 * <b>QSPI Interrupt Enable Register</b>
 *
 * This register is used to enable chosen interrupts for an QSPI device.
 * Writing a '1' to a bit in this register sets the corresponding bit in the
 * QSPI Interrupt Mask register.  Write only.
 *
 * <b>QSPI Interrupt Disable Register </b>
 *
 * This register is used to disable chosen interrupts for an QSPI device.
 * Writing a '1' to a bit in this register clears the corresponding bit in the
 * QSPI Interrupt Mask register. Write only.
 *
 * <b>QSPI Interrupt Mask Register</b>
 *
 * This register shows the enabled/disabled interrupts of an QSPI device.
 * Read only.
 *
 * All four registers have the same bit definitions. They are only defined once
 * for each of the Interrupt Enable Register, Interrupt Disable Register,
 * Interrupt Mask Register, and Channel Interrupt Status Register
 * @{
 */

#define XQSPIPS_IXR_TXUF_MASK	   0x00000040  /**< QSPI Tx FIFO Underflow */
#define XQSPIPS_IXR_RXFULL_MASK    0x00000020  /**< QSPI Rx FIFO Full */
#define XQSPIPS_IXR_RXNEMPTY_MASK  0x00000010  /**< QSPI Rx FIFO Not Empty */
#define XQSPIPS_IXR_TXFULL_MASK    0x00000008  /**< QSPI Tx FIFO Full */
#define XQSPIPS_IXR_TXOW_MASK	   0x00000004  /**< QSPI Tx FIFO Overwater */
#define XQSPIPS_IXR_RXOVR_MASK	   0x00000001  /**< QSPI Rx FIFO Overrun */
#define XQSPIPS_IXR_DFLT_MASK	   0x00000025  /**< QSPI default interrupts
						    mask */
#define XQSPIPS_IXR_WR_TO_CLR_MASK 0x00000041  /**< Interrupts which
						    need write to clear */
#define XQSPIPS_ISR_RESET_STATE   0x04        /**< Default to tx/rx empty */
/* @} */


/** @name Enable Register
 *
 * This register is used to enable or disable an QSPI device.
 * Read/Write
 * @{
 */
#define XQSPIPS_ER_ENABLE_MASK    0x00000001 /**< QSPI Enable Bit Mask */
/* @} */


/** @name Delay Register
 *
 * This register is used to program timing delays in
 * slave mode. Read/Write
 * @{
 */
#define XQSPIPS_DR_NSS_MASK	0xFF000000 /**< Delay to de-assert slave select
						between two words mask */
#define XQSPIPS_DR_NSS_SHIFT	24	   /**< Delay to de-assert slave select
						between two words shift */
#define XQSPIPS_DR_BTWN_MASK	0x00FF0000 /**< Delay Between Transfers
						mask */
#define XQSPIPS_DR_BTWN_SHIFT	16	   /**< Delay Between Transfers shift */
#define XQSPIPS_DR_AFTER_MASK	0x0000FF00 /**< Delay After Transfers mask */
#define XQSPIPS_DR_AFTER_SHIFT	8 	   /**< Delay After Transfers shift */
#define XQSPIPS_DR_INIT_MASK	0x000000FF /**< Delay Initially mask */
/* @} */

/** @name Slave Idle Count Registers
 *
 * This register defines the number of pclk cycles the slave waits for a the
 * QSPI clock to become stable in quiescent state before it can detect the start
 * of the next transfer in CPHA = 1 mode.
 * Read/Write
 *
 * @{
 */
#define XQSPIPS_SICR_MASK	0x000000FF /**< Slave Idle Count Mask */
/* @} */


/** @name Transmit FIFO Watermark Register
 *
 * This register defines the watermark setting for the Transmit FIFO.
 *
 * @{
 */
#define XQSPIPS_TXWR_MASK	0x0000003F /**< Transmit Watermark Mask */
/* @} */

/** @name Receive FIFO Watermark Register
 *
 * This register defines the watermark setting for the Receive FIFO.
 *
 * @{
 */
#define XQSPIPS_RXWR_MASK	0x0000003F /**< Receive Watermark Mask */
/* @} */

/** @name FIFO Depth
 *
 * This macro provides the depth of transmit FIFO and receive FIFO.
 *
 * @{
 */
#define XQSPIPS_FIFO_DEPTH	63	/**< FIFO depth (words) */
/* @} */


/** @name Linear QSPI Configuration Register
 *
 * This register contains various control bits that
 * affect the operation of the Linear QSPI controller. Read/Write.
 *
 * @{
 */
#define XQSPIPS_LQSPI_CR_LINEAR_MASK	 0x80000000 /**< LQSPI mode enable */
#define XQSPIPS_LQSPI_CR_TWO_MEM_MASK	 0x40000000 /**< Both memories or one */
#define XQSPIPS_LQSPI_CR_SEP_BUS_MASK	 0x20000000 /**< Seperate memory bus */
#define XQSPIPS_LQSPI_CR_U_PAGE_MASK	 0x10000000 /**< Upper memory page */
#define XQSPIPS_LQSPI_CR_MODE_EN_MASK	 0x02000000 /**< Enable mode bits */
#define XQSPIPS_LQSPI_CR_MODE_ON_MASK	 0x01000000 /**< Mode on */
#define XQSPIPS_LQSPI_CR_MODE_BITS_MASK  0x00FF0000 /**< Mode value for dual I/O
							 or quad I/O */
#define XQSPIPS_LQSPI_CR_DUMMY_MASK	 0x00000700 /**< Number of dummy bytes
							 between addr and return
							 read data */
#define XQSPIPS_LQSPI_CR_INST_MASK	 0x000000FF /**< Read instr code */
#define XQSPIPS_LQSPI_CR_RST_STATE	 0x8000016B /**< Default CR value */
/* @} */

/** @name Linear QSPI Status Register
 *
 * This register contains various status bits of the Linear QSPI controller.
 * Read/Write.
 *
 * @{
 */
#define XQSPIPS_LQSPI_SR_D_FSM_ERR_MASK	  0x00000004 /**< AXI Data FSM Error
							  received */
#define XQSPIPS_LQSPI_SR_WR_RECVD_MASK	  0x00000002 /**< AXI write command
							  received */
/* @} */


/** @name Loopback Delay Adjust Register
 *
 * This register contains various bit masks of Loopback Delay Adjust Register.
 *
 * @{
 */

#define XQSPIPS_LPBK_DLY_ADJ_USE_LPBK_MASK 0x00000020 /**< Loopback Bit */

/* @} */


/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

#define XQspiPs_In32 Xil_In32
#define XQspiPs_Out32 Xil_Out32

/****************************************************************************/
/**
* Read a register.
*
* @param	BaseAddress contains the base address of the device.
* @param	RegOffset contains the offset from the 1st register of the
*		device to the target register.
*
* @return	The value read from the register.
*
* @note		C-Style signature:
*		u32 XQspiPs_ReadReg(u32 BaseAddress. int RegOffset)
*
******************************************************************************/
#define XQspiPs_ReadReg(BaseAddress, RegOffset) \
	XQspiPs_In32((BaseAddress) + (RegOffset))

/***************************************************************************/
/**
* Write to a register.
*
* @param	BaseAddress contains the base address of the device.
* @param	RegOffset contains the offset from the 1st register of the
*		device to target register.
* @param	RegisterValue is the value to be written to the register.
*
* @return	None.
*
* @note		C-Style signature:
*		void XQspiPs_WriteReg(u32 BaseAddress, int RegOffset,
*		u32 RegisterValue)
*
******************************************************************************/
#define XQspiPs_WriteReg(BaseAddress, RegOffset, RegisterValue) \
	XQspiPs_Out32((BaseAddress) + (RegOffset), (RegisterValue))

/************************** Function Prototypes ******************************/

/************************** Variable Definitions *****************************/

#ifdef __cplusplus
}
#endif

#endif /* end of protection macro */
