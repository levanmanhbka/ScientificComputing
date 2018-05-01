C=1;N=20;Time=5;dt=0.01;dx=0.05;
for i=1:N+1
    x=(i-1)*dx;
    Phi0(i)=sin(2*pi*x);
    Phi1(i)=Phi0(i);
end
line([0,22],[0,0]);
plot([1:N+1],Phi0);
for k=1:Time/dt
    for i=1:N+1;
        if i==1
            DHB2(i) = (-Phi1(2)-2*Phi1(i)+Phi1(i+1))/(dx*dx);
        elseif i==N+1;
            DHB2(i) = (Phi1(i-1)-2*Phi1(i)-Phi1(N))/(dx*dx);
        else
            DHB2(i) = (Phi1(i-1)-2*Phi1(i)+Phi1(i+1))/(dx*dx);
        end
    end
    for i=1:N+1
        Phi2(i)=2*Phi1(i) - Phi0(i)+C*dt*dt*DHB2(i);
    end
    pause(0.1); set(gca,'YLim',[-1 1]);plot([1:N+1],Phi2);
    for i=1:N+1
        Phi0(i)=Phi1(i);
        Phi1(i)=Phi2(i);
    end
end
