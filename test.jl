include("cv2.jl")

img_file = "/home/archit/Pictures/Screenshot from 2020-01-12 20-57-19.png"

cv2.namedWindow("win test - gray", 0)
cv2.namedWindow("win test - color", 0)

img_gray = cv2.imread(img_file, 0)
img_color = cv2.imread(img_file, 1)

cv2.imshow("win test - gray", img_gray)
cv2.imshow("win test - color", img_color)
cv2.waitKey(0)