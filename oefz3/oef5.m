N = 500000;
n = [10 25 50];
conditiegetal = zeros(1,3);
for i = 1:3
    for j = 1:N
        A = randn(n(i));

        s = svd(A);
        conditiegetal(i) = conditiegetal(i) + s(1) / s(end);
    end
    conditiegetal(i) = conditiegetal(i) / N;
end

plot(n, conditiegetal);