# Set CMake minimum require version 
cmake_minimum_required(VERSION 3.5)

# Define the name of the project
project(WatermarkLsbMethod)

# Use stastic link
set(OpenCV_STATIC ON)

# Set the install directory of OpenCV
# The following directory is my environment, please change it to your own directory where you install your OpenCV when you want to build.
# For dynamic library D:/OpenCV-4.7.0/install
# For static library D:/OpenCV-4.7.0_static/install
set(OpenCV_DIR "D:/OpenCV-4.7.0_static/install")

# Locate the OpenCV package
find_package(OpenCV REQUIRED)

# Add source file to executable target
add_executable(WatermarkLsbMethodApp main.cpp)

# Link the executable target with OpenCV libraries
target_link_libraries(WatermarkLsbMethodApp ${OpenCV_LIBS})



#compile step
#1.Add this "CMakeLists.txt" at the same folder with the source file
#2.open terminal and move to the directory where source file is.
#3.mkdir build
#4.cd build
#5.cmake .. -G "MinGW Makefiles" (for mingw)
#6.cmake --build .
#7.The executable image with the name that defined for the executable will exist in build if compile is success.