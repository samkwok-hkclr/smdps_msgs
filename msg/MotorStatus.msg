uint8 pkg_dis_state

uint8 pill_gate_loc
uint8 pill_gate_state

uint8 roller_state

uint8 pkg_len_loc
uint8 pkg_len_state

uint8 squ_loc
uint8 squ_state

uint8 con_state

# All motor state
uint8 IDLE=0
uint8 RUNNING=1
uint8 BRAKE=2
uint8 STOP=3
uint8 RESET=4
uint8 ERROR=5

# Pill Gate Motor Location
uint8 PILL_GATE_PT_0=0
uint8 PILL_GATE_PT_1=1
uint8 PILL_GATE_PT_2=2
uint8 PILL_GATE_PT_3=3
uint8 PILL_GATE_PT_4=4

# Package Length Motor Location
uint8 PKG_LEN_PT_0=0
uint8 PKG_LEN_PT_1=1

# Squeeze Motor Location
uint8 SQUEEZE_HOME_PT=0
uint8 SQUEEZE_PT=1