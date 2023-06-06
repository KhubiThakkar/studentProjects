%TEXT FILE I/O
%Write a function called char_counter that counts the number of a certain
%character in a text file. The function takes two input arguments, fname, a
%char vector of the filename and character, the char it counts in the file.
%The function returns charnum, the number of characters found. If the file
%is not found or character is not a valid char,the function return -1. As
%an example, consider the following run. The file "simple.txt" contains a
%single line: "This file should have exactly three a-s..."
function charnum = char_counter(fname,character)
    fid = fopen(fname,'rt');
    charnum = 0;
    if fid < 0
        charnum = -1;
        return
    end
    if character<32 || character>126
        charnum = -1;
        return
    end
    oneline = fgets(fid);
    while ischar(oneline)
        len = length(oneline);
        ii = 1;
        while ii <= len
            if oneline(ii) == character
                charnum = charnum +1;
            end
            ii = ii + 1;
        end
        oneline = fgets(fid);
    end
    
   
end