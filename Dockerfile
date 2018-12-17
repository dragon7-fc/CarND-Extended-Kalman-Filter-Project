FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install cmake -y
RUN apt-get install openssl
RUN apt-get install libssl-dev -y

WORKDIR /root
RUN git clone https://github.com/udacity/CarND-Extended-Kalman-Filter-Project
WORKDIR /root/CarND-Extended-Kalman-Filter-Project
RUN chmod a+x install-ubuntu.sh

RUN apt-get install sudo
RUn apt-get install libuv1-dev gcc g++ make -y
RUN ./install-ubuntu.sh
RUN mkdir build && cd build && cmake .. && make

WORKDIR /root
RUN wget https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2018-09/R/eclipse-cpp-2018-09-linux-gtk-x86_64.tar.gz
RUN tar zxvf eclipse-cpp-2018-09-linux-gtk-x86_64.tar.gz
