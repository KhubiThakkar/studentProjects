%CORNER CASE
%Write a function called corners that takes a matrix as an input argument
%and returns four outputs: the elements at its four corners in this order:
%top_left,top_right,bottom_left and bottom_right (Note that loops and
%if-statements are neither necessary not allowed as we have not covered
%them yet.) See an example run below:
%[a,b,c,d] = corners([1 2;3 4])
%a = 
%   1
%b = 
%   2
%c = 
%   3
%d = 
%   4
function [top_left, top_right, bottom_left, bottom_right] = corners(a)
[r,c] = size(a);
top_left = a(1,1);
top_right = a(1,c);
bottom_left = a(r,1);
bottom_right = a(r,c);