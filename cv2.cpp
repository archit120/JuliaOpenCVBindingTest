#include <vector>

#include "jlcxx/jlcxx.hpp"
#include "jlcxx/functions.hpp"
#include "jlcxx/stl.hpp"
#include "jlcxx/array.hpp"

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/features2d.hpp>

using namespace cv;
using namespace std;
using namespace jlcxx;

namespace jlcxx
{
    template <>
    struct SuperType<SimpleBlobDetector>
    {
        typedef Feature2D type;
    };

    template <typename T>
    struct IsSmartPointerType<cv::Ptr<T>> : std::true_type
    {
    };
    template <typename T>
    struct ConstructorPointerType<cv::Ptr<T>>
    {
        typedef T* type;
    };
}

void imshow_jl(const cv::String &winname, cv::Mat img)
{
    imshow(winname, img);
}

void waitKey_jl(int delay)
{
    waitKey(delay);
}

void namedWindow_jl(const cv::String &winname, int flags = 1)
{
    namedWindow(winname, flags);
}

Mat imread_jl(const cv::String &filename, int flags = 1)
{
    return imread(filename, flags);
}

jlcxx::ArrayRef<uint8_t, 3> cv_Mat_mutable_data(cv::Mat cv_Mat)
{
    return make_julia_array(cv_Mat.data, cv_Mat.channels(), cv_Mat.cols, cv_Mat.rows);
}

cv::Mat cv_Mat_convert_fromjl_dim2(jlcxx::ArrayRef<uchar, 2> data, int rows, int cols)
{
    return Mat(Size(rows, cols), CV_8UC1, static_cast<void *>(data.data()));
}

cv::Mat cv_Mat_convert_fromjl_dim3(jlcxx::ArrayRef<uchar, 3> data, int rows, int cols, int channels)
{
    return Mat(Size(rows, cols), CV_8UC(channels), static_cast<void *>(data.data()));
}

vector<KeyPoint> cv_simpleBlobDetector_solve(cv::Ptr<SimpleBlobDetector> arg1, Mat img)
{
    vector<KeyPoint> kp;
    arg1->detect(img, kp);
    return kp;
}
cv::Ptr<SimpleBlobDetector> cv_simpleBlobDetector_create()
{
    return cv::Ptr<SimpleBlobDetector>(SimpleBlobDetector::create());
}

JLCXX_MODULE define_julia_module(jlcxx::Module &mod)
{
    mod.add_type<Mat>("cv_Mat");
    mod.add_type<cv::String>("cv_String").constructor<const std::string &>();
    mod.add_type<Point2f>("cv_Point2f").method("cv_Point2f_get_x", [] (const Point2f& a){return a.x;}).method("cv_Point2f_get_y", [] (const Point2f& a){return a.y;});
   
    mod.add_type<KeyPoint>("cv_KeyPoint").method("cv_KeyPoint_get_pt", [] (const KeyPoint& a){return a.pt;})
                                        .method("cv_KeyPoint_get_size", [] (const KeyPoint& a){return a.size;})
                                        .method("cv_KeyPoint_get_angle", [] (const KeyPoint& a){return a.angle;})
                                        .method("cv_KeyPoint_get_response", [] (const KeyPoint& a){return a.response;})
                                        .method("cv_KeyPoint_get_octave", [] (const KeyPoint& a){return a.octave;})
                                        .method("cv_KeyPoint_get_class_id", [] (const KeyPoint& a){return a.class_id;});

    mod.add_type<Feature2D>("cv_Feature2D");
    mod.add_type<SimpleBlobDetector>("cv_SimpleBlobDetector", jlcxx::julia_base_type<Feature2D>());

    jlcxx::add_smart_pointer<cv::Ptr>(mod, "cv_Ptr");

    mod.method("imread", &imread_jl);
    mod.method("imshow", &imshow_jl);
    mod.method("namedWindow", &namedWindow_jl);
    mod.method("waitKey", &waitKey_jl);

    mod.method("cv_Mat_convert_fromjl_dim2", &cv_Mat_convert_fromjl_dim2);
    mod.method("cv_Mat_convert_fromjl_dim3", &cv_Mat_convert_fromjl_dim3);
    mod.method("cv_Mat_mutable_data", &cv_Mat_mutable_data);

    mod.method("cv_simpleBlobDetector_solve", &cv_simpleBlobDetector_solve);
    mod.method("cv_simpleBlobDetector_create", &cv_simpleBlobDetector_create);
}
