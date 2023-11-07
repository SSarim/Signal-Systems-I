%% A5
function x = a5(d ,Dn)
if(d == 1)
    w = pi/10;
elseif (d == 2)
    w = pi/10;
elseif (d == 3)
    w = pi/20;
end
t = -300:1:300;
x = zeros(size(t));
for i = 1:length(x)
    total = 0;
    j = 1;
    for n = -500:500
        total = total + Dn(j) * exp(1i* n * w * t(i));
        j = j+1;
    end
    x(i) = total;
end

figure(1);
plot(t, x, 'b')
xlabel('t (s)');
ylabel('x(t)');
if(d ~= 1)
    axis([-300 300 -1 2]);
end
title('Reconstructed Fourier Coefficients');
grid;
end

