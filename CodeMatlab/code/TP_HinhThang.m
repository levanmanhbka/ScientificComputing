function [ ] = TP_HinhThang(fx, a, b, n )
h = (b - a) / n
fa = feval(fx, a);
fb = feval(fx, b);
fi = 0;
for i = 1:n-1
    x = a + i *h;
    fi = fi + feval(fx, x);
end
I = h/2 *(fa + 2*fi + fb)
end

