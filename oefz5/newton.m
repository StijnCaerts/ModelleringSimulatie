function [x_k,xs] = newton(f,grad_f,hes_f,x_0,tau)
    %% Newton
    n = length(x_0);
    k = 0;
    xs = zeros(n,0);
    xs(:,1) = x_0;
    x_k = x_0;
    while norm(grad_f(x_k)) > tau
        p_k = - inv(hes_f(x_k))*grad_f(x_k);
        alpha_k = lineSearch(f,grad_f,x_k,p_k);
        x_k = x_k + alpha_k * p_k;
        k = k+1;
        % convergentie loggen
        xs(:,k+1) = x_k;
    end
end

