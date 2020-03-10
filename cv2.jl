module jl_cpp_cv2
  using CxxWrap
  @wrapmodule(joinpath("lib","libcv2_jl"))

  function __init__()
    @initcxx
  end
end

module cv2
    import Main.jl_cpp_cv2
    # function cpp_mat_to_jl_arr(mat)
    #     return Array{UInt8, 2}(jl_cpp_cv2.make_julia_array(mat))
    # end

    # function jl_arr_to_cpp_mat(img::Array{UInt8, 2} arr)
        
    # end

    function waitKey(delay::Integer)
        jl_cpp_cv2.waitKey(delay)
    end
    function imshow(winname::String, img)
        cv_String_winname = jl_cpp_cv2.cv_String(winname)
        jl_cpp_cv2.imshow(cv_String_winname, img)
    end
    function imread(filename::String, flags::Integer)
        cv_String_filename = jl_cpp_cv2.cv_String(filename)
        # tmp = jl_cpp_cv2.imread(cv_String_filename, flags)
        return jl_cpp_cv2.imread(cv_String_filename, flags)
    end
    function namedWindow(winname::String, flags::Integer)
        cv_String_winname = jl_cpp_cv2.cv_String(winname)
        # tmp = jl_cpp_cv2.imread(cv_String_filename, flags)
        jl_cpp_cv2.namedWindow(cv_String_winname, flags)
    end
end