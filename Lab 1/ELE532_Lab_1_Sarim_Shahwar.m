%% Sarim Shahwar
%ELE532 - Lab_1_Section_4_F2023

%% Part A1
f = @(t) exp(-t).*cos(2*pi*t);
t = (-2:2);
figure 
plot(t,f(t));
xlabel('t'); ylabel('f(t)'); grid; title("Anonymous function");
%% Part A2
x= linspace(0,2*pi,100);
f = @(t) exp(-t).*cos(2*pi*t);
t = (-2:0.01:2);
figure
plot(t,f(t));
xlabel('t'); ylabel('f(t)'); grid; title("Anonymous function");
%% Part B1
p = @(t)((t>=0)&(t<1));
t = (-1:0.01:2); plot(t,p(t));
xlabel('t'); ylabel('p(t) = u(t)-u(t-1)'); title("Figure 1.50")
grid on;

%% Part B2
%Value of t
t = (-2:0.01:2);

%Functions

u = @(t) 1.0.*(t>=0);
p = @(t) u(t)-u(t-1);
r = @(t) t.*p(t);
n = @(t) r(t) + r(-t+2);

subplot(3, 1, 1);
plot(t,p(t), 'b', 'LineWidth', 2);
xlabel('t'); ylabel('p(t)'); title("p(t) = u(t) - u(t - 1)")
axis([-1 2 -0.1 1.1]);
grid on;

subplot(3, 1, 2);
plot(t, r(t), 'g', 'LineWidth', 2);
xlabel('t'); ylabel('r(t)'); title("r(t) = tp(t)")
axis([-1 2 -0.1 1.1]);
grid on;

subplot(3, 1, 3);
plot(t, n(t), 'r', 'LineWidth', 2);
xlabel('t'); ylabel('n(t)'); title("n(t) = r(t) + r(-t + 2)")
axis([-1 2 -0.1 1.1]);
grid on;

sgtitle('Plots of p(t), r(t), and n(t)');

%% Part B3

%Value of t
t = (-3:0.01:5);

%Functions

u = @(t) 1.0.*(t>=0);
p = @(t) u(t)-u(t-1);
r = @(t) t.*p(t);

n = @(t) r(t) + r(-t+2);
n1 = @(t) n(0.5.*t);
n2 = @(t) n1(t+0.5);

figure
plot(t, n1(t), 'g', t,n2(t),':r', LineWidth=1.5 );
xlabel('t'); ylabel('n1(t) & n2(t)');
axis([-3 5 -0.1 1.1]);
grid on;
legend('n1(t) = Green','n2(t) = Red');
sgtitle('Plots of n1(t), and n2(t)');

%% Part B4


%Value of t
t = (-3:0.01:5);

%Functions

u = @(t) 1.0.*(t>=0);
p = @(t) u(t)-u(t-1);
r = @(t) t.*p(t);

n = @(t) r(t) + r(-t+2);
n3 = @(t) n(t+0.25);
n4 = @(t) n3(0.5.*t);
figure
plot(t, n3(t), 'g', t,n4(t),':r', LineWidth=1.5 );
xlabel('t'); ylabel('n3(t) & n4(t)');
axis([-3 5 -0.1 1.1]);
grid on;
legend('n3(t) = Green','n4(t) = Red')
sgtitle('Plots of n3(t), and n4(t)');

%% Part C1

%Value of t
t = (-4:0.01:4);
u = @(t) 1.0.*(t>=0);

f = @(t) exp(-2.*t).*cos(4*pi*t);
g = @(t) f(t).*u(t);
figure
plot(t, g(t), 'r');
xlabel('t'); ylabel('g(t)'); title("g(t) = f(t).*u(t)");
axis([-2 2 -0.1 1.1]);
grid on;

%% Part C2
%Value of t
t = (0:0.01:2);
u = @(t) 1.0.*(t>=0);

f = @(t) exp(-2.*t).*cos(4*pi*t);
g = @(t) f(t).*u(t);
s = @(t) g(t+1);
figure
plot(t, s(t), 'r');
xlabel('t'); ylabel('s(t)'); title("s(t) = g(t+1)");
axis([-2 2 -0.1 1.1]);
grid on;    

%% Part C3
t = (1:0.01:4); %% (4/0.01) + 1 = 401
u = @(t) 1.0.*(t>=0);


% values of alpha
alpha_vals = [1, 3, 5, 7];

% Creating matrix to store the signals for different alpha values
s_alpha = zeros(length(alpha_vals), length(t));

% Calculate s_alpha(t) for all alpha values using the vector operations
% Converts column vector
alpha_matrix = alpha_vals.'; 
t_matrix = t;
%created matrix is a 401 x 4

for alpha = 1:2:7
    s = @(t) exp(-2).*exp(-alpha.*t).*cos(4*pi*t).*u(t);
    
    plot(t,s(t));
    xlabel("t"); ylabel("a(t)"); title("Plot for Alpha 1,3,5,7");
    hold on    
end
legend('alpha = 1', 'alpha = 3', 'alpha = 5', 'alpha = 7');
hold off;

%% Part D1
load ('ELE532_Lab1_Data.mat')
%A(:);
%A([2 4 7]);
%[A >=0.2]
%A([A >=0.2])
% A([A >=0.2]) = 0

%% Part D2
load ('ELE532_Lab1_Data.mat')

Num_rows = size(B,1); %Allocaing Matrix Size
Num_cols = size(B,2); %Allocaing Matrix Size

for i = 1:1:Num_rows %First For loop for Rows
    for j = 1:1:Num_cols %Second For loop for columns
        if (abs(B(i,j)) < 0.01) % Absolute function of B(i,j) < 0.01
            B(i,j) = 0; % Returning magnitude values below 0.01 to zero
        end
    end
end

%% Part D2 (b)
load ('ELE532_Lab1_Data.mat')
%Creted the same function as posted in part D1 but with the criteria of
%part D2
B([abs(B)>= 0.01]) = 0

%% Part D2 (c)
tic
load ('ELE532_Lab1_Data.mat')

Num_rows = size(B,1); %Allocaing Matrix Size
Num_cols = size(B,2); %Allocaing Matrix Size

for i = 1:1:Num_rows %First For loop for Rows
    for j = 1:1:Num_cols %Second For loop for columns
        if (abs(B(i,j)) < 0.01) % Absolute function of B(i,j) < 0.01
            B(i,j) = 0; % Returning magnitude values below 0.01 to zero
        end
    end
end
fprintf('\nFor the code in part a, the execution time is the following:\n')
toc

%% Part D2 (c continued)
tic
load ('ELE532_Lab1_Data.mat')
%Creted the same function as posted in part D1 but with the criteria of
%part D2
B([abs(B)>= 0.01]) = 0

fprintf('\nFor the code in part b, the execution time is the following:\n')
toc 

%% Part D3
load ('ELE532_Lab1_Data.mat')

Num_rows = size(x_audio,1); %Allocaing Matrix Size
Num_cols = size(x_audio,2); %Allocaing Matrix Size

threshold = 0;

for i = 1: Num_rows
    for j = 1: Num_cols
        if(abs(x_audio(i,j) == 0))
            threshold = threshold + 1;
        end
    end
end

fprintf("\nFor the Audio Data Set there are " + threshold);

sound(x_audio,8000)




