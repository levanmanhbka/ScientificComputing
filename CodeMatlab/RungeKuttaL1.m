%phuong phap runge kutta bac 1
function [ output_args ] = RungeKuttaL1(f, y0, t0, h, k)
y(1) = y0;  %gess function
t(1) = t0;  %time
for i=1:k
    t(i+1) = t(i) + h;
    k1 = h * feval(f, y(i), t(i));
    k2 = h * feval(f, y(i) + k1, t(i+1));
    y(i+1) = y(i) + 1.0/2.0*(k1+k2);
end
output_args = [y];
%display(output_args);
hold on;
plot(t,y,'g-*');
end