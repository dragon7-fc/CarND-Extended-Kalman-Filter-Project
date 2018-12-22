# **Extended Kalman Filter** 

**Extended Kalman Filter Project**

We are providing simulated lidar and radar measurements detecting a bicycle that travels around your vehicle. You will use a Kalman filter, lidar measurements and radar measurements to track the bicycle's position and velocity.

[//]: # (Image References)

[image1]: ./images/sensor_fusion_general_flow.png "Sensor Fusion General Flow"
[image2]: ./images/aug.jpg "Data augmentation"
[image3]: ./images/pre.jpg "Preprocessing"
[image4]: ./images/run1.gif "run1 video"

---
### Dependencies

* [simulator](https://github.com/udacity/self-driving-car-sim/releases)

### Environment Setup

1. Open Eclipse IDE

__Linux__:
```
docker run --rm --name kalman \
    --net=host -e DISPLAY=$DISPLAY \
    -v $HOME/.Xauthority:/root/.Xauthority \
    dragon7/carnd-extended-kalman-filter-project
```

__Mac__:
```
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"

docker run --rm --name kalman \
    -e DISPLAY=[IP_ADDRESS]:0 \
    -p 4567:4567 \
    dragon7/carnd-extended-kalman-filter-project
```

2. Import the project into Eclipse

    1. Open Eclipse (make sure you have the CDT 4.0 or newer).
    2. Import project using Menu `File > Import`
    <img src="ide_profiles/Eclipse/images/Capture-EclipseMenuFileImport.jpg" width="500">
    3. Select `General > Existing projects into workspace`
    <img src="ide_profiles/Eclipse/images/Capture-EclipseProjectsIntoWorkspace.jpg" width="500">
    4. **Browse** where your build tree is and select the root build tree directory. Keep "Copy projects into workspace" unchecked.
    <img src="ide_profiles/Eclipse/images/Capture-Import-2.png" width="500">
    5. Now you should have a fully functional eclipse project
    <img src="ide_profiles/Eclipse/images/Capture-Final.png" width="800">

3. Code Style

    1. From Eclipse go to `Window > Preferences > C/C++ > Code Style > Formatter`
    2. Click Import
    3. Select `/root/workspace/eclipse-cpp-google-style.xml`
    4. Click Ok

4. Build

    * Select `Project -> Build All`

    <img src="images/build_all.png" width="500">

5. Run

    * `Right click Project -> Run as -> 1 Local C++ Application`

    <img src="images/run_as.png" width="500">

6. Run simulator

    

### Sensor Funsion General Flow

Belwo is the program flow of this project.

![alt text][image1]

* `src/main.cpp`

communicates with the Term 2 Simulator receiving data measurements, calls a function to run the Kalman filter, calls a function to calculate RMSE

* `src/FusionEKF.cpp`

initializes the filter, calls the predict function, calls the update function

* `src/kalman_filter.cpp`

defines the predict function, the update function for lidar, and the update function for radar

* `src/tools.cpp`

function to calculate RMSE and the Jacobian matrix

