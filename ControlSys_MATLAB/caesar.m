%SIMPLE ENCRYPTION
%Caesar's cypher is the simplest encryption algorithm. It adds a fixed
%value to the ASCII (unicode) value of each character of a text. In the
%words, it shifts the characters. Decrypting a text  is simply shifting it
%back by the same amount, that is, it substracts the same value from the
%characters. Write a function called caesar that accepts two arguments: the
%first is the character vector to be encrypted, while the second is the
%shift amount. The function returns the output argument coded, the
%encrypted text. The function needs to work with all the visible ASCII
%characters from space to ~. The ASCII codes of these are 32 through 126.
%If the shifted code goes outside of this range, it should wrap around. For
%example, if we shift ~ by 1 the result should be space. If we shift space
%by -1, the result should be ~. 
function coded = caesar(M, n)
num = double(M);                        
num2 = num;
N = n - 95 * fix(n/95);
for i = 1:length(num);  
    if  num(i) + N < 32                 
        num2(i) = 126 - (31- num(i) - N);
    elseif num(i) + N > 126             
        num2(i) = 32 + (num(i) + N -127);
    else 
        num2(i) = num(i) + N ;          
    end
coded = char(num2);
end
