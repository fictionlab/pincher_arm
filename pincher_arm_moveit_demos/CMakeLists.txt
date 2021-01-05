cmake_minimum_required(VERSION 3.0.2)
project(pincher_arm_moveit_demos)

find_package(catkin REQUIRED COMPONENTS
  moveit_core
  moveit_ros_planning_interface
  roscpp
  tf2_geometry_msgs    
)

catkin_package(
  CATKIN_DEPENDS
    moveit_core
    moveit_ros_planning_interface
    roscpp
    tf2_geometry_msgs  
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(pick_place src/pick_place.cpp)

target_link_libraries(pick_place ${catkin_LIBRARIES})

install(TARGETS pick_place
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)