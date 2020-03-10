# JuliaOpenCVBindingTest
 A simple example of Julia and OpenCV binding using CxxWrap.jl

Compile with
```
cmake -DCMAKE_PREFIX_PATH={CxxWrap Prefix Path} .
cmake --build .
```

Run as
```
julia test.jl
```

The test loads two images and then displays them

The path for CMAKE_PREFIX_PATH can be obtained from Julia using:
```
julia> using CxxWrap
julia> CxxWrap.CxxWrapCore.prefix_path()
```