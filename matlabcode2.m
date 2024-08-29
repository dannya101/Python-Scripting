origImg = fileread('input.txt'); %reads the file input.txt which is your specified file converted to a text file called input.txt
img = fileread('c_output.txt'); %reads a file called c_output.txt which is the result of the written C file
img2 = fileread('haskell_output.txt'); %reads a file called haskell_output.txt which is the result of haskell code which writes its results into the haskell_output.txt file
img3 = fileread('prolog_output.txt');%reads a file called prolog_output.txt which is the result of haskell code which writes its results into the prolog_output.txt file

%convert each string that in each file to a number and then turning each of
%those numbers to unsigned chars
origImgArray = uint8(str2num(origImg)); 
unsigChars = uint8(str2num(img));
outputArrayHas = uint8(str2num(img2));
outArrProlog = uint8(str2num(img3));

%reshape each array to a matrix of 256 by 256
origImg2 = reshape(origImgArray, 256, 256);
img_2d = reshape(unsigChars, 256, 256);
img_2dNew = reshape(outputArrayHas, 256, 256);
img_2dNewer = reshape(outArrProlog, 256, 256);

% figure;

% create a subplot containing of 4 different plots of each page and then
% outputing each image generated from each file and outputting it in
% desired position
% also providing a title to each plot to provide clarity of which outputs
% which image
subplot(2, 2, 1);
imshow(origImg2);
title('Original Image');
subplot(2, 2, 2);
imshow(img_2d);
title('Black & White Image from C');
subplot(2, 2, 3)
imshow(img_2dNew);
title('Color Flipped Image from Haskell');
subplot(2, 2, 4);
imshow(img_2dNewer)
title('Flipped Image from Prolog');
