alpha = 0.6;
G = generateTransitionMatrix(alpha);

p_0 = zeros(17,1);
p_0(1) = 1;

p_2 = p_0' * G^2;

p_inf = p_0' * G^100000;