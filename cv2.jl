
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

    const Image = Union{AbstractArray{UInt8, 3}, AbstractArray{UInt8, 2}}
    const Scalar = Union{Tuple{Float64}, Tuple{Float64, Float64}, Tuple{Float64, Float64, Float64}, NTuple{4, Float64}}
    const Size = Tuple{Integer, Integer}
    const Rect = NTuple{4, Integer}

    const CASCADE_SCALE_IMAGE = Integer(2)
    const COLOR_BGR2GRAY = Integer(6)

    change_major_order(X::AbstractArray, size...=size(X)...) = permutedims(reshape(X, reverse([size...])...), length(size):-1:1)

    function cpp_mat_to_jl_arr(mat)
        arr = jl_cpp_cv2.cv_Mat_mutable_data(mat)
        sz = size(arr)
        arr = PermutedDimsArray(arr, [1,3,2])
        arr = reinterpret(UInt8, arr)

        return arr
    end

    function jl_arr_to_cpp_mat(img::Image)
        if typeof(img) <: Base.ReinterpretArray
            img = parent(img)
        end
        if  ~(typeof(img) <: PermutedDimsArray)
            img = permutedims(img, [1,3,2]) #DOESNT SHARE MEMORY!!!!
            print("WARNING: Image doesn't share memory")
        else
            img = parent(img)
        end
        return jl_cpp_cv2.cv_Mat_convert_fromjl_dim3(img, size(img)[2], size(img)[3], size(img)[1])    
    end

    function jl_pt_to_cpp_pt(pt::Tuple{Real, Real})
        return jl_cpp_cv2.cv_Point2f(Float32(pt[1]), Float32(pt[2]))
    end

    function jl_scalar_to_cpp_scalar(sc::Scalar)
        if size(sc,1)==1
            return jl_cpp_cv2.cv_Scalar(sc[1], 0, 0, 0)
        elseif size(sc,1) == 2
            return jl_cpp_cv2.cv_Scalar(sc[1], sc[2], 0, 0)
        elseif size(sc,1) == 3
            return jl_cpp_cv2.cv_Scalar(sc[1], sc[2], sc[3], 0)
        end
        return jl_cpp_cv2.cv_Scalar(sc[1], sc[2], sc[3], sc[4])
    end

    function jl_size_to_cpp_size(sx::Size)
        return jl_cpp_cv2.cv_Size2i(sx[1], sx[2])
    end

    function cpp_Point2f_to_jl_tuple(pt)
        return (jl_cpp_cv2.cv_Point2f_get_x(pt), jl_cpp_cv2.cv_Point2f_get_y(pt))
    end

    function cpp_KeyPoint_to_jl_KeyPoint(kp)
        kpr = KeyPoint(cpp_Point2f_to_jl_tuple(jl_cpp_cv2.cv_KeyPoint_get_pt(kp)), jl_cpp_cv2.cv_KeyPoint_get_size(kp), 
                        jl_cpp_cv2.cv_KeyPoint_get_angle(kp), jl_cpp_cv2.cv_KeyPoint_get_response(kp), 
                        jl_cpp_cv2.cv_KeyPoint_get_octave(kp), jl_cpp_cv2.cv_KeyPoint_get_class_id(kp))
        return kpr
    end

    function cpp_Size2i_to_jl_tuple(sz)
        return (jl_cpp_cv2.cv_Size2i_get_width(sz), jl_cpp_cv2.cv_Size2i_get_height(sz))
    end

    function cpp_Rect2i_to_jl_tuple(pt)
        return (jl_cpp_cv2.cv_Rect2i_get_x(pt), jl_cpp_cv2.cv_Rect2i_get_y(pt), jl_cpp_cv2.cv_Rect2i_get_width(pt), jl_cpp_cv2.cv_Rect2i_get_height(pt))
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

    function rectangle(img::Image, pt1::Tuple{Integer, Integer}, pt2::Tuple{Integer, Integer}, color::Scalar; thickness::Integer=1, lineType::Integer=8, shift::Integer=0)
        jl_cpp_cv2.rectangle(jl_arr_to_cpp_mat(img), jl_pt_to_cpp_pt(pt1), jl_pt_to_cpp_pt(pt2), jl_scalar_to_cpp_scalar(color), thickness, lineType, shift)
    end

    function VideoCapture()
        return jl_cpp_cv2.cv_VideoCapture()
    end

    function VideoCapture(index::Integer)
        return jl_cpp_cv2.cv_VideoCapture(index)
    end

    function VideoCapture(filename::String)
        return jl_cpp_cv2.cv_VideoCapture(jl_cpp_cv2.cv_String(filename))
    end

    function VideoCapture_read(arg1)
        ret1 = jl_cpp_cv2.cv_VideoCapture_read(arg1)
        return (ret1[1], cpp_mat_to_jl_arr(ret1[2]))
    end

    function cvtColor(src::Image, code::Integer)
        return cpp_mat_to_jl_arr(jl_cpp_cv2.cvtColor(jl_arr_to_cpp_mat(src), code))
    end
    function equalizeHist(src::Image)
        return cpp_mat_to_jl_arr(jl_cpp_cv2.equalizeHist(jl_arr_to_cpp_mat(src)))
    end

    function CascadeClassifier(filename::String)
        return jl_cpp_cv2.cv_CascadeClassifier(jl_cpp_cv2.cv_String(filename))
    end

    function CascadeClassifier_detectMultiScale(inp1, image::Image;
                                             scaleFactor::Float64 = 1.1,
                                             minNeighbors::Integer = 3, 
                                             flags::Integer = 0,
                                             minSize::Size = (0,0),
                                             maxSize::Size = (0,0))
        ret = jl_cpp_cv2.cv_CascadeClassifier_detectMultiScale_1(inp1, jl_arr_to_cpp_mat(image), scaleFactor, minNeighbors, flags, jl_size_to_cpp_size(minSize), jl_size_to_cpp_size(maxSize))
        arr = Array{Rect, 1}()
        for it in ret
            push!(arr, cpp_Rect2i_to_jl_tuple(it))
        end
        return arr
    end


end