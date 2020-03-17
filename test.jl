include("cv2.jl")

img_file = "blob.jpg"

cv2.namedWindow("win test - gray", 0)
cv2.namedWindow("win test - color", 0)

img_gray = cv2.imread(img_file, 0)
img_color = cv2.imread(img_file, 1)

cv2.imshow("win test - gray", img_gray)
cv2.imshow("win test - color", img_color)
# img_gray = img_gray .+ UInt8(100)

# cv2.imshow("win test - gray2", img_gray)
cv2.waitKey(1000)

# using Images, FileIO

# img = load(img_file)

# #TODO The colors are reversed
# cv2.imshow("test - juliaimages", rawview(channelview(img))[:,:,:])
cv2.waitKey(0)

detector = cv2.simpleBlobDetector_create()
kps = cv2.simpleBlobDetector_solve(detector, img_gray)
print(kps)