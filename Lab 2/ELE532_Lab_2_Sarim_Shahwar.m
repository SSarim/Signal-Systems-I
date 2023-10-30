%% Part A2

%R = [1e4, 1e4, 1e4];
%C = [1e-9, 1e-6];
%A = [1, (1/R(1) +1/R(2) + 1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];
%Lambda = roots(A);

%poly(Lambda);
syms y(t)
dy = 1*diff(y,t,2) + 300*diff(y,t) + 10000*y ==0;
conditions = [y(0) == 0, subs(diff(y,t),t,0) ==1];
h0 = dsolve(dy, conditions);
h1 = -10000*h0;
syms t

tm = 0:0.0005:0.1;
%u = @(t) 1.0* (t>=0);
u = 1.0*(tm>=0);
h = subs(h1,t,tm);
plot(tm,h.*u);
%h = @(t) (C(1).* exp(Lambda(1).*t) + C(2).* exp(Lambda(2).*t)).*(u(t));
%figure ;
%plot(t,h(t), "R", LineWidth= 2);
%grid on;
xlabel('t'); ylabel('Amplitude'); title('Impulse Responce');

%% Part B1

% CH2MP4.m : Chapter 2, MATLAB Program 4
% Script M-file graphically demonstrates the convolution process.
%figure(1); % Create figure window
u = @(t) 1.0*(t>=0);
x = @(t) 1.5*sin(pi*t).*(u(t)-u(t-1));
h = @(t) 1.5*(u(t)-u(t-1.5))-u(t-2)+u(t-2.5);
dtau = 0.005; tau = -1:dtau:4;
ti = 0; tvec = -.25:.1:3.75;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory
figure
for t = tvec
    ti = ti+1; % Time index
    xh = x(t-tau).*h(tau); lxh = length(xh);
    y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
    subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
        [.8 .8 .8],'edgecolor','none');
    xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
    subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]); grid;
    drawnow;
end

%% Part B2
%figure(2);
u = @(t) 1.0*(t>=0);
x = @(t) u(t)-u(t-2);
h = @(t) (t+1).*(u(t+1)-u(t));
dtau = 0.005; tau = -2:dtau:2;
ti = 0; tvec = -5:.1:5;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory
for t = tvec
    ti = ti+1; % Time index
    xh = x(t-tau).*h(tau); lxh = length(xh);
    y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
    subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
        [.8 .8 .8],'edgecolor','none');
    xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
    subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]); grid;
    drawnow;
end

%% Part B3 - a
figure(3);
u = @(t) 1.0*(t>=0);
%Value of A is not given So the following assumptions are made:
A = 1; B = 1.5; 
x = @(t) A*(u(t-4)-u(t-6));
h = @(t) B*(u(t+5)-u(t+4));
dtau = 0.005; tau = -6:dtau:3;
ti = 0; tvec = -5:.1:5;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory
for t = tvec
    ti = ti+1; % Time index
    xh = x(t-tau).*h(tau); lxh = length(xh);
    y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
    subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
        [.8 .8 .8],'edgecolor','none');
    xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
    subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]); grid;
    drawnow;
end

%% Part B3 - b

figure(4);
u = @(t) 1.0*(t>=0);
%Value of A is not given So the following assumptions are made:
A = 1; B = 1.5; 
x = @(t) A*(u(t-3)-u(t-5));
h = @(t) B*(u(t+5)-u(t+3));
dtau = 0.005; tau = -6:dtau:3;
ti = 0; tvec = -5:.1:5;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory
for t = tvec
    ti = ti+1; % Time index
    xh = x(t-tau).*h(tau); lxh = length(xh);
    y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
    subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
        [.8 .8 .8],'edgecolor','none');
    xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
    subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]); grid;
    drawnow;
end


%% Part B3 - c
figure(5);
u = @(t) 1.0*(t>=0);
x = @(t) exp(t).*(u(t+2)-u(t));
h = @(t) exp(-2*t).*(u(t)-u(t-1));
dtau = 0.005; tau = -6:dtau:3;
ti = 0; tvec = -5:.1:5;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory
for t = tvec
    ti = ti+1; % Time index
    xh = x(t-tau).*h(tau); lxh = length(xh);
    y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
    subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
        [.8 .8 .8],'edgecolor','none');
    xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
    subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]); grid;
    drawnow;
end

%% Part C1

t = -1:0.001:5;
% Function
u = @(t) 1.0.* (t>=0);
h1 = @(t) exp(t/5).*u(t);
h2 = @(t) 4*exp(-t/5).*u(t);
h3 = @(t) 4*exp(-t).*u(t);
h4 = @(t) 4*(exp(-t/5) - exp(-t)).*u(t);

xlabel("t"); ylabel("h(t)");
hold on;
plot(t,h1(t), "LineWidth",2);
plot(t,h2(t), "LineWidth",2);
plot(t,h3(t),"LineWidth",2);
plot(t,h4(t), "LineWidth",2);

legend("h1", "h2", "h3","h4");
hold off;


%% C3 - a
u = @(t) 1.0*(t>=0);
%x(t) function
x = @(t) sin(5*t).*(u(t) - u(t-3));
%Truncate inpulse responce function h1(t)
h = @(t) exp(t/5).*(u(t) - u(t-20));
%Modified CH2MP2 section
dtau = 0.005; tau = 0:dtau:20;
ti = 0; tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory

for t = tvec
    ti = ti+1; % Time index
    xh = x(t-tau).*h(tau); lxh = length(xh);
    y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
    subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
        [.8 .8 .8],'edgecolor','none');
    xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
    subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]); grid;
    drawnow;
end

%% C3 - b
u = @(t) 1.0*(t>=0);
%x(t) function
x = @(t) sin(5*t).*(u(t) - u(t-3));
%Truncate inpulse responce function h2(t)
h = @(t) 4*exp(-t/5).*(u(t) - u(t-20));
%Modified CH2MP2 section
dtau = 0.005; tau = 0:dtau:20;                  
ti = 0; tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory

for t = tvec
    ti = ti+1; % Time index
    xh = x(t-tau).*h(tau); lxh = length(xh);
    y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
    subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
        [.8 .8 .8],'edgecolor','none');
    xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
    subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]); grid;
    drawnow;
end

%% C3 - c
u = @(t) 1.0*(t>=0);
%x(t) function
x = @(t) sin(5*t).*(u(t) - u(t-3));
%Truncate inpulse responce function h3(t)
h = @(t) 4*exp(-t).*(u(t) - u(t-20));
%Modified CH2MP2 section
dtau = 0.005; tau = 0:dtau:20;
ti = 0; tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory

for t = tvec
    ti = ti+1; % Time index
    xh = x(t-tau).*h(tau); lxh = length(xh);
    y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
    subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
        [.8 .8 .8],'edgecolor','none');
    xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
    subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]); grid;
    drawnow;
end
%% C3 - d
u = @(t) 1.0*(t>=0);
%x(t) function
x = @(t) sin(5*t).*(u(t) - u(t-3));
%Truncate inpulse responce function h4(t)
h = @(t) 4*(exp(-t/5)-exp(-t)).*(u(t) - u(t-20));
%Modified CH2MP2 section
dtau = 0.005; tau = 0:dtau:20;
ti = 0; tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory

for t = tvec
    ti = ti+1; % Time index
    xh = x(t-tau).*h(tau); lxh = length(xh);
    y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
    subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
        [.8 .8 .8],'edgecolor','none');
    xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
    subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
    xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]); grid;
    drawnow;
end


