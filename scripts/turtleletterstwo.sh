rosparam set /background_r 200
rosparam set /background_g 0
rosparam set /background_b 0
rosservice call /clear
rosservice call /spawn 7 5.5 0 ""
rosservice call /spawn 10 1 2 ""
rosservice call /spawn 10 10 4 ""
rosservice call /spawn 1 10 5.5 ""
rosservice call /spawn 1 1 .5 ""
rosservice call /turtle1/set_pen '255' '255' '255' '5' '1'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[-1.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rosservice call /turtle1/set_pen '0' '255' '0' '5' '0'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.57]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[4.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.57]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[3.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[-6.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[3.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -4.69]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[6.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[6.0, 0.0, 0.0]' '[0.0, 0.0, -3.0]'
rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -20.0]'
#rosservice call /clear
rosservice call /turtle2/set_pen '0' '0' '255' '5' '0'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, 1.57]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[4.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[-8.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[4.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -0.7]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[5.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[-4.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -1.9]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[5.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'
rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[0.0, 0.0, 0.0]' '[0.0, 0.0, -20.0]'
# 1.5707963267949
