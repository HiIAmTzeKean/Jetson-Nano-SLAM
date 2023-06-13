# Jetson Nano SLAM

## Background

This project is a Nanyang Technological University (NTU) Undergraduate Research Experience on CAmpus (URECA).

Refer to the referenced submodules:

- [Jetson dual camera](https://github.com/HiIAmTzeKean/jetson-multicamera-pipelines)
- [ORB-SLAM](https://github.com/HiIAmTzeKean/ORB_SLAM2_CUDA)
- [Bag tools](https://github.com/HiIAmTzeKean/srv_tools)

These are modules that were forked and modified to fit the project scope.

## Aim

Explore the use of dual cameras and its impact on SLAM.

## Specifications

### Hardware tested

- Jetson Nano Developer Kit
- Logitech C910 1080P Webcam (2)

### Software tested

OS: Linux Ubuntu 18.04.6 LTS
Packages: Nvidia Jetpack 4.5.1-b17, DeepstreamSDK 5.1.0, OpenCV 4.1.0
ROS distribution: melodic

## Installation

Clone the full repository

```bash
git submodule init
git submodule update
```

For each of the submodule, ensure that all dependencies are installed and that they function independently. Note that if the Nvidia Cuda tool kit is not installed, you would have to visit [here](https://developer.nvidia.com/cuda-downloads) to find a suitable version for your machine.

## Usage

### Execution

The shell files can be found under the example folder. Ensure that you have execution permissions for each of the file in the folder.

```bash
cd Jetson-Nano-SLAM
./example/run
```

To run each submodule individually, you can run the specific submodule using the shell file, or to navigate to the directory of the submodule.

### config

- To change the FPS or the index limit of the image being streamed, navigate to ```src\srv_tools\bag_tools\launch\img_pub.launch``` to modify the parameters
- To modify the parameters of the stitched image, navigate to ```config\dual_usb.yaml```
