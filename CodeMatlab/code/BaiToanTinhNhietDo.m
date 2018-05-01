L = 2; dx = 0.1; N = L/dx;
Time =20; dt = 0.01; D = 0.1;
for i =1:N
    ck(i) = 25; %gia tri nhiet do tai thoi diem 0 cua diem thu i
end
for k=1:Time
    for i=1:N
        if i==1
            DH(i) = (100 - 2*ck(i) + ck(i+1))/(dx*dx);
        elseif i == N
            DH(i) = (ck(i-1) - 2*ck(i) + 25)/(dx*dx);
        else
            DH(i) = (ck(i-1) - 2*ck(i) + ck(i+1))/(dx*dx);
        end
    end
    
    for i=1:N
        ck1(i) = ck(i) + dt*D*DH(i); %gia tri tiep theo phu thuoc vao gia tri hien tai
        
    end
    plot([1:N],ck1);
    
    for i=1:N
        ck(i) = ck1(i);
    end
    
end
