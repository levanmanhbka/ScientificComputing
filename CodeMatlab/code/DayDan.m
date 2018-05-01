dx = 0.05; N = 20; L = N*dx;
Time =5; dt = 0.01; C = 1;

for i=1:N+1
    x =(i-1)*dx;
    Phi0(i) = sin(2*pi*x); %gia tri bien do tai thoi diem 0 tai vi tri i
    Phi1(i) = Phi0(i); %gia tri bien do tai thoi diem 1 tai vi tri i
end
line([0,22],[0,0]);
hold on;
plot([1:N+1],Phi0);


for k=1:Time/dt
    for i=1:N+1
        if i==1
            DHB2(i) = (-Phi1(2) - 2*Phi1(i) + Phi1(i + 1)) / (dx * dx);
        elseif i== N+1
            DHB2(i) = (Phi1(i-1) - 2*Phi1(i) - Phi1(N)) / (dx * dx);
        else
            DHB2(i) = (Phi1(i-1) - 2*Phi1(i) + Phi1(i + 1)) / (dx * dx);
        end
    end
    
    for i=1:N+1
        Phi2(i) = 2*Phi1(i) - Phi0(i) + C*dt*dt*DHB2(i); %gia tri tiep theo phu thuoc vao gia tri hien tai va gia tri truoc do
    end
  
    plot([1:N+1],Phi2);
    pause(0.1);
    for i=1:N+1
        Phi0(i) = Phi1(i);
        Phi1(i) = Phi2(i);
    end
end
