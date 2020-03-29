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

jlcxx::ArrayRef<uint8_t, 3> Mat_mutable_data(cv::Mat Mat)
{
    return make_julia_array(Mat.data, Mat.channels(), Mat.cols, Mat.rows);
}

JLCXX_MODULE cv2(jlcxx::Module &mod)
{

    mod.add_type<Mat>("Mat").constructor<int, const int *, int, void *, const size_t *>();
    mod.add_type<Point2f>("Point2f").constructor<float, float>().method("Point2f_get_x", [](const Point2f &a) { return a.x; }).method("Point2f_get_y", [](const Point2f &a) { return a.y; });

    mod.add_type<Size2i>("Size2i").constructor<int, int>().method("Size2i_get_height", [](const Size2i &a) { return a.height; }).method("Size2i_get_width", [](const Size2i &a) { return a.width; });
    mod.add_type<Rect2i>("Rect2i").constructor<int, int, int, int>().method("Rect2i_get_height", [](const Rect2i &a) { return a.height; }).method("Rect2i_get_width", [](const Rect2i &a) { return a.width; }).method("Rect2i_get_x", [](const Rect2i &a) { return a.x; }).method("Rect2i_get_y", [](const Rect2i &a) { return a.y; });

    mod.add_type<Scalar>("Scalar_").constructor<double, double, double, double>();
    mod.add_type<KeyPoint>("KeyPoint_").method("KeyPoint_get_pt", [](const KeyPoint &a) { return a.pt; }).method("KeyPoint_get_size", [](const KeyPoint &a) { return a.size; }).method("KeyPoint_get_angle", [](const KeyPoint &a) { return a.angle; }).method("KeyPoint_get_response", [](const KeyPoint &a) { return a.response; }).method("KeyPoint_get_octave", [](const KeyPoint &a) { return a.octave; }).method("KeyPoint_get_class_id", [](const KeyPoint &a) { return a.class_id; });
    mod.add_type<Feature2D>("Feature2D");
    mod.add_type<SimpleBlobDetector>("SimpleBlobDetector", jlcxx::julia_base_type<Feature2D>());
    mod.add_type<VideoCapture>("VideoCapture").constructor<const std::string &>().constructor<int>().method("read", [](VideoCapture c1) { Mat dst; return make_tuple(c1.read(dst), dst); });

    jlcxx::add_smart_pointer<cv::Ptr>(mod, "cv_Ptr");

    mod.method("imread_", [](string a1, int a2) { return cv::imread(a1, a2); });
    mod.method("imshow", [](string a1, Mat a2) { return cv::imshow(a1, a2); });
    mod.method("namedWindow", [](string a1) { cv::namedWindow(a1); });
    mod.method("namedWindow", [](string a1, int a2) { cv::namedWindow(a1, a2); });
    mod.method("waitKey", [](int a1) { return cv::waitKey(a1); });
    mod.method("rectangle", [](Mat a1, Point2f a2, Point2f a3, const Scalar &a4, int a5, int a6, int a7) { cv::rectangle(a1, a2, a3, a4, a5, a6, a7); });
    mod.method("cvtColor", [](Mat a1, int a2) {Mat o1; cv::cvtColor(a1, o1, a2); return o1; });
    mod.method("equalizeHist", [](Mat a1) {Mat o1; cv::equalizeHist(a1, o1); return o1; });
    mod.method("destroyAllWindows", []() { cv::destroyAllWindows(); });
    mod.method("destroyAllWindows", [](Mat a) { cv::destroyAllWindows(); });

    mod.method("Mat_mutable_data", &Mat_mutable_data);

    // Algorithm Inherits
    mod.method("simpleBlobDetector_detect", [](cv::Ptr<SimpleBlobDetector> c1, Mat a1) { vector<KeyPoint> o1; c1->detect(a1, o1); return o1; });
    mod.method("simpleBlobDetector_detect", [](cv::Ptr<SimpleBlobDetector> c1, Mat a1) { vector<KeyPoint> o1; c1->detect(a1, o1); return o1; });
    mod.method("simpleBlobDetector_create", []() { return cv::Ptr<SimpleBlobDetector>(SimpleBlobDetector::create()); });}
