%EXCEL FILE I/O
%The attached Distances.xlsx file contains a spreed sheet with the pairwise
%distances in miles of the top 100 US cities by population. A preview of
%the spreadsheet is shown below. The first row and first column contain the
%city names using the following format: city name comma space capitalized
%state abbreviation, e.g., Nashville, TN. Note that the very first cell of
%the spreadsheet,A1, is blank.
%Write a function called get_distance that accepts two character vector
%inputs representing the names of two  cities. The function returns the
%distance between them as an output argument called distance. For example,
%the call get_distance('Seatle, WA','Miami, FL') should return 3723. If one
%or both of the specified cities are not in the file, the function returns
%-1.
function distance = get_distance(name1,name2)
    [num,text] = xlsread('Distances.xlsx');
    ii = 1;
    while string(name1) ~= string(text{ii,1})
        if ii == 337
            distance = -1;
            return
        end
        
        ii = ii + 1;
    end
  
    jj = 1;
    while string(name2) ~= string(text(jj,1))
        if jj == 337
            distance = -1;
            return
        end
        
        jj = jj + 1;
    end

    distance = num(ii-1,jj-1);
end