function out = logiunpack(c)

% An n-by-n square logical matrix can be represented by a cell array of n
% elements where the kth element corresponds to the kth row of the matrix.
% Each element of the cell array is a row vector of positive integers in
% increasing order representing the column indexes of the logical true
% values in the given row of the matrix. All other elements in the given
% row of the logical matrix are false. The function takes such a cell array
% as input and returns the corresponding square logical matrix. For example,
% such a cell vector representation of a 100-by-100 logical matrix with the
% only true elements at indexes (10,20) and (10,75) would have only one
% non-empty element of the cell vector at index 10. That element is the
% vector [20 75].

s=size(c);
out=false(s(2));
for i=1:s(2)
    if isempty(c{i})==0
        elements=c{i};
        se=size(elements);
        for j=1:se(2)
            if elements(j)~=0
                out(i,elements)=true;
            end
        end
    end
end
end