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
  BRANCH=$2

  NAME=${REPO%.*}
  NAME=${NAME#*/}

  if [ ! -e $NAME ]; then
    echo "Cloning $NAME"

    BRANCH_ARG=""
    if [ ! -z $BRANCH ]; then
      BRANCH_ARG="-b ${BRANCH}"
    fi

    if [ $READONLY ]; then
      git clone ${BRANCH_ARG} http://github.com/$REPO
    else
      git clone ${BRANCH_ARG} git@github.com:$REPO
    fi

  else
    echo "$NAME already cloned"
  fi

}

clone_repo rshorton/elsabot_docker.git

# Base bring-up packages
pushd src

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

clone_repo rshorton/elsabot_bt.git bt_v3

# For on device STT/TTS (on Jetson)
clone_repo rshorton/elsabot_audio_output.git
clone_repo rshorton/elsabot_audio_output_interfaces.git
clone_repo rshorton/elsabot_speech_input.git

# For MS Speech STT/TTS (on Seeed Odyssey)
clone_repo rshorton/speech_input_server.git
clone_repo rshorton/speech_output_server.git
clone_repo rshorton/speech_action_interfaces.git

clone_repo rshorton/xArm_Lewansoul_ROS.git
clone_repo rshorton/xarm_xarm_ikfast_plugin.git

clone_repo rshorton/kml_publisher.git
clone_repo rshorton/nav2_fixed_path_planner.git
clone_repo rshorton/system_shutdown.git
clone_repo rshorton/ebot_car.git

clone_repo rshorton/ina226_power_monitor.git

popd

clone_repo rshorton/elsabot_game_data.git ./

# And micro_ros_setup
git clone -b jazzy https://github.com/micro-ROS/micro_ros_setup.git src/micro_ros_setup
