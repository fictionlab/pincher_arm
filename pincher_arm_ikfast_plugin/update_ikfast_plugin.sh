search_mode=OPTIMIZE_MAX_JOINT
srdf_filename=pincher_arm.srdf
robot_name_in_srdf=pincher_arm
moveit_config_pkg=pincher_arm_moveit_config
robot_name=pincher_arm
planning_group_name=arm
ikfast_plugin_pkg=pincher_arm_ikfast_plugin
base_link_name=arm_base_link
eef_link_name=gripper_fake_link
ikfast_output_path=$(rospack find pincher_arm_ikfast_plugin)/src/pincher_arm_arm_ikfast_solver.cpp

rosrun moveit_kinematics create_ikfast_moveit_plugin.py\
  --search_mode=$search_mode\
  --srdf_filename=$srdf_filename\
  --robot_name_in_srdf=$robot_name_in_srdf\
  --moveit_config_pkg=$moveit_config_pkg\
  $robot_name\
  $planning_group_name\
  $ikfast_plugin_pkg\
  $base_link_name\
  $eef_link_name\
  $ikfast_output_path
