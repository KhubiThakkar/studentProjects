%IMAGE BLUR
%Write a function called blur that blurs the input image. The function is
%to be called like this:
%output = blur(img,w);
%where img, the input image is a two-dimensional matrix of grayscale pixel
%values between 0 and 255. Blurring is to be carried out by averaging the
%pixel values in the vicinity of every pixel. Specificall, the output pixel
%value is the mean of the pixels in a square submatrix of size 2w+1 where
%the given pixel sits in the center. For example, if w is 1, then we use a
%3x3 matrix, that is, we average all the neighbouring pixels of the gicen
%pixel and itself. Only use blurred value corresponding to w = 1 at
%index(1,1) would be the mean of elements (1,1), (1,2), (2,1) and (2,2).
%Both input img and output output are of type uint8.
function [output] = blur(A,w)
[row col] = size(A);
A=uint8(A);
B=nan(size(A) + (2*w));
B(w+1:end-w,w+1:end-w)=A;
output = 0*A;
for i=w+1:row+w
  for j=w+1:col+w
    tmp=B(i-w:i+w,j-w:j+w);
    output(i-w,j-w)=mean(tmp(~isnan(tmp)));
  end
end
output=uint8(output);