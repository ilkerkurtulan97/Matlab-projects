clc
clear all

n=-2:0.001:10

u=@(n) 1*(n>=0)|0*(n<0);

x=(u(n-1)-u(n-6)).*sin((2*pi)/8);

h=(u(n-1)-u(n-6)).*-sin((2*pi)/8)

y = conv(x,h)

subplot(3,3,1),stem(n,x,'k','filled');ylim([0 4]);xlim([-2 20]);

subplot(3,3,2),stem(n,h,'k','filled');ylim([0 4]);xlim([-2 20]);

subplot(3,3,3),stem(n,y,'k','filled');ylim([0 4]);xlim([-2 20]);

