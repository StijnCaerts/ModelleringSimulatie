Fs = 1/86400;           % Sampling frequency                    
T = 1/Fs;               % Sampling period       
L = 36525;              % Length of signal
t = (0:L-1)*T;          % Time vector

Y = abs(fft(dailyArea(:,4)));
f = Fs*(1:L)/L;

plot(f,Y);

[~,i] = max(abs(Y));
f(i)

% Oefening 3
[~,is] = sort(abs(Y),'descend');
f(is(1:10))
Y(is(1:10))