function [ma] = PTVP_RungeKutta(fx,f, y0, t0, h, K)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
y(1) = y0;
c(1) = y0;
t(1) = t0;
w(1) = 0;

y1(1) = y0;
w1(1) = 0;
for i = 1:K
    t(i + 1) = t(i) + h;
    c(i + 1) = feval(fx,t(i+1));
    %phuong phat euler than
%     y(i + 1) = y(i) + h * feval(f,y(i), t(i));
%     w(i + 1) = c(i + 1) - y(i+1);
    %phuong phap runge kutta
    k1 = h * feval(f, y1(i), t(i));
    k2 = h * feval(f, y1(i) + k1, t(i + 1));
    y1(i + 1) = y1(i) + 1.0/2.0*(k1 + k2);
    w1(i + 1) = c(i + 1) - y1(i + 1);
    display([t(i + 1), y1(i + 1), w1(i+1)]);
end
% plot(t, c, 'r-*');
% hold on;
% plot(t, y, 'b-*');
% hold on;
% plot(t, y1, 'g-+');
% ma = [y;w;y1;w1];
end

