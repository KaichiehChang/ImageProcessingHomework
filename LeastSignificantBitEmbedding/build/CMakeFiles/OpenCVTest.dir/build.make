# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\Learning\NTUST\MaterDegree\Course\112\1120\Image Processing\ImageProcessingHomework\LeastSignificantBitEmbedding"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\Learning\NTUST\MaterDegree\Course\112\1120\Image Processing\ImageProcessingHomework\LeastSignificantBitEmbedding\build"

# Include any dependencies generated for this target.
include CMakeFiles/OpenCVTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/OpenCVTest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/OpenCVTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OpenCVTest.dir/flags.make

CMakeFiles/OpenCVTest.dir/main.cpp.obj: CMakeFiles/OpenCVTest.dir/flags.make
CMakeFiles/OpenCVTest.dir/main.cpp.obj: CMakeFiles/OpenCVTest.dir/includes_CXX.rsp
CMakeFiles/OpenCVTest.dir/main.cpp.obj: D:/Learning/NTUST/MaterDegree/Course/112/1120/Image\ Processing/ImageProcessingHomework/LeastSignificantBitEmbedding/main.cpp
CMakeFiles/OpenCVTest.dir/main.cpp.obj: CMakeFiles/OpenCVTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="D:\Learning\NTUST\MaterDegree\Course\112\1120\Image Processing\ImageProcessingHomework\LeastSignificantBitEmbedding\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OpenCVTest.dir/main.cpp.obj"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/OpenCVTest.dir/main.cpp.obj -MF CMakeFiles\OpenCVTest.dir\main.cpp.obj.d -o CMakeFiles\OpenCVTest.dir\main.cpp.obj -c "D:\Learning\NTUST\MaterDegree\Course\112\1120\Image Processing\ImageProcessingHomework\LeastSignificantBitEmbedding\main.cpp"

CMakeFiles/OpenCVTest.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/OpenCVTest.dir/main.cpp.i"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\Learning\NTUST\MaterDegree\Course\112\1120\Image Processing\ImageProcessingHomework\LeastSignificantBitEmbedding\main.cpp" > CMakeFiles\OpenCVTest.dir\main.cpp.i

CMakeFiles/OpenCVTest.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/OpenCVTest.dir/main.cpp.s"
	C:\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\Learning\NTUST\MaterDegree\Course\112\1120\Image Processing\ImageProcessingHomework\LeastSignificantBitEmbedding\main.cpp" -o CMakeFiles\OpenCVTest.dir\main.cpp.s

# Object files for target OpenCVTest
OpenCVTest_OBJECTS = \
"CMakeFiles/OpenCVTest.dir/main.cpp.obj"

# External object files for target OpenCVTest
OpenCVTest_EXTERNAL_OBJECTS =

OpenCVTest.exe: CMakeFiles/OpenCVTest.dir/main.cpp.obj
OpenCVTest.exe: CMakeFiles/OpenCVTest.dir/build.make
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_calib3d470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_core470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_dnn470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_features2d470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_flann470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_gapi470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_highgui470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_imgcodecs470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_imgproc470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_ml470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_objdetect470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_photo470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_stitching470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_video470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_videoio470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_aruco470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_barcode470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_bgsegm470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_bioinspired470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_ccalib470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_datasets470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_dnn_objdetect470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_dnn_superres470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_dpm470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_face470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_fuzzy470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_hfs470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_img_hash470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_intensity_transform470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_line_descriptor470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_mcc470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_optflow470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_phase_unwrapping470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_plot470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_quality470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_rapid470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_reg470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_rgbd470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_saliency470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_shape470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_stereo470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_structured_light470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_superres470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_surface_matching470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_text470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_tracking470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_videostab470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_wechat_qrcode470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_xfeatures2d470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_ximgproc470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_xobjdetect470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_xphoto470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libade.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_shape470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_highgui470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_datasets470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_plot470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_text470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_ml470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_phase_unwrapping470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_optflow470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_ximgproc470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_video470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_videoio470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_imgcodecs470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/liblibjpeg-turbo.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/liblibwebp.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/liblibpng.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/liblibtiff.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/liblibopenjp2.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libIlmImf.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_objdetect470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_calib3d470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_dnn470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/liblibprotobuf.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_features2d470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_flann470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libquirc.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_photo470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_imgproc470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libopencv_core470.a
OpenCVTest.exe: D:/OpenCV-4.7.0_static/install/x64/mingw/staticlib/libzlib.a
OpenCVTest.exe: CMakeFiles/OpenCVTest.dir/linkLibs.rsp
OpenCVTest.exe: CMakeFiles/OpenCVTest.dir/objects1.rsp
OpenCVTest.exe: CMakeFiles/OpenCVTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="D:\Learning\NTUST\MaterDegree\Course\112\1120\Image Processing\ImageProcessingHomework\LeastSignificantBitEmbedding\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable OpenCVTest.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\OpenCVTest.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OpenCVTest.dir/build: OpenCVTest.exe
.PHONY : CMakeFiles/OpenCVTest.dir/build

CMakeFiles/OpenCVTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\OpenCVTest.dir\cmake_clean.cmake
.PHONY : CMakeFiles/OpenCVTest.dir/clean

CMakeFiles/OpenCVTest.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\Learning\NTUST\MaterDegree\Course\112\1120\Image Processing\ImageProcessingHomework\LeastSignificantBitEmbedding" "D:\Learning\NTUST\MaterDegree\Course\112\1120\Image Processing\ImageProcessingHomework\LeastSignificantBitEmbedding" "D:\Learning\NTUST\MaterDegree\Course\112\1120\Image Processing\ImageProcessingHomework\LeastSignificantBitEmbedding\build" "D:\Learning\NTUST\MaterDegree\Course\112\1120\Image Processing\ImageProcessingHomework\LeastSignificantBitEmbedding\build" "D:\Learning\NTUST\MaterDegree\Course\112\1120\Image Processing\ImageProcessingHomework\LeastSignificantBitEmbedding\build\CMakeFiles\OpenCVTest.dir\DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/OpenCVTest.dir/depend

