function [] = TP_Simpson(fx, a, b, n)
h = (b - a) / n
fa = feval(fx, a);
fb = feval(fx, b);
fi = 0;
fj = 0;

for i = 1:2:n-1
    x = a + i*h;
    fi = fi + feval(fx, x);
end

for j = 2:2:n-2
    x = a + j*h;
    fj = fj + feval(fx, x);
end

I = (b - a) * (fa + 4 * fi + 2 * fj) / (3 * n)
end

