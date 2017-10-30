% Opgave 6
A_cap = [1 0 0 1 0
         1 0 1 1 1
         1 0 0 1 0
         0 0 0 1 0
         0 1 0 1 1
         0 0 0 1 0];

A = normc(A_cap);     

q = [0;0;0;1;0;1];


% Opgave 7
searchDocument(q,A)

% Opgave 8
% search query: baking bread
disp('Search for "baking bread".');
q_BakingBread = [1;0;1;0;0;0];
searchDocument(q_BakingBread,A)
% relevant: D1

% search query: baking
disp('Search for "baking".');
q_Baking = [1;0;0;0;0;0];
searchDocument(q_Baking,A)
% no relevant documents