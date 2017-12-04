function [x_k,xs] = toegevoegdeGrad(f,grad_f,x_0,tau)
    %% Toegevoegde gradiënten
    n = length(x_0);
    k = 0;
    xs = zeros(n,0);
    xs(:,1) = x_0;
    x_k = x_0;
    while norm(grad_f(x_k)) > tau
        if k == 0
            p_k = -grad_f(x_k);
        else
            p_k = -grad_f(x_k) + (norm(grad_f(x_k))^2)/(norm(grad_f(x_kmin1))^2)*p_k;
        end
        alpha_k = lineSearch(f,grad_f,x_k,p_k);
        x_kmin1 = x_k;
        x_k = x_k + alpha_k * p_k;
        k = k+1;
        % convergentie loggen
        xs(:,k+1) = x_k;
    end
end

