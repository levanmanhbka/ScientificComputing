function [ ] = GPPPT_PPNewton( fx,dh,x0,eps )

saiso =eps + 1;

while saiso > eps
    f0 = feval(fx,x0);
    dhx0 = feval(dh,x0);
    xk = x0 - f0/dhx0;
    x0 =xk;
    saiso = abs(feval(fx,xk));   
    display([x0, f0, saiso])
end
nghiem = xk
saiso

end

