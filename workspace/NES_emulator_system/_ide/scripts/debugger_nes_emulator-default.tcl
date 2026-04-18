# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\carri\ECE_385\NES_Emulator\workspace\NES_emulator_system\_ide\scripts\debugger_nes_emulator-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\carri\ECE_385\NES_Emulator\workspace\NES_emulator_system\_ide\scripts\debugger_nes_emulator-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "RealDigital Boo 88710000000FA" && level==0 && jtag_device_ctx=="jsn1-0362f093-0"}
fpga -file C:/Users/carri/ECE_385/NES_Emulator/workspace/NES_emulator/_ide/bitstream/nes_top.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/carri/ECE_385/NES_Emulator/workspace/nes_top/export/nes_top/hw/nes_top.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/carri/ECE_385/NES_Emulator/workspace/NES_emulator/Debug/NES_emulator.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
