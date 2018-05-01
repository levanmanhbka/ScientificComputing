function [  ] = GPTPT_PPDC( fx,a,c,eps )
saiso = abs(a - c);
vonglap = 0;
while saiso>eps
    vonglap = vonglap + 1;
    fa = feval(fx,a);
    fc = feval(fx,c);
    b = (a*fc-c*fa)/(fc-fa);
    fb = feval(fx,b);
    if fa*fb<=0
        c = b;
    else
        a = b;
    end
    saiso = abs(a - c);
    disp([a,b,c,fa,fb,fc, saiso]);
end
nghiem = b
sai_so = abs(fb)
vonglap
end

