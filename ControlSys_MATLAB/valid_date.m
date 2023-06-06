%Write a function called valid_date that takes three positive integers
%scalars inputs year, month, day. If these three represent a valid date,
%return a logical true, otherwise false. The name of the output argument is
%valid. If any of the inputs is not a positive integer scalar, return false
%as well. Note that every year that is excatly divisible by 4 is a leap
%year, except for years that are excatly by 100. However, years that are
%excatly divisible by 400 are also leap years. For example, the year
%1900 was not leap year, but the year 2000 was. Note that your solution
%must not contain any of the date related built-in MATLAB functions.
function valid = valid_date(year, month, day)
if ~isscalar(year) || year<1 || year ~=fix(year)
    valid = ~(~isscalar(year) || year<1 || year ~=fix(year));
    return
end 
if ~isscalar(month) || month<1 || month ~=fix(month)
    valid  = ~(~isscalar(month) || month<1 || month ~=fix(month));
    return
end 
if ~isscalar(day) || day<1 || day ~=fix(day)
    valid = ~(~isscalar(day) || day<1 || day ~=fix(day));
    return
end 
leap = ((year/4 == fix(year/4)) && (year/100 ~= fix(year/100))) || (year/400 == fix(year/400));
if leap == 0
    if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
        valid = (day<=31);
    elseif month == 2
        valid = (day<=28);
    elseif month == 4 || month == 6 || month == 9 || month == 11
        valid =(day<=30);
    else 
        valid = (1==2);
    end
end
if leap == 1
    if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
        valid = (day<=31);
    elseif month == 2
        valid = (day<=29);
    elseif month == 4 || month == 6 || month == 9 || month == 11
        valid =(day<=30);
    else
        valid = (1==2);
    end
end