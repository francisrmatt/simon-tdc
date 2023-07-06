# ----------------------------------------------------------------------------
#     _____
#    /     \
#   /____   \____
#  / \===\   \==/
# /___\===\___\/  AVNET Design Resource Center
#      \======/         www.em.avnet.com/drc
#       \====/    
# ----------------------------------------------------------------------------
# 
#  Created With Avnet UCF Generator V0.4.0 
#     Date: Saturday, June 30, 2012 
#     Time: 12:18:55 AM 
# 
#  This design is the property of Avnet.  Publication of this
#  design is not authorized without written consent from Avnet.
#  
#  Please direct any questions to:
#     ZedBoard.org Community Forums
#     http://www.zedboard.org
# 
#  Disclaimer:
#     Avnet, Inc. makes no warranty for the use of this code or design.
#     This code is provided  "As Is". Avnet, Inc assumes no responsibility for
#     any errors, which may appear in this code, nor does it make a commitment
#     to update the information contained herein. Avnet, Inc specifically
#     disclaims any implied warranties of fitness for a particular purpose.
#                      Copyright(c) 2012 Avnet, Inc.
#                              All rights reserved.
# 
# ----------------------------------------------------------------------------
# 
#  Notes:
# 
#  10 August 2012
#     IO standards based upon Bank 34 and Bank 35 Vcco supply options of 1.8V, 
#     2.5V, or 3.3V are possible based upon the Vadj jumper (J18) settings.  
#     By default, Vadj is expected to be set to 1.8V but if a different 
#     voltage is used for a particular design, then the corresponding IO 
#     standard within this UCF should also be updated to reflect the actual 
#     Vadj jumper selection.
# 
#  09 September 2012
#     Net names are not allowed to contain hyphen characters '-' since this
#     is not a legal VHDL87 or Verilog character within an identifier.  
#     HDL net names are adjusted to contain no hyphen characters '-' but 
#     rather use underscore '_' characters.  Comment net name with the hyphen 
#     characters will remain in place since these are intended to match the 
#     schematic net names in order to better enable schematic search.
#
#  17 April 2014
#     Pin constraint for toggle switch SW7 was corrected to M15 location.
#
#  16 April 2015
#     Corrected the way that entire banks are assigned to a particular IO
#     standard so that it works with more recent versions of Vivado Design
#     Suite and moved the IO standard constraints to the end of the file 
#     along with some better organization and notes like we do with our SOMs.
#
#   6 June 2016
#     Corrected error in signal name for package pin N19 (FMC Expansion Connector)
#	
#
# ----------------------------------------------------------------------------

# ----------------------------------------------------------------------------
# Audio Codec - Bank 13
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN AB1 [get_ports {AC_ADR0}];  # "AC-ADR0"
#set_property PACKAGE_PIN Y5  [get_ports {AC_ADR1}];  # "AC-ADR1"
#set_property PACKAGE_PIN Y8  [get_ports {SDATA_O}];  # "AC-GPIO0"
#set_property PACKAGE_PIN AA7 [get_ports {SDATA_I}];  # "AC-GPIO1"
#set_property PACKAGE_PIN AA6 [get_ports {BCLK_O}];  # "AC-GPIO2"
#set_property PACKAGE_PIN Y6  [get_ports {LRCLK_O}];  # "AC-GPIO3"
#set_property PACKAGE_PIN AB2 [get_ports {MCLK_O}];  # "AC-MCLK"
#set_property PACKAGE_PIN AB4 [get_ports {iic_rtl_scl_io}];  # "AC-SCK"
#set_property PACKAGE_PIN AB5 [get_ports {iic_rtl_sda_io}];  # "AC-SDA"

# ----------------------------------------------------------------------------
# Clock Source - Bank 13
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN Y9 [get_ports {clk}];  # "GCLK"

# ----------------------------------------------------------------------------
# JA Pmod - Bank 13 
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN Y11  [get_ports {tx}];  # "JA1"
#set_property PACKAGE_PIN AA8  [get_ports {JA10}];  # "JA10"
set_property PACKAGE_PIN AA11 [get_ports {rx}];  # "JA2"
#set_property PACKAGE_PIN Y10  [get_ports {PWR}];  # "JA3"
#set_property PACKAGE_PIN AA9  [get_ports {JA4}];  # "JA4"
#set_property PACKAGE_PIN AB11 [get_ports {JA7}];  # "JA7"
#set_property PACKAGE_PIN AB10 [get_ports {JA8}];  # "JA8"
#set_property PACKAGE_PIN AB9  [get_ports {JA9}];  # "JA9"


# ----------------------------------------------------------------------------
# JB Pmod - Bank 13
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN W12 [get_ports {JB1}];  # "JB1"
#set_property PACKAGE_PIN W11 [get_ports {JB2}];  # "JB2"
#set_property PACKAGE_PIN V10 [get_ports {JB3}];  # "JB3"
#set_property PACKAGE_PIN W8 [get_ports {JB4}];  # "JB4"
#set_property PACKAGE_PIN V12 [get_ports {JB7}];  # "JB7"
#set_property PACKAGE_PIN W10 [get_ports {JB8}];  # "JB8"
#set_property PACKAGE_PIN V9 [get_ports {JB9}];  # "JB9"
#set_property PACKAGE_PIN V8 [get_ports {JB10}];  # "JB10"

# ----------------------------------------------------------------------------
# JC Pmod - Bank 13
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN AB6 [get_ports {JC1_N}];  # "JC1_N"
#set_property PACKAGE_PIN AB7 [get_ports {JC1_P}];  # "JC1_P"
#set_property PACKAGE_PIN AA4 [get_ports {JC2_N}];  # "JC2_N"
#set_property PACKAGE_PIN Y4  [get_ports {JC2_P}];  # "JC2_P"
#set_property PACKAGE_PIN T6  [get_ports {JC3_N}];  # "JC3_N"
#set_property PACKAGE_PIN R6  [get_ports {JC3_P}];  # "JC3_P"
#set_property PACKAGE_PIN U4  [get_ports {JC4_N}];  # "JC4_N"
#set_property PACKAGE_PIN T4  [get_ports {JC4_P}];  # "JC4_P"

# ----------------------------------------------------------------------------
# JD Pmod - Bank 13
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN W7 [get_ports {JD1_N}];  # "JD1_N"
#set_property PACKAGE_PIN V7 [get_ports {JD1_P}];  # "JD1_P"
#set_property PACKAGE_PIN V4 [get_ports {JD2_N}];  # "JD2_N"
#set_property PACKAGE_PIN V5 [get_ports {JD2_P}];  # "JD2_P"
#set_property PACKAGE_PIN W5 [get_ports {JD3_N}];  # "JD3_N"
#set_property PACKAGE_PIN W6 [get_ports {JD3_P}];  # "JD3_P"
#set_property PACKAGE_PIN U5 [get_ports {JD4_N}];  # "JD4_N"
#set_property PACKAGE_PIN U6 [get_ports {JD4_P}];  # "JD4_P"

# ----------------------------------------------------------------------------
# OLED Display - Bank 13
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN U10  [get_ports {OLED_DC}];  # "OLED-DC"
#set_property PACKAGE_PIN U9   [get_ports {OLED_RES}];  # "OLED-RES"
#set_property PACKAGE_PIN AB12 [get_ports {OLED_SCLK}];  # "OLED-SCLK"
#set_property PACKAGE_PIN AA12 [get_ports {OLED_SDIN}];  # "OLED-SDIN"
#set_property PACKAGE_PIN U11  [get_ports {OLED_VBAT}];  # "OLED-VBAT"
#set_property PACKAGE_PIN U12  [get_ports {OLED_VDD}];  # "OLED-VDD"

# ----------------------------------------------------------------------------
# HDMI Output - Bank 33
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN W18  [get_ports {HD_CLK}];  # "HD-CLK"
#set_property PACKAGE_PIN Y13  [get_ports {HD_D0}];  # "HD-D0"
#set_property PACKAGE_PIN AA13 [get_ports {HD_D1}];  # "HD-D1"
#set_property PACKAGE_PIN W13  [get_ports {HD_D10}];  # "HD-D10"
#set_property PACKAGE_PIN W15  [get_ports {HD_D11}];  # "HD-D11"
#set_property PACKAGE_PIN V15  [get_ports {HD_D12}];  # "HD-D12"
#set_property PACKAGE_PIN U17  [get_ports {HD_D13}];  # "HD-D13"
#set_property PACKAGE_PIN V14  [get_ports {HD_D14}];  # "HD-D14"
#set_property PACKAGE_PIN V13  [get_ports {HS_D15}];  # "HD-D15"
#set_property PACKAGE_PIN AA14 [get_ports {HD_D2}];  # "HD-D2"
#set_property PACKAGE_PIN Y14  [get_ports {HD_D3}];  # "HD-D3"
#set_property PACKAGE_PIN AB15 [get_ports {HD_D4}];  # "HD-D4"
#set_property PACKAGE_PIN AB16 [get_ports {HD_D5}];  # "HD-D5"
#set_property PACKAGE_PIN AA16 [get_ports {HD_D6}];  # "HD-D6"
#set_property PACKAGE_PIN AB17 [get_ports {HD_D7}];  # "HD-D7"
#set_property PACKAGE_PIN AA17 [get_ports {HD_D8}];  # "HD-D8"
#set_property PACKAGE_PIN Y15  [get_ports {HD_D9}];  # "HD-D9"
#set_property PACKAGE_PIN U16  [get_ports {HD_DE}];  # "HD-DE"
#set_property PACKAGE_PIN V17  [get_ports {HD_HSYNC}];  # "HD-HSYNC"
#set_property PACKAGE_PIN W16  [get_ports {HD_INT}];  # "HD-INT"
#set_property PACKAGE_PIN AA18 [get_ports {HD_SCL}];  # "HD-SCL"
#set_property PACKAGE_PIN Y16  [get_ports {HD_SDA}];  # "HD-SDA"
#set_property PACKAGE_PIN U15  [get_ports {HD_SPDIF}];  # "HD-SPDIF"
#set_property PACKAGE_PIN Y18  [get_ports {HD_SPDIFO}];  # "HD-SPDIFO"
#set_property PACKAGE_PIN W17  [get_ports {HD_VSYNC}];  # "HD-VSYNC"

# ----------------------------------------------------------------------------
# User LEDs - Bank 33
# ---------------------------------------------------------------------------- 
set_property PACKAGE_PIN T22 [get_ports {led[0]}];  # "LD0"
set_property PACKAGE_PIN T21 [get_ports {led[1]}];  # "LD1"
set_property PACKAGE_PIN U22 [get_ports {led[2]}];  # "LD2"
#set_property PACKAGE_PIN U21 [get_ports {LD[3]}];  # "LD3"
#set_property PACKAGE_PIN V22 [get_ports {LD[4]}];  # "LD4"
#set_property PACKAGE_PIN W22 [get_ports {LD[5]}];  # "LD5"
#set_property PACKAGE_PIN U19 [get_ports {LD[6]}];  # "LD6"
#set_property PACKAGE_PIN U14 [get_ports {HB}];  # "LD7"

# ----------------------------------------------------------------------------
# VGA Output - Bank 33
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN Y21  [get_ports {VGA_B1}];  # "VGA-B1"
#set_property PACKAGE_PIN Y20  [get_ports {VGA_B2}];  # "VGA-B2"
#set_property PACKAGE_PIN AB20 [get_ports {VGA_B3}];  # "VGA-B3"
#set_property PACKAGE_PIN AB19 [get_ports {VGA_B4}];  # "VGA-B4"
#set_property PACKAGE_PIN AB22 [get_ports {VGA_G1}];  # "VGA-G1"
#set_property PACKAGE_PIN AA22 [get_ports {VGA_G2}];  # "VGA-G2"
#set_property PACKAGE_PIN AB21 [get_ports {VGA_G3}];  # "VGA-G3"
#set_property PACKAGE_PIN AA21 [get_ports {VGA_G4}];  # "VGA-G4"
#set_property PACKAGE_PIN AA19 [get_ports {VGA_HS}];  # "VGA-HS"
#set_property PACKAGE_PIN V20  [get_ports {VGA_R1}];  # "VGA-R1"
#set_property PACKAGE_PIN U20  [get_ports {VGA_R2}];  # "VGA-R2"
#set_property PACKAGE_PIN V19  [get_ports {VGA_R3}];  # "VGA-R3"
#set_property PACKAGE_PIN V18  [get_ports {VGA_R4}];  # "VGA-R4"
#set_property PACKAGE_PIN Y19  [get_ports {VGA_VS}];  # "VGA-VS"

# ----------------------------------------------------------------------------
# User Push Buttons - Bank 34
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN P16 [get_ports {rst}];  # "BTNC"
#set_property PACKAGE_PIN R16 [get_ports {BTND}];  # "BTND"
#set_property PACKAGE_PIN N15 [get_ports {BTNL}];  # "BTNL"
#set_property PACKAGE_PIN R18 [get_ports {BTNR}];  # "BTNR"
#set_property PACKAGE_PIN T18 [get_ports {BTNU}];  # "BTNU"

# ------------------------------------------------- ---------------------------
# USB OTG Reset - Bank 34
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN L16 [get_ports {OTG_VBUSOC}];  # "OTG-VBUSOC"

# ----------------------------------------------------------------------------
# XADC GIO - Bank 34
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN H15 [get_ports {XADC_GIO0}];  # "XADC-GIO0"
#set_property PACKAGE_PIN R15 [get_ports {XADC_GIO1}];  # "XADC-GIO1"
#set_property PACKAGE_PIN K15 [get_ports {XADC_GIO2}];  # "XADC-GIO2"
#set_property PACKAGE_PIN J15 [get_ports {XADC_GIO3}];  # "XADC-GIO3"

# ----------------------------------------------------------------------------
# Miscellaneous - Bank 34
# ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN K16 [get_ports {PUDC_B}];  # "PUDC_B"

## ----------------------------------------------------------------------------
## USB OTG Reset - Bank 35
## ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN G17 [get_ports {OTG_RESETN}];  # "OTG-RESETN"

## ----------------------------------------------------------------------------
## User DIP Switches - Bank 35
## ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN F22 [get_ports {SW0}];  # "SW0"
#set_property PACKAGE_PIN G22 [get_ports {SW1}];  # "SW1"
#set_property PACKAGE_PIN H22 [get_ports {SW2}];  # "SW2"
#set_property PACKAGE_PIN F21 [get_ports {SW3}];  # "SW3"
#set_property PACKAGE_PIN H19 [get_ports {SW4}];  # "SW4"
#set_property PACKAGE_PIN H18 [get_ports {SW5}];  # "SW5"
#set_property PACKAGE_PIN H17 [get_ports {SW6}];  # "SW6"
#set_property PACKAGE_PIN M15 [get_ports {SW7}];  # "SW7"

## ----------------------------------------------------------------------------
## XADC AD Channels - Bank 35
## ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN E16 [get_ports {AD0N_R}];  # "XADC-AD0N-R"
#set_property PACKAGE_PIN F16 [get_ports {AD0P_R}];  # "XADC-AD0P-R"
#set_property PACKAGE_PIN D17 [get_ports {AD8N_N}];  # "XADC-AD8N-R"
#set_property PACKAGE_PIN D16 [get_ports {AD8P_R}];  # "XADC-AD8P-R"

## ----------------------------------------------------------------------------
## FMC Expansion Connector - Bank 13
## ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN R7 [get_ports {FMC_SCL}];  # "FMC-SCL"
#set_property PACKAGE_PIN U7 [get_ports {FMC_SDA}];  # "FMC-SDA"

## ----------------------------------------------------------------------------
## FMC Expansion Connector - Bank 33
## ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN AB14 [get_ports {FMC_PRSNT}];  # "FMC-PRSNT"

## ----------------------------------------------------------------------------
## FMC Expansion Connector - Bank 34
## ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN L19 [get_ports {FMC_CLK0_N}];  # "FMC-CLK0_N"
#set_property PACKAGE_PIN L18 [get_ports {FMC_CLK0_P}];  # "FMC-CLK0_P"
#set_property PACKAGE_PIN M20 [get_ports {FMC_LA00_CC_N}];  # "FMC-LA00_CC_N"
#set_property PACKAGE_PIN M19 [get_ports {FMC_LA00_CC_P}];  # "FMC-LA00_CC_P"
#set_property PACKAGE_PIN N20 [get_ports {FMC_LA01_CC_N}];  # "FMC-LA01_CC_N"
#set_property PACKAGE_PIN N19 [get_ports {FMC_LA01_CC_P}];  # "FMC-LA01_CC_P" - corrected 6/6/16 GE
#set_property PACKAGE_PIN P18 [get_ports {FMC_LA02_N}];  # "FMC-LA02_N"
#set_property PACKAGE_PIN P17 [get_ports {FMC_LA02_P}];  # "FMC-LA02_P"
#set_property PACKAGE_PIN P22 [get_ports {FMC_LA03_N}];  # "FMC-LA03_N"
#set_property PACKAGE_PIN N22 [get_ports {FMC_LA03_P}];  # "FMC-LA03_P"
#set_property PACKAGE_PIN M22 [get_ports {FMC_LA04_N}];  # "FMC-LA04_N"
#set_property PACKAGE_PIN M21 [get_ports {FMC_LA04_P}];  # "FMC-LA04_P"
#set_property PACKAGE_PIN K18 [get_ports {FMC_LA05_N}];  # "FMC-LA05_N"
#set_property PACKAGE_PIN J18 [get_ports {FMC_LA05_P}];  # "FMC-LA05_P"
#set_property PACKAGE_PIN L22 [get_ports {FMC_LA06_N}];  # "FMC-LA06_N"
#set_property PACKAGE_PIN L21 [get_ports {FMC_LA06_P}];  # "FMC-LA06_P"
#set_property PACKAGE_PIN T17 [get_ports {FMC_LA07_N}];  # "FMC-LA07_N"
#set_property PACKAGE_PIN T16 [get_ports {FMC_LA07_P}];  # "FMC-LA07_P"
#set_property PACKAGE_PIN J22 [get_ports {FMC_LA08_N}];  # "FMC-LA08_N"
#set_property PACKAGE_PIN J21 [get_ports {FMC_LA08_P}];  # "FMC-LA08_P"
#set_property PACKAGE_PIN R21 [get_ports {FMC_LA09_N}];  # "FMC-LA09_N"
#set_property PACKAGE_PIN R20 [get_ports {FMC_LA09_P}];  # "FMC-LA09_P"
#set_property PACKAGE_PIN T19 [get_ports {FMC_LA10_N}];  # "FMC-LA10_N"
#set_property PACKAGE_PIN R19 [get_ports {FMC_LA10_P}];  # "FMC-LA10_P"
#set_property PACKAGE_PIN N18 [get_ports {FMC_LA11_N}];  # "FMC-LA11_N"
#set_property PACKAGE_PIN N17 [get_ports {FMC_LA11_P}];  # "FMC-LA11_P"
#set_property PACKAGE_PIN P21 [get_ports {FMC_LA12_N}];  # "FMC-LA12_N"
#set_property PACKAGE_PIN P20 [get_ports {FMC_LA12_P}];  # "FMC-LA12_P"
#set_property PACKAGE_PIN M17 [get_ports {FMC_LA13_N}];  # "FMC-LA13_N"
#set_property PACKAGE_PIN L17 [get_ports {FMC_LA13_P}];  # "FMC-LA13_P"
#set_property PACKAGE_PIN K20 [get_ports {FMC_LA14_N}];  # "FMC-LA14_N"
#set_property PACKAGE_PIN K19 [get_ports {FMC_LA14_P}];  # "FMC-LA14_P"
#set_property PACKAGE_PIN J17 [get_ports {FMC_LA15_N}];  # "FMC-LA15_N"
#set_property PACKAGE_PIN J16 [get_ports {FMC_LA15_P}];  # "FMC-LA15_P"
#set_property PACKAGE_PIN K21 [get_ports {FMC_LA16_N}];  # "FMC-LA16_N"
#set_property PACKAGE_PIN J20 [get_ports {FMC_LA16_P}];  # "FMC-LA16_P"

## ----------------------------------------------------------------------------
## FMC Expansion Connector - Bank 35
## ---------------------------------------------------------------------------- 
#set_property PACKAGE_PIN C19 [get_ports {FMC_CLK1_N}];  # "FMC-CLK1_N"
#set_property PACKAGE_PIN D18 [get_ports {FMC_CLK1_P}];  # "FMC-CLK1_P"
#set_property PACKAGE_PIN B20 [get_ports {FMC_LA17_CC_N}];  # "FMC-LA17_CC_N"
#set_property PACKAGE_PIN B19 [get_ports {FMC_LA17_CC_P}];  # "FMC-LA17_CC_P"
#set_property PACKAGE_PIN C20 [get_ports {FMC_LA18_CC_N}];  # "FMC-LA18_CC_N"
#set_property PACKAGE_PIN D20 [get_ports {FMC_LA18_CC_P}];  # "FMC-LA18_CC_P"
#set_property PACKAGE_PIN G16 [get_ports {FMC_LA19_N}];  # "FMC-LA19_N"
#set_property PACKAGE_PIN G15 [get_ports {FMC_LA19_P}];  # "FMC-LA19_P"
#set_property PACKAGE_PIN G21 [get_ports {FMC_LA20_N}];  # "FMC-LA20_N"
#set_property PACKAGE_PIN G20 [get_ports {FMC_LA20_P}];  # "FMC-LA20_P"
#set_property PACKAGE_PIN E20 [get_ports {FMC_LA21_N}];  # "FMC-LA21_N"
#set_property PACKAGE_PIN E19 [get_ports {FMC_LA21_P}];  # "FMC-LA21_P"
#set_property PACKAGE_PIN F19 [get_ports {FMC_LA22_N}];  # "FMC-LA22_N"
#set_property PACKAGE_PIN G19 [get_ports {FMC_LA22_P}];  # "FMC-LA22_P"
#set_property PACKAGE_PIN D15 [get_ports {FMC_LA23_N}];  # "FMC-LA23_N"
#set_property PACKAGE_PIN E15 [get_ports {FMC_LA23_P}];  # "FMC-LA23_P"
#set_property PACKAGE_PIN A19 [get_ports {FMC_LA24_N}];  # "FMC-LA24_N"
#set_property PACKAGE_PIN A18 [get_ports {FMC_LA24_P}];  # "FMC-LA24_P"
#set_property PACKAGE_PIN C22 [get_ports {FMC_LA25_N}];  # "FMC-LA25_N"
#set_property PACKAGE_PIN D22 [get_ports {FMC_LA25_P}];  # "FMC-LA25_P"
#set_property PACKAGE_PIN E18 [get_ports {FMC_LA26_N}];  # "FMC-LA26_N"
#set_property PACKAGE_PIN F18 [get_ports {FMC_LA26_P}];  # "FMC-LA26_P"
#set_property PACKAGE_PIN D21 [get_ports {FMC_LA27_N}];  # "FMC-LA27_N"
#set_property PACKAGE_PIN E21 [get_ports {FMC_LA27_P}];  # "FMC-LA27_P"
#set_property PACKAGE_PIN A17 [get_ports {FMC_LA28_N}];  # "FMC-LA28_N"
#set_property PACKAGE_PIN A16 [get_ports {FMC_LA28_P}];  # "FMC-LA28_P"
#set_property PACKAGE_PIN C18 [get_ports {FMC_LA29_N}];  # "FMC-LA29_N"
#set_property PACKAGE_PIN C17 [get_ports {FMC_LA29_P}];  # "FMC-LA29_P"
#set_property PACKAGE_PIN B15 [get_ports {FMC_LA30_N}];  # "FMC-LA30_N"
#set_property PACKAGE_PIN C15 [get_ports {FMC_LA30_P}];  # "FMC-LA30_P"
#set_property PACKAGE_PIN B17 [get_ports {FMC_LA31_N}];  # "FMC-LA31_N"
#set_property PACKAGE_PIN B16 [get_ports {FMC_LA31_P}];  # "FMC-LA31_P"
#set_property PACKAGE_PIN A22 [get_ports {FMC_LA32_N}];  # "FMC-LA32_N"
#set_property PACKAGE_PIN A21 [get_ports {FMC_LA32_P}];  # "FMC-LA32_P"
#set_property PACKAGE_PIN B22 [get_ports {FMC_LA33_N}];  # "FMC-LA33_N"
#set_property PACKAGE_PIN B21 [get_ports {FMC_LA33_P}];  # "FMC-LA33_P"


# ----------------------------------------------------------------------------
# IOSTANDARD Constraints
#
# Note that these IOSTANDARD constraints are applied to all IOs currently
# assigned within an I/O bank.  If these IOSTANDARD constraints are 
# evaluated prior to other PACKAGE_PIN constraints being applied, then 
# the IOSTANDARD specified will likely not be applied properly to those 
# pins.  Therefore, bank wide IOSTANDARD constraints should be placed 
# within the XDC file in a location that is evaluated AFTER all 
# PACKAGE_PIN constraints within the target bank have been evaluated.
#
# Un-comment one or more of the following IOSTANDARD constraints according to
# the bank pin assignments that are required within a design.
# ---------------------------------------------------------------------------- 

# Note that the bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];

# Set the bank voltage for IO Bank 35 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 35]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];



#set_property IOSTANDARD LVCMOS33 [oclk, curr_tin];


# Location constraints

 Stage 39
create_pblock pblock_tp_2[39].CARRY4_insti
resize_pblock pblock_tp_2[39].CARRY4_insti -add {SLICE_X42Y44:SLICE_X43Y44}
add_cells_to_pblock pblock_tp_2[39].CARRY4_insti tp/gen_code_label1[39].CARRY4_insti 
add_cells_to_pblock pblock_tp_2[39].CARRY4_insti tp/gen_code_label2[156].LDPE_insti 
add_cells_to_pblock pblock_tp_2[39].CARRY4_insti tp/gen_code_label2[157].LDPE_insti 
add_cells_to_pblock pblock_tp_2[39].CARRY4_insti tp/gen_code_label2[158].LDPE_insti 
add_cells_to_pblock pblock_tp_2[39].CARRY4_insti tp/gen_code_label2[159].LDPE_insti 

# Stage 38
create_pblock pblock_tp_2[38].CARRY4_insti
resize_pblock pblock_tp_2[38].CARRY4_insti -add {SLICE_X42Y43:SLICE_X43Y43}
add_cells_to_pblock pblock_tp_2[38].CARRY4_insti tp/gen_code_label1[38].CARRY4_insti
add_cells_to_pblock pblock_tp_2[38].CARRY4_insti tp/gen_code_label2[152].LDPE_insti 
add_cells_to_pblock pblock_tp_2[38].CARRY4_insti tp/gen_code_label2[153].LDPE_insti 
add_cells_to_pblock pblock_tp_2[38].CARRY4_insti tp/gen_code_label2[154].LDPE_insti 
add_cells_to_pblock pblock_tp_2[38].CARRY4_insti tp/gen_code_label2[155].LDPE_insti 

# Stage 37
create_pblock pblock_tp_2[37].CARRY4_insti
resize_pblock pblock_tp_2[37].CARRY4_insti -add {SLICE_X42Y42:SLICE_X43Y42}
add_cells_to_pblock pblock_tp_2[37].CARRY4_insti tp/gen_code_label1[37].CARRY4_insti
add_cells_to_pblock pblock_tp_2[37].CARRY4_insti tp/gen_code_label2[148].LDPE_insti 
add_cells_to_pblock pblock_tp_2[37].CARRY4_insti tp/gen_code_label2[149].LDPE_insti 
add_cells_to_pblock pblock_tp_2[37].CARRY4_insti tp/gen_code_label2[150].LDPE_insti 
add_cells_to_pblock pblock_tp_2[37].CARRY4_insti tp/gen_code_label2[151].LDPE_insti 

# Stage 36
create_pblock pblock_tp_2[36].CARRY4_insti
resize_pblock pblock_tp_2[36].CARRY4_insti -add {SLICE_X42Y41:SLICE_X43Y41}
add_cells_to_pblock pblock_tp_2[36].CARRY4_insti tp/gen_code_label1[36].CARRY4_insti
add_cells_to_pblock pblock_tp_2[36].CARRY4_insti tp/gen_code_label2[144].LDPE_insti 
add_cells_to_pblock pblock_tp_2[36].CARRY4_insti tp/gen_code_label2[145].LDPE_insti 
add_cells_to_pblock pblock_tp_2[36].CARRY4_insti tp/gen_code_label2[146].LDPE_insti 
add_cells_to_pblock pblock_tp_2[36].CARRY4_insti tp/gen_code_label2[147].LDPE_insti

# Stage 35
create_pblock pblock_tp_2[35].CARRY4_insti
resize_pblock pblock_tp_2[35].CARRY4_insti -add {SLICE_X42Y40:SLICE_X43Y40}
add_cells_to_pblock pblock_tp_2[35].CARRY4_insti tp/gen_code_label1[35].CARRY4_insti
add_cells_to_pblock pblock_tp_2[35].CARRY4_insti tp/gen_code_label2[140].LDPE_insti 
add_cells_to_pblock pblock_tp_2[35].CARRY4_insti tp/gen_code_label2[141].LDPE_insti 
add_cells_to_pblock pblock_tp_2[35].CARRY4_insti tp/gen_code_label2[142].LDPE_insti 
add_cells_to_pblock pblock_tp_2[35].CARRY4_insti tp/gen_code_label2[143].LDPE_insti

# Stage 34
create_pblock pblock_tp_2[34].CARRY4_insti
resize_pblock pblock_tp_2[34].CARRY4_insti -add {SLICE_X42Y39:SLICE_X43Y39}
add_cells_to_pblock pblock_tp_2[34].CARRY4_insti tp/gen_code_label1[34].CARRY4_insti
add_cells_to_pblock pblock_tp_2[34].CARRY4_insti tp/gen_code_label2[136].LDPE_insti 
add_cells_to_pblock pblock_tp_2[34].CARRY4_insti tp/gen_code_label2[137].LDPE_insti 
add_cells_to_pblock pblock_tp_2[34].CARRY4_insti tp/gen_code_label2[138].LDPE_insti 
add_cells_to_pblock pblock_tp_2[34].CARRY4_insti tp/gen_code_label2[139].LDPE_insti

# Stage 33
create_pblock pblock_tp_2[33].CARRY4_insti
resize_pblock pblock_tp_2[33].CARRY4_insti -add {SLICE_X42Y38:SLICE_X43Y38}
add_cells_to_pblock pblock_tp_2[33].CARRY4_insti tp/gen_code_label1[33].CARRY4_insti
add_cells_to_pblock pblock_tp_2[33].CARRY4_insti tp/gen_code_label2[132].LDPE_insti 
add_cells_to_pblock pblock_tp_2[33].CARRY4_insti tp/gen_code_label2[133].LDPE_insti 
add_cells_to_pblock pblock_tp_2[33].CARRY4_insti tp/gen_code_label2[134].LDPE_insti 
add_cells_to_pblock pblock_tp_2[33].CARRY4_insti tp/gen_code_label2[135].LDPE_insti

# Stage 32
create_pblock pblock_tp_2[32].CARRY4_insti
resize_pblock pblock_tp_2[32].CARRY4_insti -add {SLICE_X42Y37:SLICE_X43Y37}
add_cells_to_pblock pblock_tp_2[32].CARRY4_insti tp/gen_code_label1[32].CARRY4_insti
add_cells_to_pblock pblock_tp_2[32].CARRY4_insti tp/gen_code_label2[128].LDPE_insti 
add_cells_to_pblock pblock_tp_2[32].CARRY4_insti tp/gen_code_label2[129].LDPE_insti 
add_cells_to_pblock pblock_tp_2[32].CARRY4_insti tp/gen_code_label2[130].LDPE_insti 
add_cells_to_pblock pblock_tp_2[32].CARRY4_insti tp/gen_code_label2[131].LDPE_insti

# Stage 31
create_pblock pblock_tp_2[31].CARRY4_insti
resize_pblock pblock_tp_2[31].CARRY4_insti -add {SLICE_X42Y36:SLICE_X43Y36}
add_cells_to_pblock pblock_tp_2[31].CARRY4_insti tp/gen_code_label1[31].CARRY4_insti
add_cells_to_pblock pblock_tp_2[31].CARRY4_insti tp/gen_code_label2[124].LDPE_insti 
add_cells_to_pblock pblock_tp_2[31].CARRY4_insti tp/gen_code_label2[125].LDPE_insti 
add_cells_to_pblock pblock_tp_2[31].CARRY4_insti tp/gen_code_label2[126].LDPE_insti 
add_cells_to_pblock pblock_tp_2[31].CARRY4_insti tp/gen_code_label2[127].LDPE_insti

# Stage 30
create_pblock pblock_tp_2[30].CARRY4_insti
resize_pblock pblock_tp_2[30].CARRY4_insti -add {SLICE_X42Y35:SLICE_X43Y35}
add_cells_to_pblock pblock_tp_2[30].CARRY4_insti tp/gen_code_label1[30].CARRY4_insti
add_cells_to_pblock pblock_tp_2[30].CARRY4_insti tp/gen_code_label2[120].LDPE_insti 
add_cells_to_pblock pblock_tp_2[30].CARRY4_insti tp/gen_code_label2[121].LDPE_insti 
add_cells_to_pblock pblock_tp_2[30].CARRY4_insti tp/gen_code_label2[122].LDPE_insti 
add_cells_to_pblock pblock_tp_2[30].CARRY4_insti tp/gen_code_label2[123].LDPE_insti

# Stage 29
create_pblock pblock_tp_2[29].CARRY4_insti
resize_pblock pblock_tp_2[29].CARRY4_insti -add {SLICE_X42Y34:SLICE_X43Y34}
add_cells_to_pblock pblock_tp_2[29].CARRY4_insti tp/gen_code_label1[29].CARRY4_insti
add_cells_to_pblock pblock_tp_2[29].CARRY4_insti tp/gen_code_label2[116].LDPE_insti 
add_cells_to_pblock pblock_tp_2[29].CARRY4_insti tp/gen_code_label2[117].LDPE_insti 
add_cells_to_pblock pblock_tp_2[29].CARRY4_insti tp/gen_code_label2[118].LDPE_insti 
add_cells_to_pblock pblock_tp_2[29].CARRY4_insti tp/gen_code_label2[119].LDPE_insti

# Stage 28
create_pblock pblock_tp_2[28].CARRY4_insti
resize_pblock pblock_tp_2[28].CARRY4_insti -add {SLICE_X42Y33:SLICE_X43Y33}
add_cells_to_pblock pblock_tp_2[28].CARRY4_insti tp/gen_code_label1[28].CARRY4_insti
add_cells_to_pblock pblock_tp_2[28].CARRY4_insti tp/gen_code_label2[112].LDPE_insti 
add_cells_to_pblock pblock_tp_2[28].CARRY4_insti tp/gen_code_label2[113].LDPE_insti 
add_cells_to_pblock pblock_tp_2[28].CARRY4_insti tp/gen_code_label2[114].LDPE_insti 
add_cells_to_pblock pblock_tp_2[28].CARRY4_insti tp/gen_code_label2[115].LDPE_insti


# Stage 27
create_pblock pblock_tp_2[27].CARRY4_insti
resize_pblock pblock_tp_2[27].CARRY4_insti -add {SLICE_X42Y32:SLICE_X43Y32}
add_cells_to_pblock pblock_tp_2[27].CARRY4_insti tp/gen_code_label1[27].CARRY4_insti
add_cells_to_pblock pblock_tp_2[27].CARRY4_insti tp/gen_code_label2[108].LDPE_insti 
add_cells_to_pblock pblock_tp_2[27].CARRY4_insti tp/gen_code_label2[109].LDPE_insti 
add_cells_to_pblock pblock_tp_2[27].CARRY4_insti tp/gen_code_label2[110].LDPE_insti 
add_cells_to_pblock pblock_tp_2[27].CARRY4_insti tp/gen_code_label2[111].LDPE_insti

# Stage 26
create_pblock pblock_tp_2[26].CARRY4_insti
resize_pblock pblock_tp_2[26].CARRY4_insti -add {SLICE_X42Y31:SLICE_X43Y31}
add_cells_to_pblock pblock_tp_2[26].CARRY4_insti tp/gen_code_label1[26].CARRY4_insti
add_cells_to_pblock pblock_tp_2[26].CARRY4_insti tp/gen_code_label2[104].LDPE_insti 
add_cells_to_pblock pblock_tp_2[26].CARRY4_insti tp/gen_code_label2[105].LDPE_insti 
add_cells_to_pblock pblock_tp_2[26].CARRY4_insti tp/gen_code_label2[106].LDPE_insti 
add_cells_to_pblock pblock_tp_2[26].CARRY4_insti tp/gen_code_label2[107].LDPE_insti

# Stage 25
create_pblock pblock_tp_2[25].CARRY4_insti
resize_pblock pblock_tp_2[25].CARRY4_insti -add {SLICE_X42Y30:SLICE_X43Y30}
add_cells_to_pblock pblock_tp_2[25].CARRY4_insti tp/gen_code_label1[25].CARRY4_insti
add_cells_to_pblock pblock_tp_2[25].CARRY4_insti tp/gen_code_label2[100].LDPE_insti 
add_cells_to_pblock pblock_tp_2[25].CARRY4_insti tp/gen_code_label2[101].LDPE_insti 
add_cells_to_pblock pblock_tp_2[25].CARRY4_insti tp/gen_code_label2[102].LDPE_insti 
add_cells_to_pblock pblock_tp_2[25].CARRY4_insti tp/gen_code_label2[103].LDPE_insti

# Stage 24
create_pblock pblock_tp_2[24].CARRY4_insti
resize_pblock pblock_tp_2[24].CARRY4_insti -add {SLICE_X42Y29:SLICE_X43Y29}
add_cells_to_pblock pblock_tp_2[24].CARRY4_insti tp/gen_code_label1[24].CARRY4_insti
add_cells_to_pblock pblock_tp_2[24].CARRY4_insti tp/gen_code_label2[96].LDPE_insti 
add_cells_to_pblock pblock_tp_2[24].CARRY4_insti tp/gen_code_label2[97].LDPE_insti 
add_cells_to_pblock pblock_tp_2[24].CARRY4_insti tp/gen_code_label2[98].LDPE_insti 
add_cells_to_pblock pblock_tp_2[24].CARRY4_insti tp/gen_code_label2[99].LDPE_insti

# Stage 23
create_pblock pblock_tp_2[23].CARRY4_insti
resize_pblock pblock_tp_2[23].CARRY4_insti -add {SLICE_X42Y28:SLICE_X43Y28}
add_cells_to_pblock pblock_tp_2[23].CARRY4_insti tp/gen_code_label1[23].CARRY4_insti
add_cells_to_pblock pblock_tp_2[23].CARRY4_insti tp/gen_code_label2[92].LDPE_insti 
add_cells_to_pblock pblock_tp_2[23].CARRY4_insti tp/gen_code_label2[93].LDPE_insti 
add_cells_to_pblock pblock_tp_2[23].CARRY4_insti tp/gen_code_label2[94].LDPE_insti 
add_cells_to_pblock pblock_tp_2[23].CARRY4_insti tp/gen_code_label2[95].LDPE_insti

# Stage 22
create_pblock pblock_tp_2[22].CARRY4_insti
resize_pblock pblock_tp_2[22].CARRY4_insti -add {SLICE_X42Y27:SLICE_X43Y27}
add_cells_to_pblock pblock_tp_2[22].CARRY4_insti tp/gen_code_label1[22].CARRY4_insti
add_cells_to_pblock pblock_tp_2[22].CARRY4_insti tp/gen_code_label2[88].LDPE_insti 
add_cells_to_pblock pblock_tp_2[22].CARRY4_insti tp/gen_code_label2[89].LDPE_insti 
add_cells_to_pblock pblock_tp_2[22].CARRY4_insti tp/gen_code_label2[90].LDPE_insti 
add_cells_to_pblock pblock_tp_2[22].CARRY4_insti tp/gen_code_label2[91].LDPE_insti

# Stage 21
create_pblock pblock_tp_2[21].CARRY4_insti
resize_pblock pblock_tp_2[21].CARRY4_insti -add {SLICE_X42Y26:SLICE_X43Y26}
add_cells_to_pblock pblock_tp_2[21].CARRY4_insti tp/gen_code_label1[21].CARRY4_insti
add_cells_to_pblock pblock_tp_2[21].CARRY4_insti tp/gen_code_label2[84].LDPE_insti 
add_cells_to_pblock pblock_tp_2[21].CARRY4_insti tp/gen_code_label2[85].LDPE_insti 
add_cells_to_pblock pblock_tp_2[21].CARRY4_insti tp/gen_code_label2[86].LDPE_insti 
add_cells_to_pblock pblock_tp_2[21].CARRY4_insti tp/gen_code_label2[87].LDPE_insti

# Stage 20
create_pblock pblock_tp_2[20].CARRY4_insti
resize_pblock pblock_tp_2[20].CARRY4_insti -add {SLICE_X42Y25:SLICE_X43Y25}
add_cells_to_pblock pblock_tp_2[20].CARRY4_insti tp/gen_code_label1[20].CARRY4_insti
add_cells_to_pblock pblock_tp_2[20].CARRY4_insti tp/gen_code_label2[80].LDPE_insti 
add_cells_to_pblock pblock_tp_2[20].CARRY4_insti tp/gen_code_label2[81].LDPE_insti 
add_cells_to_pblock pblock_tp_2[20].CARRY4_insti tp/gen_code_label2[82].LDPE_insti 
add_cells_to_pblock pblock_tp_2[20].CARRY4_insti tp/gen_code_label2[83].LDPE_insti

# Stage 19
create_pblock pblock_tp_2[19].CARRY4_insti
resize_pblock pblock_tp_2[19].CARRY4_insti -add {SLICE_X42Y24:SLICE_X43Y24}
add_cells_to_pblock pblock_tp_2[19].CARRY4_insti tp/gen_code_label1[19].CARRY4_insti
add_cells_to_pblock pblock_tp_2[19].CARRY4_insti tp/gen_code_label2[76].LDPE_insti 
add_cells_to_pblock pblock_tp_2[19].CARRY4_insti tp/gen_code_label2[77].LDPE_insti 
add_cells_to_pblock pblock_tp_2[19].CARRY4_insti tp/gen_code_label2[78].LDPE_insti 
add_cells_to_pblock pblock_tp_2[19].CARRY4_insti tp/gen_code_label2[79].LDPE_insti

# Stage 18
create_pblock pblock_tp_2[18].CARRY4_insti
resize_pblock pblock_tp_2[18].CARRY4_insti -add {SLICE_X42Y23:SLICE_X43Y23}
add_cells_to_pblock pblock_tp_2[18].CARRY4_insti tp/gen_code_label1[18].CARRY4_insti
add_cells_to_pblock pblock_tp_2[18].CARRY4_insti tp/gen_code_label2[72].LDPE_insti 
add_cells_to_pblock pblock_tp_2[18].CARRY4_insti tp/gen_code_label2[73].LDPE_insti 
add_cells_to_pblock pblock_tp_2[18].CARRY4_insti tp/gen_code_label2[74].LDPE_insti 
add_cells_to_pblock pblock_tp_2[18].CARRY4_insti tp/gen_code_label2[75].LDPE_insti

# Stage 17
create_pblock pblock_tp_2[17].CARRY4_insti
resize_pblock pblock_tp_2[17].CARRY4_insti -add {SLICE_X42Y22:SLICE_X43Y22}
add_cells_to_pblock pblock_tp_2[17].CARRY4_insti tp/gen_code_label1[17].CARRY4_insti
add_cells_to_pblock pblock_tp_2[17].CARRY4_insti tp/gen_code_label2[68].LDPE_insti 
add_cells_to_pblock pblock_tp_2[17].CARRY4_insti tp/gen_code_label2[69].LDPE_insti 
add_cells_to_pblock pblock_tp_2[17].CARRY4_insti tp/gen_code_label2[70].LDPE_insti 
add_cells_to_pblock pblock_tp_2[17].CARRY4_insti tp/gen_code_label2[71].LDPE_insti

# Stage 16
create_pblock pblock_tp_2[16].CARRY4_insti
resize_pblock pblock_tp_2[16].CARRY4_insti -add {SLICE_X42Y21:SLICE_X43Y21}
add_cells_to_pblock pblock_tp_2[16].CARRY4_insti tp/gen_code_label1[16].CARRY4_insti
add_cells_to_pblock pblock_tp_2[16].CARRY4_insti tp/gen_code_label2[64].LDPE_insti 
add_cells_to_pblock pblock_tp_2[16].CARRY4_insti tp/gen_code_label2[65].LDPE_insti 
add_cells_to_pblock pblock_tp_2[16].CARRY4_insti tp/gen_code_label2[66].LDPE_insti 
add_cells_to_pblock pblock_tp_2[16].CARRY4_insti tp/gen_code_label2[67].LDPE_insti

# Stage 15
create_pblock pblock_tp_2[15].CARRY4_insti
resize_pblock pblock_tp_2[15].CARRY4_insti -add {SLICE_X42Y20:SLICE_X43Y20}
add_cells_to_pblock pblock_tp_2[15].CARRY4_insti tp/gen_code_label1[15].CARRY4_insti
add_cells_to_pblock pblock_tp_2[15].CARRY4_insti tp/gen_code_label2[60].LDPE_insti 
add_cells_to_pblock pblock_tp_2[15].CARRY4_insti tp/gen_code_label2[61].LDPE_insti 
add_cells_to_pblock pblock_tp_2[15].CARRY4_insti tp/gen_code_label2[62].LDPE_insti 
add_cells_to_pblock pblock_tp_2[15].CARRY4_insti tp/gen_code_label2[63].LDPE_insti

# Stage 14
create_pblock pblock_tp_2[14].CARRY4_insti
resize_pblock pblock_tp_2[14].CARRY4_insti -add {SLICE_X42Y19:SLICE_X43Y19}
add_cells_to_pblock pblock_tp_2[14].CARRY4_insti tp/gen_code_label1[14].CARRY4_insti
add_cells_to_pblock pblock_tp_2[14].CARRY4_insti tp/gen_code_label2[56].LDPE_insti 
add_cells_to_pblock pblock_tp_2[14].CARRY4_insti tp/gen_code_label2[57].LDPE_insti 
add_cells_to_pblock pblock_tp_2[14].CARRY4_insti tp/gen_code_label2[58].LDPE_insti 
add_cells_to_pblock pblock_tp_2[14].CARRY4_insti tp/gen_code_label2[59].LDPE_insti

# Stage 13
create_pblock pblock_tp_2[13].CARRY4_insti
resize_pblock pblock_tp_2[13].CARRY4_insti -add {SLICE_X42Y18:SLICE_X43Y18}
add_cells_to_pblock pblock_tp_2[13].CARRY4_insti tp/gen_code_label1[13].CARRY4_insti
add_cells_to_pblock pblock_tp_2[13].CARRY4_insti tp/gen_code_label2[52].LDPE_insti 
add_cells_to_pblock pblock_tp_2[13].CARRY4_insti tp/gen_code_label2[53].LDPE_insti 
add_cells_to_pblock pblock_tp_2[13].CARRY4_insti tp/gen_code_label2[54].LDPE_insti 
add_cells_to_pblock pblock_tp_2[13].CARRY4_insti tp/gen_code_label2[55].LDPE_insti

# Stage 12
create_pblock pblock_tp_2[12].CARRY4_insti
resize_pblock pblock_tp_2[12].CARRY4_insti -add {SLICE_X42Y17:SLICE_X43Y17}
add_cells_to_pblock pblock_tp_2[12].CARRY4_insti tp/gen_code_label1[12].CARRY4_insti
add_cells_to_pblock pblock_tp_2[12].CARRY4_insti tp/gen_code_label2[48].LDPE_insti 
add_cells_to_pblock pblock_tp_2[12].CARRY4_insti tp/gen_code_label2[49].LDPE_insti 
add_cells_to_pblock pblock_tp_2[12].CARRY4_insti tp/gen_code_label2[50].LDPE_insti 
add_cells_to_pblock pblock_tp_2[12].CARRY4_insti tp/gen_code_label2[51].LDPE_insti

# Stage 11
create_pblock pblock_tp_2[11].CARRY4_insti
resize_pblock pblock_tp_2[11].CARRY4_insti -add {SLICE_X42Y16:SLICE_X43Y16}
add_cells_to_pblock pblock_tp_2[11].CARRY4_insti tp/gen_code_label1[11].CARRY4_insti
add_cells_to_pblock pblock_tp_2[11].CARRY4_insti tp/gen_code_label2[44].LDPE_insti 
add_cells_to_pblock pblock_tp_2[11].CARRY4_insti tp/gen_code_label2[45].LDPE_insti 
add_cells_to_pblock pblock_tp_2[11].CARRY4_insti tp/gen_code_label2[46].LDPE_insti 
add_cells_to_pblock pblock_tp_2[11].CARRY4_insti tp/gen_code_label2[47].LDPE_insti

# Stage 10
create_pblock pblock_tp_2[10].CARRY4_insti
resize_pblock pblock_tp_2[10].CARRY4_insti -add {SLICE_X42Y15:SLICE_X43Y15}
add_cells_to_pblock pblock_tp_2[10].CARRY4_insti tp/gen_code_label1[10].CARRY4_insti
add_cells_to_pblock pblock_tp_2[10].CARRY4_insti tp/gen_code_label2[40].LDPE_insti 
add_cells_to_pblock pblock_tp_2[10].CARRY4_insti tp/gen_code_label2[41].LDPE_insti 
add_cells_to_pblock pblock_tp_2[10].CARRY4_insti tp/gen_code_label2[42].LDPE_insti 
add_cells_to_pblock pblock_tp_2[10].CARRY4_insti tp/gen_code_label2[43].LDPE_insti

# Stage 9
create_pblock pblock_tp_2[9].CARRY4_insti
resize_pblock pblock_tp_2[9].CARRY4_insti -add {SLICE_X42Y14:SLICE_X43Y14}
add_cells_to_pblock pblock_tp_2[9].CARRY4_insti tp/gen_code_label1[9].CARRY4_insti
add_cells_to_pblock pblock_tp_2[9].CARRY4_insti tp/gen_code_label2[36].LDPE_insti 
add_cells_to_pblock pblock_tp_2[9].CARRY4_insti tp/gen_code_label2[37].LDPE_insti 
add_cells_to_pblock pblock_tp_2[9].CARRY4_insti tp/gen_code_label2[38].LDPE_insti 
add_cells_to_pblock pblock_tp_2[9].CARRY4_insti tp/gen_code_label2[39].LDPE_insti

# Stage 8
create_pblock pblock_tp_2[8].CARRY4_insti
resize_pblock pblock_tp_2[8].CARRY4_insti -add {SLICE_X42Y13:SLICE_X43Y13}
add_cells_to_pblock pblock_tp_2[8].CARRY4_insti tp/gen_code_label1[8].CARRY4_insti
add_cells_to_pblock pblock_tp_2[8].CARRY4_insti tp/gen_code_label2[32].LDPE_insti 
add_cells_to_pblock pblock_tp_2[8].CARRY4_insti tp/gen_code_label2[33].LDPE_insti 
add_cells_to_pblock pblock_tp_2[8].CARRY4_insti tp/gen_code_label2[34].LDPE_insti 
add_cells_to_pblock pblock_tp_2[8].CARRY4_insti tp/gen_code_label2[35].LDPE_insti

# Stage 7
create_pblock pblock_tp_2[7].CARRY4_insti
resize_pblock pblock_tp_2[7].CARRY4_insti -add {SLICE_X42Y12:SLICE_X43Y12}
add_cells_to_pblock pblock_tp_2[7].CARRY4_insti tp/gen_code_label1[7].CARRY4_insti
add_cells_to_pblock pblock_tp_2[7].CARRY4_insti tp/gen_code_label2[28].LDPE_insti 
add_cells_to_pblock pblock_tp_2[7].CARRY4_insti tp/gen_code_label2[29].LDPE_insti 
add_cells_to_pblock pblock_tp_2[7].CARRY4_insti tp/gen_code_label2[30].LDPE_insti 
add_cells_to_pblock pblock_tp_2[7].CARRY4_insti tp/gen_code_label2[31].LDPE_insti

# Stage 6
create_pblock pblock_tp_2[6].CARRY4_insti
resize_pblock pblock_tp_2[6].CARRY4_insti -add {SLICE_X42Y11:SLICE_X43Y11}
add_cells_to_pblock pblock_tp_2[6].CARRY4_insti tp/gen_code_label1[6].CARRY4_insti
add_cells_to_pblock pblock_tp_2[6].CARRY4_insti tp/gen_code_label2[24].LDPE_insti 
add_cells_to_pblock pblock_tp_2[6].CARRY4_insti tp/gen_code_label2[25].LDPE_insti 
add_cells_to_pblock pblock_tp_2[6].CARRY4_insti tp/gen_code_label2[26].LDPE_insti 
add_cells_to_pblock pblock_tp_2[6].CARRY4_insti tp/gen_code_label2[27].LDPE_insti

# Stage 5
create_pblock pblock_tp_2[5].CARRY4_insti
resize_pblock pblock_tp_2[5].CARRY4_insti -add {SLICE_X42Y10:SLICE_X43Y10}
add_cells_to_pblock pblock_tp_2[5].CARRY4_insti tp/gen_code_label1[5].CARRY4_insti
add_cells_to_pblock pblock_tp_2[5].CARRY4_insti tp/gen_code_label2[20].LDPE_insti 
add_cells_to_pblock pblock_tp_2[5].CARRY4_insti tp/gen_code_label2[21].LDPE_insti 
add_cells_to_pblock pblock_tp_2[5].CARRY4_insti tp/gen_code_label2[22].LDPE_insti 
add_cells_to_pblock pblock_tp_2[5].CARRY4_insti tp/gen_code_label2[23].LDPE_insti

# Stage 4
create_pblock pblock_tp_2[4].CARRY4_insti
resize_pblock pblock_tp_2[4].CARRY4_insti -add {SLICE_X42Y9:SLICE_X43Y9}
add_cells_to_pblock pblock_tp_2[4].CARRY4_insti tp/gen_code_label1[4].CARRY4_insti
add_cells_to_pblock pblock_tp_2[4].CARRY4_insti tp/gen_code_label2[16].LDPE_insti 
add_cells_to_pblock pblock_tp_2[4].CARRY4_insti tp/gen_code_label2[17].LDPE_insti 
add_cells_to_pblock pblock_tp_2[4].CARRY4_insti tp/gen_code_label2[18].LDPE_insti 
add_cells_to_pblock pblock_tp_2[4].CARRY4_insti tp/gen_code_label2[19].LDPE_insti

# Stage 3
create_pblock pblock_tp_2[3].CARRY4_insti
resize_pblock pblock_tp_2[3].CARRY4_insti -add {SLICE_X42Y8:SLICE_X43Y8}
add_cells_to_pblock pblock_tp_2[3].CARRY4_insti tp/gen_code_label1[3].CARRY4_insti
add_cells_to_pblock pblock_tp_2[3].CARRY4_insti tp/gen_code_label2[12].LDPE_insti 
add_cells_to_pblock pblock_tp_2[3].CARRY4_insti tp/gen_code_label2[13].LDPE_insti 
add_cells_to_pblock pblock_tp_2[3].CARRY4_insti tp/gen_code_label2[14].LDPE_insti 
add_cells_to_pblock pblock_tp_2[3].CARRY4_insti tp/gen_code_label2[15].LDPE_insti

# Stage 2
create_pblock pblock_tp_2[2].CARRY4_insti
resize_pblock pblock_tp_2[2].CARRY4_insti -add {SLICE_X42Y7:SLICE_X43Y7}
add_cells_to_pblock pblock_tp_2[2].CARRY4_insti tp/gen_code_label1[2].CARRY4_insti
add_cells_to_pblock pblock_tp_2[2].CARRY4_insti tp/gen_code_label2[8].LDPE_insti 
add_cells_to_pblock pblock_tp_2[2].CARRY4_insti tp/gen_code_label2[9].LDPE_insti 
add_cells_to_pblock pblock_tp_2[2].CARRY4_insti tp/gen_code_label2[10].LDPE_insti 
add_cells_to_pblock pblock_tp_2[2].CARRY4_insti tp/gen_code_label2[11].LDPE_insti

# Stage 1
create_pblock pblock_tp_2[1].CARRY4_insti
resize_pblock pblock_tp_2[1].CARRY4_insti -add {SLICE_X42Y6:SLICE_X43Y6}
add_cells_to_pblock pblock_tp_2[1].CARRY4_insti tp/gen_code_label1[1].CARRY4_insti
add_cells_to_pblock pblock_tp_2[1].CARRY4_insti tp/gen_code_label2[4].LDPE_insti 
add_cells_to_pblock pblock_tp_2[1].CARRY4_insti tp/gen_code_label2[5].LDPE_insti 
add_cells_to_pblock pblock_tp_2[1].CARRY4_insti tp/gen_code_label2[6].LDPE_insti 
add_cells_to_pblock pblock_tp_2[1].CARRY4_insti tp/gen_code_label2[7].LDPE_insti

# Stage 0
create_pblock pblock_tp_2[0].CARRY4_insti
resize_pblock pblock_tp_2[0].CARRY4_insti -add {SLICE_X42Y5:SLICE_X43Y5}
add_cells_to_pblock pblock_tp_2[0].CARRY4_insti tp/gen_code_label1[0].CARRY4_insti
add_cells_to_pblock pblock_tp_2[0].CARRY4_insti tp/gen_code_label2[0].LDPE_insti 
add_cells_to_pblock pblock_tp_2[0].CARRY4_insti tp/gen_code_label2[1].LDPE_insti 
add_cells_to_pblock pblock_tp_2[0].CARRY4_insti tp/gen_code_label2[2].LDPE_insti 
add_cells_to_pblock pblock_tp_2[0].CARRY4_insti tp/gen_code_label2[3].LDPE_insti



# INITIAL DELAY 3
create_pblock pblock_idelay2[3]
resize_pblock pblock_idelay2[3] -add {SLICE_X42Y4:SLICE_X43Y4}
add_cells_to_pblock pblock_idelay2[3] tp/gen_code_label3[12].LUT1_insti
add_cells_to_pblock pblock_idelay2[3] tp/gen_code_label3[13].LUT1_insti
add_cells_to_pblock pblock_idelay2[3] tp/gen_code_label3[14].LUT1_insti
add_cells_to_pblock pblock_idelay2[3] tp/gen_code_label3[15].LUT1_insti
add_cells_to_pblock pblock_idelay2[3] tp/gen_code_label3[12].LDCE_Delayi
add_cells_to_pblock pblock_idelay2[3] tp/gen_code_label3[13].LDCE_Delayi
add_cells_to_pblock pblock_idelay2[3] tp/gen_code_label3[14].LDCE_Delayi
add_cells_to_pblock pblock_idelay2[3] tp/gen_code_label3[15].LDCE_Delayi

# INITIAL DELAY 2
create_pblock pblock_idelay2[2]
resize_pblock pblock_idelay2[2] -add {SLICE_X42Y3:SLICE_X43Y3}
add_cells_to_pblock pblock_idelay2[2] tp/gen_code_label3[8].LUT1_insti
add_cells_to_pblock pblock_idelay2[2] tp/gen_code_label3[9].LUT1_insti
add_cells_to_pblock pblock_idelay2[2] tp/gen_code_label3[10].LUT1_insti
add_cells_to_pblock pblock_idelay2[2] tp/gen_code_label3[11].LUT1_insti
add_cells_to_pblock pblock_idelay2[2] tp/gen_code_label3[8].LDCE_Delayi
add_cells_to_pblock pblock_idelay2[2] tp/gen_code_label3[9].LDCE_Delayi
add_cells_to_pblock pblock_idelay2[2] tp/gen_code_label3[10].LDCE_Delayi
add_cells_to_pblock pblock_idelay2[2] tp/gen_code_label3[11].LDCE_Delayi

# INITIAL DELAY 1
create_pblock pblock_idelay2[1]
resize_pblock pblock_idelay2[1] -add {SLICE_X42Y2:SLICE_X43Y2}
add_cells_to_pblock pblock_idelay2[1] tp/gen_code_label3[4].LUT1_insti
add_cells_to_pblock pblock_idelay2[1] tp/gen_code_label3[5].LUT1_insti
add_cells_to_pblock pblock_idelay2[1] tp/gen_code_label3[6].LUT1_insti
add_cells_to_pblock pblock_idelay2[1] tp/gen_code_label3[7].LUT1_insti
add_cells_to_pblock pblock_idelay2[1] tp/gen_code_label3[4].LDCE_Delayi
add_cells_to_pblock pblock_idelay2[1] tp/gen_code_label3[5].LDCE_Delayi
add_cells_to_pblock pblock_idelay2[1] tp/gen_code_label3[6].LDCE_Delayi
add_cells_to_pblock pblock_idelay2[1] tp/gen_code_label3[7].LDCE_Delayi

# INITIAL DELAY 0
create_pblock pblock_idelay2[0]
resize_pblock pblock_idelay2[0] -add {SLICE_X42Y1:SLICE_X43Y1}
add_cells_to_pblock pblock_idelay2[0] tp/gen_code_label3[0].LUT1_insti
add_cells_to_pblock pblock_idelay2[0] tp/gen_code_label3[1].LUT1_insti
add_cells_to_pblock pblock_idelay2[0] tp/gen_code_label3[2].LUT1_insti
add_cells_to_pblock pblock_idelay2[0] tp/gen_code_label3[3].LUT1_insti
add_cells_to_pblock pblock_idelay2[0] tp/gen_code_label3[0].LDCE_Delayi
add_cells_to_pblock pblock_idelay2[0] tp/gen_code_label3[1].LDCE_Delayi
add_cells_to_pblock pblock_idelay2[0] tp/gen_code_label3[2].LDCE_Delayi
add_cells_to_pblock pblock_idelay2[0] tp/gen_code_label3[3].LDCE_Delayi

# aes
create_pblock pblock_aes
resize_pblock pblock_aes -add {SLICE_X0Y0:SLICE_X49Y48}
resize_pblock pblock_aes -add {DSP48_X0Y0:DSP48_X2Y17}
resize_pblock pblock_aes -add {RAMB18_X0Y0:RAMB18_X2Y17}
resize_pblock pblock_aes -add {RAMB36_X0Y0:RAMB36_X2Y8}
add_cells_to_pblock pblock_aes s0
add_cells_to_pblock pblock_aes s1
add_cells_to_pblock pblock_aes s2
add_cells_to_pblock pblock_aes s3
add_cells_to_pblock pblock_aes s4



# make them not soft
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[39].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[38].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[37].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[36].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[35].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[34].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[33].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[32].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[31].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[30].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[29].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[28].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[27].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[26].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[25].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[24].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[23].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[22].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[21].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[20].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[19].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[18].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[17].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[16].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[15].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[14].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[13].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[12].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[11].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[10].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[9].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[8].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[7].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[6].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[5].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[4].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[3].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[2].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[1].CARRY4_insti]
set_property IS_SOFT FALSE [get_pblocks pblock_tp_2[0].CARRY4_insti]

set_property IS_SOFT FALSE [get_pblocks pblock_idelay2[3]]
set_property IS_SOFT FALSE [get_pblocks pblock_idelay2[2]]
set_property IS_SOFT FALSE [get_pblocks pblock_idelay2[1]]
set_property IS_SOFT FALSE [get_pblocks pblock_idelay2[0]]

set_property IS_SOFT FALSE [get_pblocks pblock_aes]




















