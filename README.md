# ElsaBot

The ElsaBot project was the Team GrandPlay entry for the OpenCV AI 2021 contest.  This project applied the OpenCV AI depth camera (OAK-D) in a fun way.

The ROS 2 framework was used for this project.  Several of the repositories on this site contain the ROS 2 packages that make up the custom code written for this project.  To better understand the architecture and implemenation, please see the project report contained in this repository.  The appendix of that document describes the other source code repositories.

Videos of the robot in action:
* Final contest video - https://youtu.be/WZ-JJvT5fn8
* Demo video - https://youtu.be/nfTzekgK6BQ
* YouTube channel with more demos - https://www.youtube.com/channel/UCBhDDfn9TskLmcuDGkDC7ow

The repositories used for this project have been updated as needed for ROS2 Humble.

<hr>
Updates to project since the contest report was written:

1. The two RPI4 computers have been replace with one Celeron-based J4125 computer. 
2. A small robot arm has been added to the front of Elsabot.  See the xArm_Lewansoul_ROS repo for the source.
3. The original RC servos used for the pan-tilt base of the head were replaced with bus servos for better control.
4. Additional robot bases are also now used.  These include:
   * 4 wheel-drive skid steer base
      * base uC controller: https://github.com/rshorton/linorobot2_hardware  (master branch)
      * bring-up: https://github.com/rshorton/elsabot_4wd
   * PowerWheels Jeep, see https://github.com/rshorton/elsabot_jeep and
      * base uC controller: https://github.com/rshorton/linorobot2_hardware (jeep branch)
      * bring-up: https://github.com/rshorton/elsabot_jeep

 
   
