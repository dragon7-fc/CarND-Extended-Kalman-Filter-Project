FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install cmake -y
RUN apt-get install openssl
RUN apt-get install libssl-dev -y

# Install CarND-Extended-Kalman-Filter-Project
WORKDIR /root/workspace
COPY ./ CarND-Extended-Kalman-Filter-Project/
WORKDIR /root/workspace/CarND-Extended-Kalman-Filter-Project
RUN chmod a+x install-ubuntu.sh
RUN apt-get install sudo
RUn apt-get install libuv1-dev gcc g++ make -y
RUN ./install-ubuntu.sh

# Install Eclipse IDE
RUN apt-get install -y eclipse-cdt-*

# Create Eclipse IDE project
RUN mkdir build
RUN mv CMakeLists.txt src
RUN sed -i 's/src/./g' src/CMakeLists.txt
WORKDIR /root/workspace/CarND-Extended-Kalman-Filter-Project/build
RUN cmake -G"Eclipse CDT4 - Unix Makefiles" -D CMAKE_BUILD_TYPE=Debug ../src/
RUN make

WORKDIR /root/workspace

# Get Google's C++ style guide for Eclipse
COPY eclipse-cpp-google-style.xml ./

CMD ["eclipse"]
