function [ output_args ] = PPCatTuyen( f,x0,x1,saiso )
    ss=1;
    while ss>saiso
        daoham=(feval(f,x1)-feval(f,x0))/(x1-x0);
        x2=x1-feval(f,x1)/daoham;
        ss=abs(feval(f,x2));
        x0=x1;
        x1=x2;
    end
    nghiem=x2
    Sai_so=ss
end

