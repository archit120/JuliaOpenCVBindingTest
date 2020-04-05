# JuliaOpenCVBindingTest
A simple example of Julia and OpenCV binding using CxxWrap.jl. The master branch has manually written wrapper and test files. The wrapper files of interest are cv2.cpp and cv2.jl. OpneCVImages.jl is a wrapper array interface over the Mat class. It has support for both C++ and Julia managed memory with appropriate conversions applied in either case. The wrapper interface assumes a Mat with 2 dimensions and n channels for now but it supports all usual datatypes.

There are two test files for demonstration. 
 - test.jl - Loads an image in color and grayscale and then displays them. Then create a view of the color image, modify and display again. Finally, runs a SimpleBlobDetector algorithm on the gray image and print output.
 - face_detect.jl - Converted from Python face_detect.py example. Loads default webcam and runs nested face detection algorithm.


Run as
```
julia test.jl
julia face_detect.jl
```

To compile follow instructions at https://github.com/JuliaInterop/CxxWrap.jl and https://github.com/JuliaInterop/libcxxwrap-julia

This code has been tested against commits (latest master of this commit) https://github.com/JuliaInterop/CxxWrap.jl/commit/9925aa2fb3348a24acad310e3779c1b16bfa7661 and https://github.com/JuliaInterop/libcxxwrap-julia/commit/7959f09947f95e67ee094a2ee3fb8b7f9be696f8 respectively on Julia 1.3.1

The path for ```CMAKE_PREFIX_PATH``` will be the path of the build directory for libcxxwrap-julia

```
cmake -DCMAKE_PREFIX_PATH=/path/to/libcxxwrap-julia-prefix .
cmake --build .
```

The branch automated-generation contains some WIP progress on automated generation of the wrappers. Run after modifying ```hdr_parser.py``` with appropriate header file directories.
```
python3 gen3.py
```

The script will output declrations for functions and classes along with other information.

The file ````autocode.cpp``` contains auto-generated C++ code by gen3.py with additional formatting. The file does not compile right now but it is very close to the intended final result. 