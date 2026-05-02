# ElsaBot

The ElsaBot project started as the Team GrandPlay entry for the OpenCV AI 2021 contest.  The project applied the OpenCV AI depth camera (OAK-D) in a fun way.  Since then the project has evolved in various directions.

**In general, this project and all repos on this site have been created for the purpose of pure 'maker' enjoyment.  Don't expect this code to work out of the box for your project, and don't expect this code to be clean or 'perfect'. It is a continual work in progress driven by what currently interests and amuses the developer 😀.**

The ROS 2 framework is used for this project.  Many of the repositories on this site contain the ROS 2 packages that make up the custom code written for this project.  Please see the 2021 contest project report contained in this repository to better understand the general architecture and implementation. The appendix of that document describes the source code repositories used.  Note however that quite a bit has changed since that report was written.  Some of the differences are described below.  Also see a more recent diagram that shows an overview of all ROS nodes used:
* [Architecture Diagram](elsabot_diagram_rev2.pdf)

Videos of the robot in action:
* Final contest video - https://youtu.be/WZ-JJvT5fn8
* Demo video - https://youtu.be/nfTzekgK6BQ
* YouTube channel with more demos - https://www.youtube.com/channel/UCBhDDfn9TskLmcuDGkDC7ow

The repositories used for this project have been updated as needed for ROS2 Jazzy.

<hr>
Some of the updates to this project since the contest report was written:

* CPU changes:
  * Initially two RPI4 computers were used.
  * Later, a Celeron-based J4125 computer was used to replace the RPI4 computers.
  * More recently support for a Jetson Orin AGX was added.  This brings support for:
     * Local text-to-speech and speech-to-text (previously used Microsoft cloud services).  See the **elsabot_speech_input** and **elsabot_audio_output** repos.
     * Opensource wakeword processing (previously used Microsoft functionality that ran locally)
     * LLM support (chat and control).  Supported via scripts in the **jetson_support** repo for launching models, and support in **elsabot_bt** repo for using a model for chat and control.
     * Demo of chat functionality: https://www.youtube.com/shorts/Z6r3LvBxZNc
  * The elsabot docker build supports the Celeron and Jetson CPUs.  It should also support using an RPI4, but has not been tested.
* A small robot arm was added to the front of Elsabot (on the Create2 robot base).  See the **xArm_Lewansoul_ROS** and **elsabot_bt** repos.
* Additional robot bases are also now used.  These include:
   * Custom 4 wheel-drive skid steer base
      * base uC controller: https://github.com/rshorton/linorobot2_hardware  (master branch)
      * bring-up: https://github.com/rshorton/elsabot_4wd (obsolete)
      * More recently, this base has been revised to support Ackermann steering instead of skid steering.
      * The new bring-up repo: https://github.com/rshorton/elsabot_robot.

   * PowerWheels Jeep, see https://github.com/rshorton/elsabot_jeep and
      * base uC controller: https://github.com/rshorton/linorobot2_hardware (jeep branch)
      * bring-up: https://github.com/rshorton/elsabot_jeep

 <hr>

 A Docker build environment (as of Jazzy) is used to build/run the Elsabot projects.  See the **elsabot_docker** project https://github.com/rshorton/elsabot_docker for build/setup steps.  (If you are new to ROS2 and not using Docker (or Podman) to create containers that can help manage version dependencies and avoid host OS conflicts with ROS2 versions, you are encouraged to research the benefits since it can avoid many headaches.)
 
   
