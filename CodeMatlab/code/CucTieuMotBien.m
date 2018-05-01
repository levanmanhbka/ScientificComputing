function [] = CucTieuMotBien( f,a,b,e )
%cuc tieu mot bien
while abs(b-a)>=2*e
    x1 = a + (b-a)/2 - e/2;
    x2 = a + (b-a)/2 + e/2;
    f1 = feval (f,x1); 
    f2 = feval (f, x2);
    if f1<f2
        b = x2;
    elseif f1>f2
        a = x1;
    else
        a = x1; 
        b = x2;
    end
    
end
xmin = (a+b)/2
fmin = feval(f,xmin)
end

