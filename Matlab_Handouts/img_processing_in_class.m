%% APSC 1001 in class example
% Randy Schur

%% show image
close all
clear
clc
img = imread('starry_night.jpg');
img = imresize(img, .25);
figure
imshow(img)

%% grayscale, thresholding
gray_img = rgb2gray(img);
figure
imshow(gray_img)
bw_img = im2bw(gray_img, 0.15);
figure
imshow(bw_img)

%% colors
red = img(:,:,1);
green = img(:,:,2);
blue = img(:,:,3);
blank = zeros(size(img(:,:,1)));
red_img = cat(3, red, blank, blank);
figure
imshow(red_img)
green_img = cat(3, blank, green, blank);
figure
imshow(green_img)
blue_img = cat(3, blank, blank, blue);
figure
imshow(blue_img)

%% histograms
% imhist(gray_img)
figure
imhist(red)
title('red histogram')
figure
imhist(green)
title('green histogram')
figure
imhist(blue)
title('blue histogram')

%% filters - image sharpening
close all
img2 = imread('bf.jpg');
img2 = imresize(img2, .5);
figure
subplot(1,3,1), subimage(img2)
title('original image')
axis off
psf = fspecial('gaussian', 7, 2);
blurred = imfilter(img2, psf, 'symmetric', 'conv');
subplot(1, 3, 2), subimage(blurred)
title('blurred image')
axis off
img_new = 1.35*img2 - 0.35*blurred;
subplot(1,3,3), subimage(img_new)
title('sharpened image')
axis off

%% Cropping
img_section = img(100:200, 1:100, :);
figure
imshow(img_section)
