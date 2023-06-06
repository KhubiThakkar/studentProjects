%VARIABLE NUMBER OF INPUT ARGUMENTS
%Write a function called under_age that takes two positive integer scalar
%arguments:
%1. age that  represents someone's age, and
%2. limitthat represents an age limit.
%The function returns true if the person is younger than the age limit. If
%the second arguement, limit, is not provided, it defaults to 21. You do
%not need to check that the inputs are positive integers scalars. The name
%of the output arguement is too_young.
function too_young = under_age(age,limit)
if nargin < 2
    limit = 21;
end
too_young = (age < limit);
end