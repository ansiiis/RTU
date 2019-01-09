 Rs=[1 2 3]*1e3; R2=1e3; Ufgn=32.8e-3;
Uie=[11.8 11.4 11]*1e-3;
Uiz=[527 989 1365]*1e-3;
Ku=Uie./Uiz;
Iiz=Uiz./Rs;
Iie=(Ufgn-Uie)/R2;
Ki=Iiz./Iie;
Rie = Uie./Iie;


n=1e3:1:3e3;
Kus = spline(Rs,Ku,n);
plot(Rs,Ku,'o',n,Kus)
title('Ku=F(Rs) kopemitera slēgumā')
h1 = ylabel('Ku');
h2 = xlabel('Pretestiba Rs$,\Omega$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')


Kis = spline(Rs,Ki,n);
plot(Rs,Ki,'o',n,Kis)
title('Ki=F(Rs) kopemitera slēgumā')
h1 = ylabel('Ki');
h2 = xlabel('Pretestiba Rs$,\Omega$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')



%plot(Rs,Ki)
%%
Rs=[0.51 1 2]*1e3; R2=5.1e3; Ufgn=380e-3;
Uie=[295.3 288 274.6]*1e-3;
Uiz=[290.9 283.9 270.6]*1e-3;
Ku=Uie./Uiz;
Iiz=Uiz./Rs;
Iie=(Ufgn-Uie)/R2;
Ki=Iiz./Iie;
Rie = Uie./Iie;

n=0.51e3:1:2e3;
Kus = spline(Rs,Ku,n);
plot(Rs,Ku,'o',n,Kus)
title('Ku=F(Rs) kopekolektora slēgumā')
h1 = ylabel('Ku');
h2 = xlabel('Pretestiba Rs$,\Omega$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')


Kis = spline(Rs,Ki,n);
plot(Rs,Ki,'o',n,Kis)
title('Ki=F(Rs) kopemitera slēgumā')
h1 = ylabel('Ki');
h2 = xlabel('Pretestiba Rs$,\Omega$');
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')