## This file is a general .xdc for the Nexys4 DDR Rev. C

##Switches

set_property -dict \{ PACKAGE_PIN J15   IOSTANDARD LVCMOS33 \} [get_ports \{ x \}]; IO_L24N_T3_RS0_15 Sch=X
set_property -dict \{ PACKAGE_PIN L16   IOSTANDARD LVCMOS33 \} [get_ports \{ y \}]; IO_L3N_T0_DQS_EMCCLK_14 Sch=Y
set_property -dict \{ PACKAGE_PIN M13   IOSTANDARD LVCMOS33 \} [get_ports \{ C_in \}]; IO_L6N_T0_D08_VREF_14 Sch=C_in

## LEDs

set_property -dict \{ PACKAGE_PIN H17   IOSTANDARD LVCMOS33 \} [get_ports \{ S \}]; IO_L18P_T2_A24_15 Sch=S
set_property -dict \{ PACKAGE_PIN K15   IOSTANDARD LVCMOS33 \} [get_ports \{ C_out \}]; IO_L24P_T3_RS1_15 Sch=C_Out
