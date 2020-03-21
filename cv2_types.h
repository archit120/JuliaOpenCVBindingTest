
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

template <> struct IsMirroredType<Point2f> : std::true_type {
};
template <> struct IsMirroredType<Size2i> : std::true_type {
};
template <> struct IsMirroredType<Rect2i> : std::true_type {
};
template <> struct IsMirroredType<KeyPoint> : std::true_type {
};

}; // namespace jlcxx
