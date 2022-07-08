clc
clear all
close all


ca=webcam;
bg = imread("C:\Users\aon132543\Documents\MATLAB\โปรเจค\55.jpg");
while true
    e=ca.snapshot;
    e = flip(e);
   % e = imresize(e,0.2);
    [r, c ,b] =size(e);
    gm = imresize(bg,[r ,c]);
    real_img=bg_remove2(e);
    gs = gm.*uint8(~real_img);
    imshow(gs+e.*uint8(real_img));
    gm=bg;
end