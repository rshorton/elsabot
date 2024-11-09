#!/bin/bash

clone_repo () {
  REPO=$1

  NAME=${REPO%.*}
  NAME=${NAME#*/}

  echo "NAME= $NAME"
  echo "Repo = $REPO"

  if [ ! -e src/$NAME ]; then
    git clone $REPO src
  else
    echo "$NAME already cloned"
  fi
}

clone_repo git@github.com:rshorton/elsabot_docker.git

# Base bring-up packages
clone_repo git@github.com:rshorton/elsabot_4wd.git
clone_repo git@github.com:rshorton/create_robot.git
clone_repo git@github.com:rshorton/elsabot_jeep.git

clone_repo git@github.com:rshorton/cmd_vel_mux.git

clone_repo git@github.com:rshorton/robot_head.git
clone_repo git@github.com:rshorton/robot_head_interfaces.git
clone_repo git@github.com:rshorton/robot_ui_interfaces.git
clone_repo git@github.com:rshorton/object_detection_msgs.git

clone_repo git@github.com:rshorton/elsabot_bt.git
clone_repo git@github.com:rshorton/elsabot_game_data.git

clone_repo git@github.com:rshorton/speech_input_server.git
clone_repo git@github.com:rshorton/speech_output_server.git
clone_repo git@github.com:rshorton/speech_action_interfaces.git

clone_repo git@github.com:rshorton/xArm_Lewansoul_ROS.git
clone_repo git@github.com:rshorton/xarm_xarm_ikfast_plugin.git

clone_repo git@github.com:rshorton/kml_publisher.git
clone_repo git@github.com:rshorton/nav2_fixed_path_planner.git
clone_repo git@github.com:rshorton/system_shutdown.git
clone_repo git@github.com:rshorton/ebot_car.git
