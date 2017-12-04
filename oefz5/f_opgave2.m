function [fx] = f_opgave2(a,x)
    i = 1:length(x);
    fx = a + x' * diag(2.^i) * x;
end