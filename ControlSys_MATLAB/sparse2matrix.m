%SPARSE MATRIX
%A sparse matrix is large matrix with almost all elements of the same value
%(typically zero). The normal representation of a sparse matrix takes up
%lots of memory when the useful information can be captured with much less.
%A possible way to represent a sparse matrix is with a cell vector whose
%first element is a 2-element vector representing the size of the sparse
%matrix. The second element is a scalar specifying the default value of the
%sparse matrix. Each successive element of the cell vector is a 3- element
%vector representing one element of the sparse matrix that has a value
%other than default. The three elements are row index, the column index and
%the actual value. Write a function called sparse2matrix that takes a
%single input of a cell vector as defined above and returns the output
%argument called matrix, the matrix in its tranditional form.
function matrix = sparse2matrix(cellvec)
    lenc = length(cellvec);
    matrix = rand(cellvec{1});
    matrix = matrix .* 0 + cellvec{2};
    for n = 3 : lenc
        matrix(cellvec{n}(1,1),cellvec{n}(1,2)) = cellvec{n}(1,3);
    end
end