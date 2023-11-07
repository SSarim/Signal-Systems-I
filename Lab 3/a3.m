%% A.3
function [D] = a3(D,n)
D1 = (1/2)*(abs(n)==3)+(1/4)*(abs(n)==1);
D2 = (1/(n.*pi)*sin((n*pi)/2));
D3 = (1/(n.*pi)*sin((n*pi)/4));

if (d == 1)
    D = D1;
end


if (d == 2)
    D = D2;
end

if (d == 3)
    D = D3;
end
