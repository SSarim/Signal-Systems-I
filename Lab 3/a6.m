%% A.6 for x1(t)
clear;
clf;
n = (-500:500);
D_n = zeros(size(n));

a0 = 0;

for i = 1:length(n)
    D_n(i) = a3(1, n(i), a0);
end
a5(1, D_n);

%% A.6 for x2(t)
clear;
clf;
n = (-500:500);
D_n = zeros(size(n));

a0 = 0.5;
for i = 1:length(n)
    D_n(i) = a3(2, n(i), a0);
end
a5(2, D_n);

%% A.6 for x3(t)
clear;
clf;
n = (-500:500);
D_n = zeros(size(n));

a0 = 0.25;
for i = 1:length(n)
    D_n(i) = a3(3, n(i), a0);
end
a5(3, D_n);