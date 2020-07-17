include("cv2.jl")

img_file = "blob.jpg"

cv2.namedWindow("win test - gray", 0)
cv2.namedWindow("win test - color", 0)
sw = [1]
cv2.waitKey(0)

img_gray = cv2.imread(img_file, 0)
img_color = cv2.imread(img_file, 1)
cv2.imshow("win test - gray", img_gray)
cv2.imshow("win test - color", img_color)

cv2.createButton("test", function (x, sw)
    println(sw)
    sw[1] = 1-sw[1]
    if sw[1]==0
        cv2.imshow("win test - gray", img_color)
        cv2.imshow("win test - color", img_gray)
    else
        cv2.imshow("win test - gray", img_gray)
        cv2.imshow("win test - color", img_color)
    end
end, sw, Int32(0))

cv2.setMouseCallback("win test - color",(event, x, y, flags, userdata) -> println(event,x,y,flags), nothing)

val = Ref(Int32(0))
cv2.createTrackbar("test", "win test - color", val, Int32(255), (a,b)->println("track:",a,b), nothing)

cv2.waitKey(0)

ve = view(img_color, :, 100:200, 100:200)
ve .= 0


cv2.imshow("win test - color", img_color)
cv2.imshow("win test - view", ve)

cv2.waitKey(0)

detector = cv2.simpleBlobDetector_create()
kps = cv2.simpleBlobDetector_detect(detector, img_gray)
println(kps)


println(sw)
println(val[])