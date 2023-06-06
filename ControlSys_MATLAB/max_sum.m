%Write a function called max_sum that takes v, a row vector of numbers, and
%n, a positive integer as inputs. The function needs to find the n
%consecutive elements of v whose sum is the largest possible. In other
%words, if v is [1 2 3 4 5 4 3 2 1] and n is 3, it will find 4 5 and 4
%because their sum of 13 is  the largest of any 3 consecutive elements of
%v. If multiple such sequences exists exist in v,max_sum returns the
%first one. The first returns summa,the sum as the first output argument
%and index, the index of the first element of the n consecutive ones as the
%second output. If the input n is larger than the number of elements of v,
%the function returns 0 as the sum and -1 as the index.
function [summa, index] = max_sum(v,n)
if n > length(v)
    summa = 0;
    index = -1;
else
    A = [];
    ii = 1;
    jj = 1;
    m = length(v);
    while jj <= m-n+1
    A(ii) = sum(v(jj : jj+n-1));
    ii = ii + 1;
    jj = jj + 1;
    end
    summa = max(A);
    ii = 1;
    while A(ii) < max(A)
        ii = ii +1;
    end
    index = ii;
end 
end