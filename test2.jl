include("cv2.jl")
tp = jl_cpp_cv2.cv_simpleBlobDetector_create()
mat = jl_cpp_cv2.imread(jl_cpp_cv2.cv_String("/home/archit/Documents/GitHub/JuliaOpenCVBindingTest/blob.jpg"), 0)
print("h")
ret = jl_cpp_cv2.cv_simpleBlobDetector_solve(tp, mat)
print(ret)
