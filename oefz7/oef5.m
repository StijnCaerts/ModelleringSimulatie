alphas = [0.1 0.25 0.45 0.49 0.5];
p_0 = zeros(17,1);
p_0(1) = 1;

for alpha = alphas
    G = generateTransitionMatrix(alpha);
    p_k = p_0' * G;
    
    while (norm(p_k(1:15)) > eps)
        p_k = p_k * G;
    end
    
    disp([num2str(alpha), ' : ', num2str(p_k(16))])
end

% na 5 stappen ben je zeker uit de reduceerbare toestanden
p_0_hat = p_0' * G^5;