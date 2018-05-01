function [  ] = GPTPT_PPC2( fx,a,c,eps )
saiso = abs(a - c);
vonglap = 0;
while saiso>eps
    vonglap = vonglap + 1;
    b = (a+c)/2;
    fa = feval(fx,a);
    fb = feval(fx,b);
    fc = feval(fx,c);
    if fa*fb<=0
        c = b;
    else
        a = b;
    end
    saiso = abs(a - c);
    disp([a,b,c,fa,fb,fc, saiso]);
end
nghiem = b
sai_so = abs(a - c)
vonglap
end

