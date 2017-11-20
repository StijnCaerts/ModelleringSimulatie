mu = [0 0];
S = eye(2);
T = 100;
N = 100000;
diff = 0;

W = zeros(T+1,2);

for n = 1:N
    for i = 1:T
        step = mvnrnd(mu,S);
        W(i+1,:) = W(i,:) + step;
    end
    diff = diff + W(101,1)^2 + W(101,1)^2;
end
diff = diff / N