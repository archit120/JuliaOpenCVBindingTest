include("cv2.jl")

img_file = "blob.jpg"

cv2.namedWindow("win test - gray", 0)
cv2.namedWindow("win test - color", 0)

img_gray = cv2.imread(img_file, 0)
img_color = cv2.imread(img_file, 1)

cv2.imshow("win test - gray", img_gray)
cv2.imshow("win test - color", img_color)

cv2.waitKey(0)

ve = view(img_color, :, 100:200, 100:200)
ve .= 0

cv2.imshow("win test - color", img_color)
cv2.imshow("win test - view", ve)

cv2.waitKey(0)

detector = cv2.simpleBlobDetector_create()
kps = cv2.simpleBlobDetector_detect(detector, img_gray)
print(kps)