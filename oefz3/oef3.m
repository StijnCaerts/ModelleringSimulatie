mu = [0 0];
S = eye(2);
T = 10000;

W = zeros(T+1,2);
for i = 1:T
    step = mvnrnd(mu,S);
    W(i+1,:) = W(i,:) + step;
end

plot(W(:,1),W(:,2))
hold on
waitforbuttonpress

S = [1 0.5; 0.5 1];
W = zeros(T+1,2);
for i = 1:T
    step = mvnrnd(mu,S);
    W(i+1,:) = W(i,:) + step;
end

plot(W(:,1),W(:,2))
hold off