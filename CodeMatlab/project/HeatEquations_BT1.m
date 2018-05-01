%Subject: Tinh Toan Khoa Hoc
%Project: HeatEquations - BT1
%Author: Le Van Manh - KS2K37 - HUST

%Dieu kien ban dau cua bai toan
m = 20;
n = 20;
T = 1;
dt = 0.01;
dx = 0.1;
dy = 0.1;
D  = 0.1;
time = T / dt;
DF = 25;

%Thiet lap gia tri ban dau cua C(i,j) tai thoi diem 0
for i = 1:m
    for j = 1:n
        if(i >= m/2-5 && i <= m/2+5 && j >= n/2-5 && j <= n/2+5)
            C(i,j) = 80.0;
        else
            C(i,j) = DF;
        end
    end
end

%Tinh toan do khech tan theo thoi gian
for k = 1:time
    % roi rac theo khong gian
    for i = 1:m
        for j = 1:n
            if(i==1 && j==1)
                FD(i,j) = (C(i+1,j)-2*C(i,j)+DF) / (dx * dx) + (C(i,j+1)-2*C(i,j)+DF) / (dy * dy);
            elseif(i==1 && j==n)
                FD(i,j) = (C(i+1,j)-2*C(i,j)+DF) / (dx * dx) + (DF-2*C(i,j)+C(i,j-1)) / (dy * dy);
            elseif(i==m && j==1)
                FD(i,j) = (DF-2*C(i,j)+C(i-1,j)) / (dx * dx) + (C(i,j+1)-2*C(i,j)+DF) / (dy * dy);
            elseif(i==m && j==n)
                FD(i,j) = (DF-2*C(i,j)+C(i-1,j)) / (dx * dx) + (DF-2*C(i,j)+C(i,j-1)) / (dy * dy);
            elseif(i==1)
                FD(i,j) = (C(i+1,j)-2*C(i,j)+DF) / (dx * dx) + (C(i,j+1)-2*C(i,j)+C(i,j-1)) / (dy * dy);
            elseif(j==1)
                FD(i,j) = (C(i+1,j)-2*C(i,j)+C(i-1,j)) / (dx * dx) + (C(i,j+1)-2*C(i,j)+DF) / (dy * dy);
            elseif(i==m)
                FD(i,j) = (DF-2*C(i,j)+C(i-1,j)) / (dx * dx) + (C(i,j+1)-2*C(i,j)+C(i,j-1)) / (dy * dy);
            elseif(j==n)
                FD(i,j) = (C(i+1,j)-2*C(i,j)+C(i-1,j)) / (dx * dx) + (DF-2*C(i,j)+C(i,j-1)) / (dy * dy);
            else
                FD(i,j) = (C(i+1,j)-2*C(i,j)+C(i-1,j)) / (dx * dx) + (C(i,j+1)-2*C(i,j)+C(i,j-1)) / (dy * dy);
            end
        end
    end
    
    % tich hop theo thoi gian
    for i=1:m
        for j=1:n
            C1(i, j) = C(i, j) + dt * D * FD(i, j);
        end
    end
    
    % ve do thi mo phong
    [X,Y] = meshgrid(1:1:m,1:1:n);
    for i=1:m
        for j=1:n
            Z(i, j) = C1(i, j);
        end
    end
    surf(X,Y,Z)
    pause(0.2);
    
    % cap nhat gia tri nong do
    for i=1:m
        for j=1:n
            C(i,j) = C1(i,j);
        end
    end
end