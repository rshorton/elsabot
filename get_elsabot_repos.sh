#!/bin/bash

READONLY=true

if [ $# -ge 1 ]; then
  if [ $1 == '-rw' ]; then
    READONLY=false
  fi
fi  

if [ ! -e src ]; then
  mkdir src
fi

clone_repo () {
  REPO=$1
  DIR=$2

  if [ -z $DIR ]; then
    DIR=src
  fi

  NAME=${REPO%.*}
  NAME=${NAME#*/}

  if [ ! -e $DIR/$NAME ]; then
    echo "Cloning $NAME"
    pushd $DIR

    if [ $READONLY ]; then
      git clone http://github.com/$REPO
    else
      git clone git@github.com:$REPO
    fi

    popd
  else
    echo "$NAME already cloned"
  fi

}

clone_repo rshorton/elsabot_docker.git ./

# Base bring-up packages
clone_repo rshorton/elsabot_robot.git
clone_repo rshorton/elsabot_4wd.git
clone_repo rshorton/create_robot.git
clone_repo rshorton/elsabot_jeep.git

clone_repo rshorton/libcreate.git
clone_repo rshorton/cmd_vel_mux.git
clone_repo rshorton/cmd_vel_timeout.git
clone_repo rshorton/elsabot_jeep_sim.git

clone_repo rshorton/robot_head.git
clone_repo rshorton/robot_head_interfaces.git
clone_repo rshorton/robot_ui_interfaces.git
clone_repo rshorton/object_detection_msgs.git
clone_repo rshorton/elsabot_custom_messages.git

clone_repo rshorton/elsabot_bt.git
clone_repo rshorton/elsabot_game_data.git ./

clone_repo rshorton/speech_input_server.git
clone_repo rshorton/speech_output_server.git
clone_repo rshorton/speech_action_interfaces.git

clone_repo rshorton/xArm_Lewansoul_ROS.git
clone_repo rshorton/xarm_xarm_ikfast_plugin.git

clone_repo rshorton/kml_publisher.git
clone_repo rshorton/nav2_fixed_path_planner.git
clone_repo rshorton/system_shutdown.git
clone_repo rshorton/ebot_car.git

# And micro_ros_setup
git clone -b jazzy https://github.com/micro-ROS/micro_ros_setup.git src/micro_ros_setup
