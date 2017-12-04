function [gradf] = gradf_opgave2(x)
    gradf = zeros(length(x),1);
    for i = 1:length(x)
        gradf(i) = 2^(i+1) * x(i);
    end
end

