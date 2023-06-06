%LOGICAL ARRAYS PRACTICE
%Write a function called freezing that takes a vector of numbers that
%correspond to daily low temperatures in fahrenheit. Return numfreeze, the
%number of days with sub freezing temperatures(that  is, lower than 32 F)
%without using loops.
function numfreeze = freezing(a)
freeze = a(a<32);
[~,numfreeze] = size(freeze);
end