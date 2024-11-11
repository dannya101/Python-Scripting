img = imread('mickey.png'); % reading downloaded image
%to shrink
% targetSize = [50, 50];
% img = imresize(img, targetSize);
img = im2gray(img); %taking that read image and converting to gray scale image
img = imresize(img, [75 75]); %taking that gray scale image and resize it to 256 by 256 pixels
img_1d = reshape(img, 1, []); % resizing this new image and flattening it to a 1d array
dlmwrite('input.txt', img_1d, 'delimiter', ' '); %stores this flattened image to a file called input.txt