#include "jlcxx/jlcxx.hpp"
#include "jlcxx/functions.hpp"
#include "jlcxx/stl.hpp"
#include "jlcxx/array.hpp"

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>

using namespace cv;
using namespace std;
using namespace jlcxx;

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

int cv_Mat_get_cols(cv::Mat cv_Mat)
{
    return cv_Mat.cols;
}

int cv_Mat_get_rows(cv::Mat cv_Mat)
{
    return cv_Mat.rows;
}

// ArrayRef<uchar, 2> cv_Mat_mutable_data(cv::Mat cv_Mat)
// {
//     return make_julia_array(cv_Mat.data, cv_Mat.cols, cv_Mat.rows);
// }

// cv::Mat cv_Mat_convert_fromjl(jlcxx::ArrayRef<uchar, 2> data, int rows, int cols)
// {
//     return Mat(rows, cols, CVdata.data, );
// }

JLCXX_MODULE define_julia_module(jlcxx::Module &mod)
{
    mod.add_type<Mat>("cv_Mat");
    mod.add_type<cv::String>("cv_String").constructor<const std::string&>();

    mod.method("imread", &imread_jl);
    mod.method("imshow", &imshow_jl);
    mod.method("namedWindow", &namedWindow_jl);
    mod.method("waitKey", &waitKey_jl);

    mod.method("cv_Mat_get_cols", &cv_Mat_get_cols);
    mod.method("cv_Mat_get_rows", &cv_Mat_get_rows);
    // mod.method("cv_Mat_mutable_data", &cv_Mat_mutable_data);
}
