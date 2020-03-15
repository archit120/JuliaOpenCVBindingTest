
module jl_cpp_cv2


    using CxxWrap
    @wrapmodule(joinpath("lib","libcv2_jl"))

    function __init__()
        @initcxx
    end

end


module cv2
    import Main.jl_cpp_cv2

    struct KeyPoint
        pt::Tuple{Float32,Float32}
        size::Float32
        angle::Float32
        response::Float32
        octave::Integer
        class_id::Integer
    end

    const Image = Union{Array{UInt8, 3}, Array{UInt8, 2}}

    change_major_order(X::AbstractArray, size...=size(X)...) = permutedims(reshape(X, reverse([size...])...), length(size):-1:1)

    function cpp_mat_to_jl_arr(mat)
        arr = jl_cpp_cv2.cv_Mat_mutable_data(mat)
        sz = size(arr)
        arr = permutedims(arr, [1,3,2])
        if size(arr, 1)==1
            arr = Array{UInt8, 2}(reshape(arr, size(arr)[2:3]))
        else
            arr = Array{UInt8, 3}(arr)
        end
        return arr
    end

    function jl_arr_to_cpp_mat(img::Image)
        if ndims(img)==2
            img = permutedims(img, [2, 1])
            return jl_cpp_cv2.cv_Mat_convert_fromjl_dim2(img, size(img)[1], size(img)[2])
        else
            img = permutedims(img, [1, 3, 2])
            return jl_cpp_cv2.cv_Mat_convert_fromjl_dim3(img, size(img)[2], size(img)[3], size(img)[1])
            
        end
    end

    function cpp_Point2f_to_jl_tuple(pt)
        return ((jl_cpp_cv2.cv_Point2f_get_x(pt), jl_cpp_cv2.cv_Point2f_get_y(pt)))
    end

    function cpp_KeyPoint_to_jl_KeyPoint(kp)
        kpr = KeyPoint(cpp_Point2f_to_jl_tuple(jl_cpp_cv2.cv_KeyPoint_get_pt(kp)), jl_cpp_cv2.cv_KeyPoint_get_size(kp), 
                        jl_cpp_cv2.cv_KeyPoint_get_angle(kp), jl_cpp_cv2.cv_KeyPoint_get_response(kp), 
                        jl_cpp_cv2.cv_KeyPoint_get_octave(kp), jl_cpp_cv2.cv_KeyPoint_get_class_id(kp))
        return kpr
    end

    function waitKey(delay::Integer)
        jl_cpp_cv2.waitKey(delay)
    end
    function imshow(winname::String, img::Image)
        cv_String_winname = jl_cpp_cv2.cv_String(winname)
        cv_Mat_img = cv2.jl_arr_to_cpp_mat(img)
        jl_cpp_cv2.imshow(cv_String_winname, cv_Mat_img)
    end
    function imread(filename::String, flags::Integer)
        cv_String_filename = jl_cpp_cv2.cv_String(filename)
        cv_Mat_tmp = jl_cpp_cv2.imread(cv_String_filename, flags)
        jl_Image = cpp_mat_to_jl_arr(cv_Mat_tmp)
        return jl_Image
    end
    function namedWindow(winname::String, flags::Integer)
        cv_String_winname = jl_cpp_cv2.cv_String(winname)
        jl_cpp_cv2.namedWindow(cv_String_winname, flags)
    end
    function simpleBlobDetector_create()
        return jl_cpp_cv2.cv_simpleBlobDetector_create()
    end
    function simpleBlobDetector_solve(algo, img::Image)
        ret = jl_cpp_cv2.cv_simpleBlobDetector_solve(algo, jl_arr_to_cpp_mat(img))
        arr = Array{cv2.KeyPoint, 1}()
        for it in ret
            push!(arr, cpp_KeyPoint_to_jl_KeyPoint(it))
        end
        return arr
    end
end