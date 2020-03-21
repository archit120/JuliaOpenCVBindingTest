
include("OpenCVImages.jl")

module jl_cpp_cv2
    using CxxWrap
    @wrapmodule(joinpath("lib","libcv2_jl"))

    function __init__()
        @initcxx
    end

end


module cv2
    import Main.jl_cpp_cv2
    import Main.OpenCVImages


    const CV_CN_MAX = 512
    const CV_CN_SHIFT = 3
    const CV_DEPTH_MAX = (1 << CV_CN_SHIFT)

    const CV_8U = 0
    const CV_8S = 1
    const CV_16U = 2
    const CV_16S = 3
    const CV_32S = 4
    const CV_32F = 5
    const CV_64F = 6

    const CV_MAT_DEPTH_MASK = (CV_DEPTH_MAX - 1)
    CV_MAT_DEPTH(flags) = ((flags) & CV_MAT_DEPTH_MASK)

    CV_MAKETYPE(depth,cn) = (CV_MAT_DEPTH(depth) + (((cn)-1) << CV_CN_SHIFT))
    CV_MAKE_TYPE = CV_MAKETYPE
 

    struct KeyPoint
        pt::Tuple{Float32,Float32}
        size::Float32
        angle::Float32
        response::Float32
        octave::Integer
        class_id::Integer
    end

    const Image = Union{OpenCVImages.OpenCVImage{A} where {A}, SubArray{UInt8, N, OpenCVImages.OpenCVImage{A}, T} where {N, A, T}}
    const Scalar = Union{Tuple{Float64}, Tuple{Float64, Float64}, Tuple{Float64, Float64, Float64}, NTuple{4, Float64}}
    const Size = Tuple{Integer, Integer}
    const Rect = NTuple{4, Integer}

    const size_t = UInt64 #TODO: Get size_t from CxxWrap maybe

    const CASCADE_SCALE_IMAGE = Integer(2)
    const COLOR_BGR2GRAY = Integer(6)

    change_major_order(X::AbstractArray, size...=size(X)...) = permutedims(reshape(X, reverse([size...])...), length(size):-1:1)

    function cpp_mat_to_jl_arr(mat)
        arr = jl_cpp_cv2.Mat_mutable_data(mat)
        #TODO: Implement types
        #Preserve Mat so that array allocated by C++ isn't deallocated
        return OpenCVImages.OpenCVImage{UInt8}(mat, arr)
    end

    function jl_arr_to_cpp_mat(img::Image)
        # TODO: UserTypes do not work with StridedArray. Find something else.
        steps = strides(img)
        if steps[1] <= steps[2] <= steps[3] && steps[1]==1
            steps_a = Array{size_t, 1}()
            ndims_a = Array{Int32, 1}()
            sz = sizeof(eltype(img))
            push!(steps_a, UInt64(steps[3]*sz))
            push!(steps_a, UInt64(steps[2]*sz))
            push!(steps_a, UInt64(steps[1]*sz))

            push!(ndims_a, Int32(size(img)[3]))
            push!(ndims_a, Int32(size(img)[2]))

            return jl_cpp_cv2.Mat(2, pointer(ndims_a), CV_MAKE_TYPE(CV_8U, size(img)[1]), Ptr{Nothing}(pointer(img)), pointer(steps_a))
        else
            print("Bad steps")
            print(steps)
        end
    end

    function jl_pt_to_cpp_pt(pt::Tuple{Real, Real})
        return jl_cpp_cv2.Point2f(Float32(pt[1]), Float32(pt[2]))
    end

    function jl_scalar_to_cpp_scalar(sc::Scalar)
        if size(sc,1)==1
            return jl_cpp_cv2.Scalar(sc[1], 0, 0, 0)
        elseif size(sc,1) == 2
            return jl_cpp_cv2.Scalar(sc[1], sc[2], 0, 0)
        elseif size(sc,1) == 3
            return jl_cpp_cv2.Scalar(sc[1], sc[2], sc[3], 0)
        end
        return jl_cpp_cv2.Scalar(sc[1], sc[2], sc[3], sc[4])
    end

    function jl_size_to_cpp_size(sx::Size)
        return jl_cpp_cv2.Size2i(sx[1], sx[2])
    end

    function cpp_Point2f_to_jl_tuple(pt)
        return (jl_cpp_cv2.Point2f_get_x(pt), jl_cpp_cv2.Point2f_get_y(pt))
    end

    function cpp_KeyPoint_to_jl_KeyPoint(kp)
        kpr = KeyPoint(cpp_Point2f_to_jl_tuple(jl_cpp_cv2.KeyPoint_get_pt(kp)), jl_cpp_cv2.KeyPoint_get_size(kp), 
                        jl_cpp_cv2.KeyPoint_get_angle(kp), jl_cpp_cv2.KeyPoint_get_response(kp), 
                        jl_cpp_cv2.KeyPoint_get_octave(kp), jl_cpp_cv2.KeyPoint_get_class_id(kp))
        return kpr
    end

    function cpp_Size2i_to_jl_tuple(sz)
        return (jl_cpp_cv2.Size2i_get_width(sz), jl_cpp_cv2.Size2i_get_height(sz))
    end

    function cpp_Rect2i_to_jl_tuple(pt)
        return (jl_cpp_cv2.Rect2i_get_x(pt), jl_cpp_cv2.Rect2i_get_y(pt), jl_cpp_cv2.Rect2i_get_width(pt), jl_cpp_cv2.Rect2i_get_height(pt))
    end

    function waitKey(delay::Integer)
        return jl_cpp_cv2.waitKey(delay)
    end
    function imshow(winname::String, img::Image)
        Mat_img = cv2.jl_arr_to_cpp_mat(img)
        jl_cpp_cv2.imshow(winname, Mat_img)
    end
    function imread(filename::String, flags::Integer)
        Mat_tmp = jl_cpp_cv2.imread(filename, flags)
        jl_Image = cpp_mat_to_jl_arr(Mat_tmp)
        return jl_Image
    end
    function namedWindow(winname::String, flags::Integer)
        jl_cpp_cv2.namedWindow(winname, flags)
    end
    function simpleBlobDetector_create()
        return jl_cpp_cv2.simpleBlobDetector_create()
    end
    function simpleBlobDetector_solve(algo, img::Image)
        ret = jl_cpp_cv2.simpleBlobDetector_solve(algo, jl_arr_to_cpp_mat(img))
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
        return jl_cpp_cv2.VideoCapture()
    end

    function VideoCapture(index::Integer)
        return jl_cpp_cv2.VideoCapture(index)
    end

    function VideoCapture(filename::String)
        return jl_cpp_cv2.VideoCapture(filename)
    end

    function VideoCapture_read(arg1)
        ret1 = jl_cpp_cv2.read(arg1)
        return (ret1[1], cpp_mat_to_jl_arr(ret1[2]))
    end

    function cvtColor(src::Image, code::Integer)
        return cpp_mat_to_jl_arr(jl_cpp_cv2.cvtColor(jl_arr_to_cpp_mat(src), code))
    end
    function equalizeHist(src::Image)
        return cpp_mat_to_jl_arr(jl_cpp_cv2.equalizeHist(jl_arr_to_cpp_mat(src)))
    end

    function CascadeClassifier(filename::String)
        return jl_cpp_cv2.CascadeClassifier(filename)
    end

    function CascadeClassifier_detectMultiScale(inp1, image::Image;
                                             scaleFactor::Float64 = 1.1,
                                             minNeighbors::Integer = 3, 
                                             flags::Integer = 0,
                                             minSize::Size = (0,0),
                                             maxSize::Size = (0,0))
        ret = jl_cpp_cv2.detectMultiScale(inp1, jl_arr_to_cpp_mat(image), scaleFactor, minNeighbors, flags, jl_size_to_cpp_size(minSize), jl_size_to_cpp_size(maxSize))
        arr = Array{Rect, 1}()
        for it in ret
            push!(arr, cpp_Rect2i_to_jl_tuple(it))
        end
        return arr
    end

    function CascadeClassifier_empty(inp1)
        return jl_cpp_cv2.empty(inp1)
    end

    function destroyAllWindows()
        jl_cpp_cv2.destroyAllWindows()
    end


end