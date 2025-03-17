std_msgs/Header header

builtin_interfaces/Time creation_time
builtin_interfaces/Time start_time
builtin_interfaces/Time end_time

uint8 STATUS_INITIALIZING=0
uint8 STATUS_CLEANING=1
uint8 STATUS_CLEANING_DONE=2
uint8 STATUS_PROCESSING=3
uint8 STATUS_DISPENSED=4
uint8 STATUS_AWAITING_PACKAGING=5
uint8 STATUS_PASS_TO_PACKAGING=6
uint8 STATUS_ERROR=7
uint8 STATUS_IN_STORAGE=8

uint8 id
string location
uint8 status
MaterialBox material_box

int64 order_id
uint8 priority
uint16 step
string message