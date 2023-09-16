# Image watermarking : LSB(Least Significant Bit) method


## Introduction
The purpose of the code is to try LSB method and observe the result of embedded image and the watermark that extract from embedded image.

## Dependencies
- OpenCV-4.7
- C++ compiler (supporting C++17 or later)
- Cmake (v3.5 or later)

## Building step
1.Make sure all the necessary dependencies are installed on your system. <br>
2.Modify "CMakeLists.txt" let the content fit to your system.<br>
3.Open terminal and go to build directory.<br>
4.Run "cmake ..", if you use mingw run "cmake .. -G "MinGW Makefiles".<br>
5.Run "cmake --build ." or the appropriate command for your system to build the project.<br>
6.If the build is success, the executable file will be located at the build directory.<br>

## Usage
- The executable will read **"./input/OriginImage.jpg"** and **"./input/Watermark.jpg"**, then use LSB method to create an embedded image.<br>
- Embedded image will be saved at **"./output/EmbeddedImage.jpg"**.<br>
- After saving the embedded image, program will extract and reconstruct watermark from embedded image then save it to **"./output/ReconstructWatermark.jpg"**

### Note
- The size of "./input/OriginImage.jpg" and "./input/Watermark.jpg" must be the **same**