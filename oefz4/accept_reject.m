N = 100000;

accept = 0;
reject = 0;
coord = zeros(1,2);
accCoords = zeros(0,2);
rejCoords = zeros(0,2);

for i = 1:N
    % generate point
    coord =  -1 + 2*rand(1,2);
    % accept or reject
    if (coord(1)^2 + coord(2)^2 <= 1)
        accept = accept + 1;
        accCoords(accept,:) = coord;
    else
        reject = reject + 1;
        rejCoords(reject,:) = coord;
    end
end

disp(['Accepted: ', num2str(accept)])
disp(['Rejected: ', num2str(reject)]) 

% pi = fractie accepted * totale oppervlakte
disp(accept/N * 4)

scatter(accCoords(:,1),accCoords(:,2))
hold on;
scatter(rejCoords(:,1),rejCoords(:,2))