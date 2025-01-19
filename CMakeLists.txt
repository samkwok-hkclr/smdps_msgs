cmake_minimum_required(VERSION 3.8)
project(smdps_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)

# ament_auto_find_build_dependencies()

set(action_files
  "action/NewOrder.action"
  "action/PackagingOrder.action"
)

set(msg_files
  "msg/ContainerInfo.msg"
  "msg/DispenseContent.msg"
  "msg/DispenserStationStatus.msg"
  "msg/DispenserUnitStatus.msg"
  "msg/DispensingDetail.msg"
  "msg/DispensingError.msg"
  "msg/Drug.msg"
  "msg/DrugLocation.msg"
  "msg/Heartbeat.msg"
  "msg/MaterialBox.msg"
  "msg/MaterialBoxSlot.msg"
  "msg/MaterialBoxStatus.msg"
  "msg/MotorStatus.msg"
  "msg/OrderCompletion.msg"
  "msg/OrderRequest.msg"
  "msg/OrderResponse.msg"
  "msg/PackageInfo.msg"
  "msg/PackagingMachineInfo.msg"
  "msg/PackagingMachineStatus.msg"
  "msg/PackagingRequest.msg"
  "msg/PackagingResult.msg"
  "msg/PackagingStatus.msg"
  "msg/PatientInfo.msg"
  "msg/PrintingInfo.msg"
  "msg/ScannerTrigger.msg"
  "msg/UnbindMaterialBox.msg"
  "msg/UnbindOrderId.msg"
  "msg/UnbindRequest.msg"
  "msg/UnitType.msg"
)

set(srv_files
  "srv/CancelOrder.srv"
  "srv/DispenseDrug.srv"
  "srv/PackagingOrder.srv"
  "srv/PrintingOrder.srv"
  "srv/UnitRequest.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  ${action_files}
  DEPENDENCIES
    builtin_interfaces
    std_msgs
)

ament_export_dependencies(rosidl_default_runtime)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
