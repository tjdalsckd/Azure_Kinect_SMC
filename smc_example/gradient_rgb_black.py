import cv2
import numpy as np
import math
import os
from scipy.interpolate import splprep, splev
classname ="sharp"
classnumber = 5
dir_path = os.getcwd()
os.mkdir(dir_path+"/"+classname)
os.chdir(classname)
capture = cv2.VideoCapture("../sharp lead3.mp4")
scale_factor = 1.0
smooth_rate = 100
n= 643
cv2.namedWindow('rgb',cv2.WINDOW_NORMAL)
cv2.resizeWindow('rgb', 600,600)
cv2.namedWindow('contour_img ',cv2.WINDOW_NORMAL)
cv2.resizeWindow('contour_img ', 600,600)
cv2.namedWindow('box_img ',cv2.WINDOW_NORMAL)
cv2.resizeWindow('box_img ', 600,600)

while True:
    if(capture.get(cv2.CAP_PROP_POS_FRAMES) == capture.get(cv2.CAP_PROP_FRAME_COUNT)):
        capture.open("Image/Star.mp4")
    ret, frame = capture.read()

    img = np.array(frame)
    print(img.shape)
    width =img.shape[0]
    height = img.shape[1]
    
    cv2.imshow('rgb',img)

    hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)
    sensitivity = 10
    lower_white = np.array([0,0,0], dtype=np.uint8)
    upper_white = np.array([150,150,150], dtype=np.uint8)
    mask = cv2.inRange(hsv, lower_white, upper_white)
    mask = ~mask
    res = cv2.bitwise_and(img,img, mask= mask)
    
    ret, img_binary = cv2.threshold(np.uint8(mask.copy()), 127, 255, 0)
    contours, hierachy =cv2.findContours(img_binary.copy(),cv2.RETR_EXTERNAL,cv2.CHAIN_APPROX_SIMPLE)

    max_area = 0
    area_threshold = 5000
    max_cnt = 0
    for cnt in contours:
       M = cv2.moments(cnt)
       if max_area < M['m00']: 
           max_area = M['m00']
           max_cnt = cnt
    c0 = max_cnt
    x, y, w, h = cv2.boundingRect(c0)
    x_ = float(x+w/2)/width
    y_ = float(y+h/2)/height
    w_ = float(w)/width
    h_ = float(h)/height
    txt_c0 = np.reshape(c0,(-1,2))
    c0_x= txt_c0[:,0]
    c0_y= txt_c0[:,1]
    tck, u = splprep([c0_x,c0_y], s =0, per=True)
    u_new = np.linspace(u.min(), u.max(), smooth_rate)
    x_new, y_new = splev(u_new, tck)

    tck, u = splprep([x_new, y_new], s =0, per=True)
    u_new = np.linspace(u.min(), u.max(), 100)
    x_new, y_new = splev(u_new, tck)
    cx_new = np.mean(x_new)
    cy_new = np.mean(y_new)
    x_new = (x_new-cx_new)*scale_factor+cx_new-5
    y_new = (y_new-cy_new)*scale_factor+cy_new-5
    res_array =np.zeros((100,2),dtype=int)
    res_array[:,0] = np.array(np.transpose(x_new),dtype=int)
    res_array[:,1] = np.array(np.transpose(y_new),dtype=int)
    txt_c0 = res_array
    txt_c0_=np.reshape(txt_c0,(1,-1,2))


    contour_img = cv2.drawContours(img.copy(), contours, -1, (255,0,0), 2)
    box_img = cv2.rectangle(img.copy(), (x, y), (x+w, y+h), (255,0,0), 2)
    show_img = cv2.drawContours(box_img.copy(), txt_c0_, 0, (0,0,255), 4,cv2.FILLED)

    #cv2.imshow('rgb',res)
    #cv2.imshow('mask',mask)

    cv2.imshow('contour_img ',show_img )
    cv2.imshow('box_img ',box_img )

    #cv2.imshow("VideoFrame", frame)
    # save

    filename = classname+str(n)+".png"
    txt_filename = classname+str(n)+".txt"
    cv2.imwrite(filename, frame) 
    try:
        f = open(txt_filename, 'w')

        txt_data = str(classnumber)+" "+ str(x_)+" "+ str(y_)+" "+ str(w_)+" "+ str(h_)
        f.write(txt_data)
        f.close()
    except:
        f.close()
    n = n+1
    if cv2.waitKey(33) > 0: break

capture.release()
cv2.destroyAllWindows()


img = cv2.imread('rgb.jpg')

