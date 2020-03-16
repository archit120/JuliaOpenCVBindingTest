#include <vector>

#include "jlcxx/jlcxx.hpp"
#include "jlcxx/functions.hpp"
#include "jlcxx/stl.hpp"
#include "jlcxx/array.hpp"
#include "jlcxx/tuple.hpp"

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/features2d.hpp>
#include <opencv2/core/utility.hpp>
#include <opencv2/objdetect.hpp>
#include <opencv2/imgproc.hpp>
#include "opencv2/highgui.hpp"
#include "opencv2/videoio.hpp"

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
    typedef T *type;
};
} // namespace jlcxx

void imshow_jl(const cv::String &winname, cv::Mat img)
{
    imshow(winname, img);
}

void namedWindow_jl(const cv::String &winname, int flags = 1)
{
    namedWindow(winname, flags);
}

Mat imread_jl(const cv::String &filename, int flags = 1)
{
    return imread(filename, flags);
}

// cv::String findFile_jl(const cv::String &relative_path)
// {
//     return samples
// }

jlcxx::ArrayRef<uint8_t, 3> cv_Mat_mutable_data(cv::Mat cv_Mat)
{
    return make_julia_array(cv_Mat.data, cv_Mat.channels(), cv_Mat.cols, cv_Mat.rows);
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

std::vector<Rect> cv_CascadeClassifier_detectMultiScale_1(CascadeClassifier inp1, Mat image,
                                             double scaleFactor = 1.1,
                                             int minNeighbors = 3, int flags = 0,
                                             Size2i minSize = Size(),
                                             Size2i maxSize = Size())
{
    std::vector<Rect> objects;
    inp1.detectMultiScale(image, objects, scaleFactor, minNeighbors, flags, minSize, maxSize);
    return objects;
}

void rectangle_jl(Mat& img, Point2f pt1, Point2f pt2, const Scalar& color, int thickness=1, int lineType=8, int shift=0)
{
    rectangle(img, pt1, pt2, color, thickness, lineType, shift);
}

Mat cvtColor_jl(Mat& src, int code)
{
    Mat dst;
    cvtColor(src, dst, code);
    return dst;
}

Mat equalizeHist_jl(Mat& src)
{
    Mat dst;
    equalizeHist(src, dst);
    return dst;
}

tuple<bool, Mat> cv_VideoCapture_read(VideoCapture cap)
{
    Mat dst;
    return make_tuple(cap.read(dst), dst);
}

bool cv_CascadeClassifier_empty(CascadeClassifier arg1)
{
    return arg1.empty();
}

JLCXX_MODULE define_julia_module(jlcxx::Module &mod)
{
    mod.add_type<Mat>("cv_Mat");
    mod.add_type<cv::String>("cv_String").constructor<const std::string &>();
    mod.add_type<Point2f>("cv_Point2f").constructor<float, float>().method("cv_Point2f_get_x", [](const Point2f &a) { return a.x; }).method("cv_Point2f_get_y", [](const Point2f &a) { return a.y; });
    
    mod.add_type<Size2i>("cv_Size2i").constructor<int, int>().method("cv_Size2i_get_height", [](const Size2i &a) {return a.height;}).method("cv_Size2i_get_width",[](const Size2i &a){return a.width;});
    mod.add_type<Rect2i>("cv_Rect2i").constructor<int, int, int, int>()
                                        .method("cv_Rect2i_get_height", [](const Rect2i &a) {return a.height;})
                                        .method("cv_Rect2i_get_width",[](const Rect2i &a){return a.width;})
                                        .method("cv_Rect2i_get_x",[](const Rect2i &a){return a.x;})
                                        .method("cv_Rect2i_get_y",[](const Rect2i &a){return a.y;});

    mod.add_type<Scalar>("cv_Scalar").constructor<double, double, double, double>();
    mod.add_type<KeyPoint>("cv_KeyPoint").method("cv_KeyPoint_get_pt", [](const KeyPoint &a) { return a.pt; }).method("cv_KeyPoint_get_size", [](const KeyPoint &a) { return a.size; }).method("cv_KeyPoint_get_angle", [](const KeyPoint &a) { return a.angle; }).method("cv_KeyPoint_get_response", [](const KeyPoint &a) { return a.response; }).method("cv_KeyPoint_get_octave", [](const KeyPoint &a) { return a.octave; }).method("cv_KeyPoint_get_class_id", [](const KeyPoint &a) { return a.class_id; });

    mod.add_type<Feature2D>("cv_Feature2D");
    mod.add_type<SimpleBlobDetector>("cv_SimpleBlobDetector", jlcxx::julia_base_type<Feature2D>());

    mod.add_type<CascadeClassifier>("cv_CascadeClassifier").constructor<const cv::String &>().method("cv_CascadeClassifier_detectMultiScale_1", &cv_CascadeClassifier_detectMultiScale_1).method("cv_CascadeClassifier_empty", &cv_CascadeClassifier_empty);
    mod.add_type<VideoCapture>("cv_VideoCapture").constructor<>().constructor<const cv::String &>().constructor<int>().method("cv_VideoCapture_read", &cv_VideoCapture_read);

    jlcxx::add_smart_pointer<cv::Ptr>(mod, "cv_Ptr");

    mod.method("imread", &imread_jl);
    mod.method("imshow", &imshow_jl);
    mod.method("namedWindow", &namedWindow_jl);
    // mod.method("findFile", &findFile_jl);
    mod.method("waitKey", &waitKey);
    mod.method("rectangle", &rectangle_jl);
    mod.method("cvtColor", &cvtColor_jl);
    mod.method("equalizeHist", &equalizeHist_jl);
    mod.method("destroyAllWindows", &destroyAllWindows);

    mod.method("cv_Mat_convert_fromjl_dim3", &cv_Mat_convert_fromjl_dim3);
    mod.method("cv_Mat_mutable_data", &cv_Mat_mutable_data);

    mod.method("cv_simpleBlobDetector_solve", &cv_simpleBlobDetector_solve);
    mod.method("cv_simpleBlobDetector_create", &cv_simpleBlobDetector_create);
}
