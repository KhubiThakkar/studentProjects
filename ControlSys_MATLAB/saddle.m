%SADDLE POINTS
%Write a function called saddle that finds saddle points inthe input matrix
%M. For the purposes of this problem, a saddle point is defined as an
%element whose value is greater than or equal to every element in its row,
%and less than or equal to every element in its column. Note that there may
%be more than one saddle point in M. Return a matrix called indices that
%has excatly two columns. Each row of indices corresponds to one saddle
%point with the first element of the row containing the row index of the
%saddle point and the second element containing the row indexing the row
%index of the saddle point and the second element containing the column
%index. If there is no saddle point in M, then indices is the empty array.
function indices = saddle(M)
    indices = [];
    [row,col] = size(M);
    ir = 1;
    r = 1;
   
    
    while ir <= row
        ic = 1;
        while ic <= col
            if M(ir,ic) == max(M(ir,:))
                c = 1;
                if M(ir,ic) == min(M(:,ic))
                    indices(r,c) = ir;
                    c = c+1;
                    indices(r,c) = ic;
                    r = r+1;
                end
                
            end
            ic =ic + 1;
        end
        ir = ir + 1;
        
    end
end