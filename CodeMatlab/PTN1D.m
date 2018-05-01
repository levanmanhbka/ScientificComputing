L= 2;dx = 0.1; N=L/dx;
Time = 200; dt=0.01;D=0.1;
%kh?i t?o nhi?t ?? trên toàn b? thanh kim lo?i là 25
for i=1:N
    Ck(i) = 25;
end

for k=1:Time
    for i=1:N
        if i==1
            DH(i) = (100 - 2*Ck(i) + Ck(i+1))/(dx*dx);
        elseif i==N
            DH(i) = (Ck(i-1) - 2*Ck(i) + 25)/(dx*dx);
        else 
            DH(i) = (Ck(i-1) - 2*Ck(i) + Ck(i+1))/(dx*dx);
        end
    end
    for i=1:N
        Ck1(i) = Ck(i) +dt*D*DH(i);
    end
     plot([1:N],Ck1);
     for i=1:N
        Ck(i) = Ck1(i);
    end
end
%Pt nhiet1d25