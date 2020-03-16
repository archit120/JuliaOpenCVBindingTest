include("cv2.jl")

function detect(img::cv2.Image, cascade)
    rects = cv2.CascadeClassifier_detectMultiScale(cascade, img, scaleFactor=1.3, minNeighbors=4, minSize=(30, 30), flags=cv2.CASCADE_SCALE_IMAGE)

    for ind in 1:size(rects, 1)
        rects[ind] = (rects[ind][1], rects[ind][2], rects[ind][3]+rects[ind][1], rects[ind][4]+rects[ind][2])
    end
    return rects
end

function draw_rects(img, rects, color)
    for x in rects
        print((x[1], x[2]), (x[3], x[4]))
        cv2.rectangle(img, (x[1], x[2]), (x[3], x[4]), color, thickness = 2)
    end
end

cap = cv2.VideoCapture(0)
cascade = cv2.CascadeClassifier("/home/archit/Documents/GitHub/JuliaOpenCVBindingTest/haarcascade_frontalface_alt.xml")
while true
    ret, img = cv2.VideoCapture_read(cap)
    if ret==false
        break
    end
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    gray = cv2.equalizeHist(gray)

    rects = detect(gray, cascade)
    vis = deepcopy(img)
    draw_rects(vis, rects, (255.0, 255.0, 0.0))

 
    cv2.imshow("facedetect", vis)
    if cv2.waitKey(5)==27
        break
    end
end