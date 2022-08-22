# catkin_init_workspace
# catkin_make

cd build
cmake ..
make

source ~/LaserUndistortion/build/devel/setup.bash
roslaunch LaserUndistortion LaserUndistortion.launch
#rosbag play --clock 2020-03-17-10-23-25.bag

## 录制自己的bag包
# rosbag record -a
# rosbag info bag/bag_file_name.bag  # 显示bag文件详细信息
## rosbag filter result.bag output.bag "t.to_sec() >= 1658905610.000000 and t.to_sec() <= 1658905859.000000"
# rosbag play result.bag -l  # 循环播放，或者rosbag play bag_file_name -l -r 0.5 # 以0.5倍速循环播放