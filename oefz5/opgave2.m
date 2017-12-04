a = 0;
f = @(x) f_opgave2(a,x);
grad_f = @gradf_opgave2;
i = 1:10;
% hessiaan is constant (onafhankelijk van x)
hes_f = @(x) diag(2*2.^i);

x_0 = randn(10,1);
tau = 3 * 10^-6;

[x_ster_sh,xs_sh] = steilsteHelling(f,grad_f,x_0,tau);
[x_ster_tg,xs_tg] = toegevoegdeGrad(f,grad_f,x_0,tau);
[x_ster_n,xs_n] = newton(f,grad_f,hes_f,x_0,tau);

exacte_opl = zeros(10,1);

[~,iter_sh] = size(xs_sh);
conv_sh = zeros(iter_sh,1);
for i = 1:iter_sh
    conv_sh(i) = norm(xs_sh(:,i) - exacte_opl);
end
semilogy(1:iter_sh,conv_sh)
hold on;

[~,iter_tg] = size(xs_tg);
conv_tg = zeros(iter_tg,1);
for i = 1:iter_tg
    conv_tg(i) = norm(xs_tg(:,i) - exacte_opl);
end
semilogy(1:iter_tg,conv_tg)
hold on;

[~,iter_n] = size(xs_n);
conv_n = zeros(iter_n,1);
for i = 1:iter_n
    conv_n(i) = norm(xs_n(:,i) - exacte_opl);
end
semilogy(1:iter_n,conv_n)