%% A.2
N = 100;
PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1, PulseWidth), zeros(1, N-PulseWidth)];
Xf = fft(x);
f = [-(N/2):1:(N/2)-1]*(1/N);
Zf = abs((Xf).^2);
subplot(311);plot(f,fftshift(Xf));
subplot(312);plot(f,fftshift(Xf));
subplot(313);plot(f,fftshift(Zf));

%% A.3
N = 100;
PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1, PulseWidth), zeros(1, N-PulseWidth)];
Xf = fft(x);
f = [-(N/2):1:(N/2)-1]*(1/N);
Zf = abs((Xf).^2);
subplot(311);plot(f,fftshift(Zf));
subplot(312);plot(f,fftshift(abs(Zf)));
subplot(313);plot(f,fftshift(angle(Zf)));

%% A.4

t1 = -20;
t2 = 20;
N = 2000; 
Delta_t = (t2 - t1)/N;
t = [t1:Delta_t:t2];
x = zeros(size(t));
x(t >= 0 & t <= 10) = 1;
x1 = x*Delta_t;
z = conv(x,x1);
subplot(2,1,1);
plot(t,z(1000:3000));
axis([t1 t2 -0.1 10.1]);
title('z(t) in time - domain');
xlabel('t');

%% A.5 A
% Pulse Width of 5 
N = 100;
PulseWidth = 5;
t = [0:1:(N-1)];
x = [ones(1, PulseWidth), zeros(1, N-PulseWidth)];
Xf = fft(x);
f = [-(N/2):1:(N/2)-1]*(1/N);
Zf = abs((Xf).^2);
subplot(311);plot(f,fftshift(Zf));
subplot(312);plot(f,fftshift(abs(Zf)));
subplot(313);plot(f,fftshift(angle(Zf)));

%% A.5 B
N = 100;
PulseWidth = 25;
t = [0:1:(N-1)];
x = [ones(1, PulseWidth), zeros(1, N-PulseWidth)];
Xf = fft(x);
f = [-(N/2):1:(N/2)-1]*(1/N);
Zf = abs((Xf).^2);
subplot(311);plot(f,fftshift(Zf));
subplot(312);plot(f,fftshift(abs(Zf)));
subplot(313);plot(f,fftshift(angle(Zf)));


%% A.6 (W+(t))
N = 100;
PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
wplus = x.*exp(1j.*(pi/3).*t)
Xf = fft(wplus);
f = [-(N/2):1:(N/2)-1]*(1/N);
figure();
subplot(311); 
plot(f,fftshift(Xf));
title('X(w)');
xlabel('w');
subplot(312); 
plot(f,fftshift(abs(Xf)));
title('|X(w)|');
xlabel('w');
subplot(313); 
plot(f,fftshift(angle(Xf)));
title('angle X(w)');
xlabel('w');

%% A.6 (W-(t))
N = 100;
PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
wminus = x.*exp(-1j.*(pi/3).*t);
Xf = fft(wminus);
f = [-(N/2):1:(N/2)-1]*(1/N);
figure();
subplot(311); 
plot(f,fftshift(Xf));
title('X(w)');
xlabel('w');
subplot(312); 
plot(f,fftshift(abs(Xf)));
title('|X(w)|');
xlabel('w');
subplot(313); 
plot(f,fftshift(angle(Xf)));
title('angle X(w)');
xlabel('w');

%% A.6 Wc(t)

N = 100;
PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
wc = x.*cos((pi/3).*t);
Xf = fft(wc);
f = [-(N/2):1:(N/2)-1]*(1/N);
figure();
subplot(311); 
plot(f,fftshift(Xf));
title('X(w)');
xlabel('w');
subplot(312); 
plot(f,fftshift(abs(Xf)));
title('|X(w)|');
xlabel('w');
subplot(313); 
plot(f,fftshift(angle(Xf)));
title('angle X(w)');
xlabel('w');





