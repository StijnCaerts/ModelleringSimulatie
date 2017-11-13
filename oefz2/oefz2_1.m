% Oefening 3
load('Agrigento.mat')
imagesc(Z)
colormap('gray')
waitforbuttonpress
image(A)
waitforbuttonpress

% Oefening 4
r = zeros(20,1);
diff = zeros(20,1);
[U,S,V] = svd(Z);

index = 1;
for i = 10:10:200
    % svd gebruiken en zelf afkappen (submatrix nemen)
    % voor practicum wel gewoon svds gebruiken
    
    Ur = U(:,1:i);
    Sr = S(1:i,1:i);
    Vr = V(:,1:i);
    
    Zr = Ur * Sr * Vr';
    diff(index) = norm(Z - Zr) / norm(Z);
    r(index) = i;
    index = index + 1;
end

semilogy(r,diff);
waitforbuttonpress