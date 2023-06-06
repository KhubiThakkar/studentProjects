%PRACTICE IF-STATEMENT
%Write a function called picker that takes three input arguements called
%condition, un1 and in2 in this order. The arguement condition is a
%logical. If it is true, the function assigns the value of in2 to out. See
%the examples  below to see how picker works in practice.
%a = 2;
%b = 3;
%picker(a<b,a,b)
%ans = 
%   2
%picker(a<0,1,-1)
%ans =
%   -1
function out = picker(condition, in1, in2)
if condition == 1
    out = in1;
else
    out = in2;
end
end
