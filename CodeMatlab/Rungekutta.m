function [ output_args ] = Rungekutta(f, y0, t0, h, k)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    y(1) = y0;
    t(1) = t0;
    for i=1:k
        t(i+1) = t(i) + h;
        x1= h*feval(f,y(i),t(i));
        x2= h*feval(f,y(i)+x1,t(i+1));
        y(i+1) = y(i) + (x1+x2)/2;
    end
    plot(t,y,'r-*');
    hold on;
    for i=1:k
        t= i*h;
        %So sánh v?i nghi?m ?úng c?a pt ?ó 
        plot(t,feval(@(t)5*exp(-20*t)+(7/19.5)*(exp(-0.5*t)-exp(-20*t)),t),'b-+');
    end
end
%Rungekutta(@(y,t) -20*y+7*exp(-0.5*t), 5, 0, 0.001, 4)
