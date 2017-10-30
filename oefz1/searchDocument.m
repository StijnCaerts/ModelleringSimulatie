% Returns a row vector with all documents. Value is 1 if document is
% relevant, false otherwise.
function [r] = searchDocument(q,A)
    [~, nbDocuments] = size(A);
    r = zeros(1,nbDocuments);
    for j = 1:nbDocuments
       theta_j = subspace(q,A(:,j));
       if theta_j <= pi/4
           r(1,j) = 1;
       end
    end
end

