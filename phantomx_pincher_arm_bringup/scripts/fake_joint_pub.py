#!/usr/bin/env python

import rospy
from sensor_msgs.msg import JointState

rospy.init_node("fake_joint_pub")
p = rospy.Publisher('joint_states', JointState, queue_size=5)

msg = JointState()
msg.name = ["gripper_fake_joint"]
msg.position = [0.0]
msg.velocity = [0.0]

rate = rospy.Rate(5.0)
while not rospy.is_shutdown():
    msg.header.stamp = rospy.Time.now() + rospy.Duration(0.5)  # make the state valid into the future to allow slow rate
    p.publish(msg)
    try:
        rate.sleep()
    except rospy.exceptions.ROSInterruptException:
        pass
