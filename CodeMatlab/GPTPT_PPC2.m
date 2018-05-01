function [  ] = GPTPT_PPC2( fx, a, c, eps)
  saiso=eps+1; 
  
    while saiso > eps
            
            fa=feval(fx,a);
            fc=feval(fx,c);
            b=(a+c)/2;    
            fb=feval(fx,b);
            disp([a,b,c,fa,fb,fc]);
            if fa*fb<=0
                c=b;
            else
                a=b;
            end
            saiso=abs(fb);
    end
    nghiem=b
    sai_so=abs(fb)
end

