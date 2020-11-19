#!/bin/bash

#Actually build ElasticFusion
cd Core
mkdir build
cd build
cmake ../src
make -j$(nproc)
cd ../../GPUTest
mkdir build
cd build
cmake ../src
make -j$(nproc)
cd ../../GUI
mkdir build
cd build
cmake ../src -DWITH_REALSENSE=1
make -j$(nproc)
