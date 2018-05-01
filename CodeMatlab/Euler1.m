%phuong phap euler thuan 1
function [ output_args ] = Euler1(f, y0, t0, h, k)
y(1) = y0;  %gess function
t(1) = t0;  %time
for i=1:k
    t(i+1) = t(i) + h;
    y(i+1) = y(i) + h * feval(f, y(i), t(i));
end
output_args = [y];
%display(output_args);
hold on;
plot(t,y,'y-*');
end



% %phuong phap euler thuan 1
% function [ output_args ] = Euler1(fc,f, y0, t0, h, k)
% y(1) = y0;  %gess function
% t(1) = t0;  %time
% c(1) = y0;  %original function
% d(1) = 0.0; %different
% for i=1:k
%     t(i+1) = t(i) + h;
%     y(i+1) = y(i) + h * feval(f, y(i), t(i));
%     c(i+1) = feval(fc, t(i+1));
%     d(i+1) = c(i+1) - y(i+1);
% end
% output_args = [y];
% %display(output_args);
% plot(t,c,'r-*');
% hold on;
% plot(t,y,'g-*');
% hold on;
% end
% 
