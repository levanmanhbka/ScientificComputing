function [] = PTVP_EulerThuan(fx,f, y0, t0, h, K)
y(1) = y0;%gia tri tai thoi diem 0
c(1) = 5; %gia tri thuc
t(1) = t0; %thoi diem ban dau
w(1) = 0; %sai so
for i = 1:K
    y(i + 1) = y(i) + h * feval(f,y(i), t(i));
    t(i + 1) = t(i) + h;
    c(i + 1) = feval(fx,t(i+1));
    w(i + 1) = c(i + 1) - y(i+1);
    display([t(i + 1), y(i + 1), w(i+1)]);
end
% plot(t, y, 'r-*');
% hold on;
% plot(t, c, 'b-*');
% ma = [y;w];
end

