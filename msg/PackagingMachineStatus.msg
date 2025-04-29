std_msgs/Header header

uint8 packaging_machine_id

uint8 packaging_machine_state
uint8 IDLE=1
uint8 BUSY=2
uint8 BLOCKING=3
uint8 ERROR=4

uint8 conveyor_state
uint8 UNAVAILABLE=0
uint8 AVAILABLE=1

uint8 canopen_state
uint8 ABNORMAL=0
uint8 NORMAL=1

uint8 package_length

uint8 LENGTH_1=0
uint8 LENGTH_2=1

bool waiting_material_box

bool skip_packaging