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

#include "cv2_types.hpp"

using namespace cv;
using namespace std;
using namespace jlcxx;

jlcxx::ArrayRef<uint8_t, 3> Mat_mutable_data(cv::Mat Mat)
{
    return make_julia_array(Mat.data, Mat.channels(), Mat.cols, Mat.rows);
}

JLCXX_MODULE define_julia_module(jlcxx::Module &mod)
{
    mod.add_type<Mat>("Mat").constructor<int, const int *, int, void *, const size_t *>();

    mod.map_type<Point2f>("Point2f");
    // mod.map_type<Size2i>("Size2i");
    mod.map_type<Rect2i>("Rect2i");
    mod.map_type<KeyPoint>("KeyPoint");

    mod.add_type<Scalar>("Scalar").constructor<double, double, double, double>();

    mod.add_type<Feature2D>("Feature2D");
    mod.add_type<SimpleBlobDetector>("SimpleBlobDetector", jlcxx::julia_base_type<Feature2D>());

    mod.add_type<CascadeClassifier>("CascadeClassifier").constructor<const std::string &>().method("detectMultiScale", [](CascadeClassifier c1, Mat a1, double a2, int a3, int a4, Size2i a5, Size2i a6){    std::vector<Rect> o1;c1.detectMultiScale(a1, o1,a2,a3,a4,a5,a6);return o1;}).method("empty", &CascadeClassifier::empty);
    mod.add_type<VideoCapture>("VideoCapture").constructor<>().constructor<const std::string &>().constructor<int>().method("read", [](VideoCapture c1) { Mat dst; return make_tuple(c1.read(dst), dst); });

    jlcxx::add_smart_pointer<cv::Ptr>(mod, "cv_Ptr");

    mod.method("imread", [](string a1, int a2) { return cv::imread(a1, a2); });
    mod.method("imshow", [](string a1, Mat a2) { return cv::imshow(a1, a2); });
    mod.method("namedWindow", [](string a1) { cv::namedWindow(a1); });
    mod.method("namedWindow", [](string a1, int a2) { cv::namedWindow(a1, a2); });
    mod.method("waitKey", [](int a1) { return cv::waitKey(a1); });
    mod.method("rectangle", [](Mat a1, Point2f a2, Point2f a3, const Scalar &a4, int a5, int a6, int a7) { cv::rectangle(a1, a2, a3, a4, a5, a6, a7); });
    mod.method("cvtColor", [](Mat a1, int a2) {Mat o1; cv::cvtColor(a1, o1, a2); return o1; });
    mod.method("equalizeHist", [](Mat a1) {Mat o1; cv::equalizeHist(a1, o1); return o1; });
    mod.method("destroyAllWindows", []() { cv::destroyAllWindows(); });

    mod.method("Mat_mutable_data", &Mat_mutable_data);

    // Algorithm Inherits
    mod.method("simpleBlobDetector_solve", [](cv::Ptr<SimpleBlobDetector> arg1, Mat img) { vector<KeyPoint> kp; arg1->detect(img, kp); return kp; });
    mod.method("simpleBlobDetector_create", []() { return cv::Ptr<SimpleBlobDetector>(SimpleBlobDetector::create()); });
}
