# PhantomX Pincher Arm ROS Packages

These are packages for controlling the [PhantomX Pincher Robot Arm Mark II]. They were tested on ROS Melodic and ROS Noetic distributions. 

The main motivation for creating this repository was to provide an alternative to the [turtlebot_arm] packages which lack maintenance and have some issues with the Pincher arm. In particular, support for Pincher arm in `turtlebot_arm` packages, requires building a special version of [arbotix_ros] packages. In contrast, `pincher_arm` packages work with the official version of `arbotix_ros` released in ROS.

Parts of this code were inspired by these Pull Requests: \
[turtlebot/turtlebot_arm#24] \
[vanadiumlabs/arbotix_ros#28]

## Building

You can build these packages using [catkin] like any other ROS package. All of the dependencies can be installed using the [rosdep] tool.

## Usage

Start the arm driver:
```
roslaunch pincher_arm_bringup arm.launch
```
You might need to change the `port` parameter in the `pincher_arm_bringup/config/arm.yaml` file.

Once you have the driver up and running, you can start MoveIt!:
```
roslaunch pincher_arm_moveit_config pincher_arm_moveit.launch sim:=false
```
and perform some path planning operations in RViz.

To run pick and place demo, ensure you have MoveIt! running and type:
```
rosrun pincher_arm_moveit_demos pick_place
```


[PhantomX Pincher Robot Arm Mark II]: https://www.trossenrobotics.com/p/PhantomX-Pincher-Robot-Arm.aspx
[turtlebot_arm]: https://github.com/turtlebot/turtlebot_arm
[arbotix_ros]: https://github.com/corb555/arbotix_ros
[turtlebot/turtlebot_arm#24]: https://github.com/turtlebot/turtlebot_arm/pull/24
[vanadiumlabs/arbotix_ros#28]: https://github.com/vanadiumlabs/arbotix_ros/pull/28
[catkin]: http://docs.ros.org/en/api/catkin/html/
[rosdep]: http://wiki.ros.org/rosdep