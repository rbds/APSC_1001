%% APSC 1001 Homework 5 Solutions
% Randy Schur
% Fall 2015

%% Problem 1
close all
clear

%part a 
img = imread('galaxy_from_hubble.jpg');
imshow(img)

%part b
galaxy_red = img(:,:,1);
galaxy_green = img(:,:,2);
galaxy_blue = img(:,:,3);
blank = zeros(size(img(:,:,1)));
red_img = cat(3, galaxy_red, blank, blank);
figure
imshow(red_img)
green_img = cat(3, blank, galaxy_green, blank);
figure
imshow(green_img)
blue_img = cat(3, blank, blank, galaxy_blue);
figure
imshow(blue_img)

figure
imhist(galaxy_red)
title('red histogram')
xlabel('intensity')
ylabel('number of pixels')
figure
imhist(galaxy_green)
title('green histogram')
xlabel('intensity')
ylabel('number of pixels')
figure
imhist(galaxy_blue)
title('blue histogram')
xlabel('intensity')
ylabel('number of pixels')

%part c
gray_img = rgb2gray(img);
figure
imshow(gray_img)
[x,y] = size(gray_img);
gray_section1 = gray_img(1:(x+1)/2, 1:y/2);
gray_section2 = gray_img(1:(x+1)/2, y/2:y);
gray_section3 = gray_img((x+1)/2:x, 1:y/2);
gray_section4 = gray_img((x+1)/2:x, y/2:y);
figure
imhist(gray_section1)
title('section 1 histogram')
xlabel('intensity')
ylabel('number of pixels')
figure
imhist(gray_section2)
title('section 2 histogram')
xlabel('intensity')
ylabel('number of pixels')
figure
imhist(gray_section3)
title('section 3 histogram')
xlabel('intensity')
ylabel('number of pixels')
figure
imhist(gray_section4)
title('section 4 histogram')
xlabel('intensity')
ylabel('number of pixels')






