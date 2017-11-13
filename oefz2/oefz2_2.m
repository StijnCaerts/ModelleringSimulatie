% Opgave 6
L_20 = diag(1:20);
% construeer random orthogonale matrix door de matrix Q uit de
% QR-decompositie te gebruiken
[P_1,~] = qr(magic(20));
A_20 = P_1 * L_20 * P_1';

P_2 = randn(20);
B_20 = P_2 * L_20 * P_2';

% Opgave 7
% Opgave 8
[evA,rsA] = qrSVD(A_20,eps);
[evB,rsB] = qrSVD(B_20,eps);

% Opgave 9
[~,nbResA] = size(rsA);
disp(['Residu voldoende klein na ', num2str(nbResA), ' iteraties.']);

[evA2,rsA2] = qrSVD(A_20,eps^20);
[~,nbResA2] = size(rsA2);
disp(['Residu voldoende klein na ', num2str(nbResA2), ' iteraties.']);
disp([num2str(nbResA2/nbResA), ' meer iteraties nodig bij tol = eps^20.']);
