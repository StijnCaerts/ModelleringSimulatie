% Return: eigenwaarden en residus in elke iteratiestap
function [ev, rs] = qrSVD(A, tol)
    A_k = A;
    iter = 1;
    rs = [];
    while (norm(tril(A_k,-1), 'fro') >= tol)
        res = norm(tril(A_k,-1), 'fro');
        rs(iter) = res;
        
        [Q_k, R_k] = qr(A_k);
        A_k = R_k * Q_k;
        
        iter = iter + 1;
    end
    ev = diag(A_k);
end

