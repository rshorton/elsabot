# ElsaBot

The ElsaBot project was the Team GrandPlay entry for the OpenCV AI 2021 contest.  This project applied the OpenCV AI depth camera (OAK-D) in a fun way.

The ROS 2 framework is used for this project.  Several of the repositories on this site contain the ROS 2 packages that make up the custom code written for this project.  To better understand the architecture and implemenation, please see the project report contained in this repository.  The appendix of that document describes the other source code repositories.  Also see a more recent diagram that shows an overview of all ROS nodes used:
* elsabot_diagram_rev1.pdf

Videos of the robot in action:
* Final contest video - https://youtu.be/WZ-JJvT5fn8
* Demo video - https://youtu.be/nfTzekgK6BQ
* YouTube channel with more demos - https://www.youtube.com/channel/UCBhDDfn9TskLmcuDGkDC7ow

The repositories used for this project have been updated as needed for ROS2 Jazzy.

<hr>
Updates to project since the contest report was written:

1. The two RPI4 computers have been replace with one Celeron-based J4125 computer. 
2. A small robot arm has been added to the front of Elsabot (on the Create2 robot base).  See the xArm_Lewansoul_ROS repo for the source.
3. Additional robot bases are also now used.  These include:
   * 4 wheel-drive skid steer base
      * base uC controller: https://github.com/rshorton/linorobot2_hardware  (master branch)
      * bring-up: https://github.com/rshorton/elsabot_4wd
   * PowerWheels Jeep, see https://github.com/rshorton/elsabot_jeep and
      * base uC controller: https://github.com/rshorton/linorobot2_hardware (jeep branch)
      * bring-up: https://github.com/rshorton/elsabot_jeep

 <hr>
 A Docker build environment (as of Jazzy) can be used to build/run the Elsabot projects.  See the elsabot_docker project https://github.com/rshorton/elsabot_docker
 for build/setup steps.

 Use this script to clone the Elsabot projects.

    get_elsabot_repos.sh

   
