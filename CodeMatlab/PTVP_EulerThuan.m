function [ma] = PTVP_EulerThuan(fx,f, y0, t0, h, K)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
y(1) = y0;
c(1) = 5;
t(1) = t0;
w(1) = 0;
for i = 1:K
    y(i + 1) = y(i) + h * feval(f,y(i), t(i));
    t(i + 1) = t(i) + h;
    c(i + 1) = feval(fx,t(i+1));
    w(i + 1) = c(i + 1) - y(i+1);
end
plot(t, y, 'r-*');
hold on;
plot(t, c, 'b-*');
ma = [y;w];
end

