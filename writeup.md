# **Extended Kalman Filter** 

**Extended Kalman Filter Project**

The goals / steps of this project are the following:
*


[//]: # (Image References)

[image1]: ./images/cnn-architecture-nvidia.png "Model Visualization"
[image2]: ./images/aug.jpg "Data augmentation"
[image3]: ./images/pre.jpg "Preprocessing"
[image4]: ./images/run1.gif "run1 video"

---
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

### ...