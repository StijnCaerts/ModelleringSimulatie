% Opgave 1
function [Q,R] = QRgivens(A)
    [m,n] = size(A);
    Q = eye(m);
    R = A;
    
    for j = 1:n
       for i = m:-1:j+1
           G = eye(m);
           [G_sub,~] = planerot([R(i-1,j); R(i,j)]);
           
           % MATLAB geeft de submatrix als transpose
           G(i-1:i, i-1:i) = G_sub';
           
           R = G'*R;
           Q = Q*G;
           
           imagesc(R);
           waitforbuttonpress;
       end
    end

end

% Opgave 2
% Product Q*R = A
% R is bovendriehoeksmatrix
% vergelijk met ingebouwde qr-functie