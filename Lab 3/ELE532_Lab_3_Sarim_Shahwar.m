%% A.3
function [D] = ELE532_Lab_3_Sarim_Shahwar(D,n)
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


%% A.4 - Part A

%x_1(t)
clf;
n = (-5:5);
D_n = 1./2.*((1./(pi.*n)).*sin((3-n).*pi )) + (1./pi.*n).*sin((3+n).*pi)  ...
    + (1./(2.*n.*pi).*sin((1+n).*pi)) + (1./(2.*n.*pi).*sin((1-n).*pi)) ;
subplot(1,2,1); stem(n,abs(D_n),'.k'); 
xlabel('n'); ylabel('|D_n|'); 
subplot(1,2,2); stem(n,angle(D_n),'.k'); 
xlabel('n'); ylabel('\angle Dn [rad]');
%%
%x_2(t)
clf;
n = (-5:5);
D_n = (1./(n.*pi).*sin((n.*pi)./2)); 
subplot(1,2,1); stem(n,abs(D_n),'.k'); 
xlabel('n'); ylabel('|D_n|'); 
subplot(1,2,2); stem(n,angle(D_n),'.k'); 
xlabel('n'); ylabel('\angle D_n [rad]');
%%
%x_3(t)
clf;
n = (-5:5);
D_n = (1./(n.*pi).*sin((n.*pi)./4)); 
subplot(1,2,1); stem(n,abs(D_n),'.k'); 
xlabel('n'); ylabel('|D_n|'); 
subplot(1,2,2); stem(n,angle(D_n),'.k'); 
xlabel('n'); ylabel('\angle D_n [rad]');

%% A.4 - Part B
%x_1(t)
clf;
n = (-20:20);
D_n = 1./2.*((1./(pi.*n)).*sin((3-n).*pi )) + (1./pi.*n).*sin((3+n).*pi)  ...
    + (1./(2.*n.*pi).*sin((1+n).*pi)) + (1./(2.*n.*pi).*sin((1-n).*pi)) ;
subplot(1,2,1); stem(n,abs(D_n),'.k'); 
xlabel('n'); ylabel('|D_n|'); 
subplot(1,2,2); stem(n,angle(D_n),'.k'); 
xlabel('n'); ylabel('\angle Dn [rad]');
%%
%x_2(t)
clf;
n = (-20:20);
D_n = (1./(n.*pi).*sin((n.*pi)./2)); 
subplot(1,2,1); stem(n,abs(D_n),'.k'); 
xlabel('n'); ylabel('|D_n|'); 
subplot(1,2,2); stem(n,angle(D_n),'.k'); 
xlabel('n'); ylabel('\angle D_n [rad]');
%%
%x_3(t)
clf;
n = (-20:20);
D_n = (1./(n.*pi).*sin((n.*pi)./4)); 
subplot(1,2,1); stem(n,abs(D_n),'.k'); 
xlabel('n'); ylabel('|D_n|'); 
subplot(1,2,2); stem(n,angle(D_n),'.k'); 
xlabel('n'); ylabel('\angle D_n [rad]');
%% A.4 - Part C
%x_1(t)
clf;
n = (-50:50);
D_n = 1./2.*((1./(pi.*n)).*sin((3-n).*pi )) + (1./pi.*n).*sin((3+n).*pi)  ...
    + (1./(2.*n.*pi).*sin((1+n).*pi)) + (1./(2.*n.*pi).*sin((1-n).*pi)) ;
subplot(1,2,1); stem(n,abs(D_n),'.k'); 
xlabel('n'); ylabel('|D_n|'); 
subplot(1,2,2); stem(n,angle(D_n),'.k'); 
xlabel('n'); ylabel('\angle Dn [rad]');
%%
%x_2(t)
clf;
n = (-50:50);
D_n = (1./(n.*pi).*sin((n.*pi)./2)); 
subplot(1,2,1); stem(n,abs(D_n),'.k'); 
xlabel('n'); ylabel('|D_n|'); 
subplot(1,2,2); stem(n,angle(D_n),'.k'); 
xlabel('n'); ylabel('\angle D_n [rad]');
%%
%x_3(t)
clf;
n = (-50:50);
D_n = (1./(n.*pi).*sin((n.*pi)./4)); 
subplot(1,2,1); stem(n,abs(D_n),'.k'); 
xlabel('n'); ylabel('|D_n|'); 
subplot(1,2,2); stem(n,angle(D_n),'.k'); 
xlabel('n'); ylabel('\angle D_n [rad]');

%% A.4 - Part D
%x_1(t)
clf;
n = (-500:500);
D_n = 1./2.*((1./(pi.*n)).*sin((3-n).*pi )) + (1./pi.*n).*sin((3+n).*pi)  ...
    + (1./(2.*n.*pi).*sin((1+n).*pi)) + (1./(2.*n.*pi).*sin((1-n).*pi)) ;
subplot(1,2,1); stem(n,abs(D_n),'.k'); 
xlabel('n'); ylabel('|D_n|'); 
subplot(1,2,2); stem(n,angle(D_n),'.k'); 
xlabel('n'); ylabel('\angle Dn [rad]');
%%
%x_2(t)
clf;
n = (-500:500);
D_n = (1./(n.*pi).*sin((n.*pi)./2)); 
subplot(1,2,1); stem(n,abs(D_n),'.k'); 
xlabel('n'); ylabel('|D_n|'); 
subplot(1,2,2); stem(n,angle(D_n),'.k'); 
xlabel('n'); ylabel('\angle D_n [rad]');
%%
%x_3(t) 
clf;
n = (-500:500);
D_n = (1./(n.*pi).*sin((n.*pi)./4)); 
subplot(1,2,1); stem(n,abs(D_n),'.k'); 
xlabel('n'); ylabel('|D_n|'); 
subplot(1,2,2); stem(n,angle(D_n),'.k'); 
xlabel('n'); ylabel('\angle D_n [rad]');




end
