%% 1. Tabula
Um0 = [0.58 0.37];
n = [6 6];
Umnt =[0.04 0.11];
nT = [70 70]*1e-6;
T = [11.667 11.667]*1e-6;
f = [85.711 85.711]*1e3;

lambda = 1./n .* log(Um0./Umnt);
Q = pi./lambda;

%% 2. Tabula
% R=12k
f1rez=81e3;
f1 = [52 59 67 73 79 80 81 87 93 99 105 115 133]*1e3;
Urez = 0.5;
Uf1 = [0.07 0.0927 0.142 0.216 0.3847 0.431 0.5 0.4287 0.3 0.2 0.1591 0.1157 0.07];
Uf1_Urez = Uf1./Urez;
n = 52e3:1e3:133e3;
xlim([-0.1 133e3])
Uf1s = spline(f1,Uf1,n);
Uf1_Urezs = spline(f1,Uf1_Urez,n);
plot(f1,Uf1,'o',f1,Uf1_Urez,'x',n,Uf1s,n,Uf1_Urezs)
legend('U(f)','U(f)/Urez')
h = xlabel('$f,Hz$')
set(h,'Interpreter','latex')
h1 = ylabel('$U,V$')
set(h1,'Interpreter','latex')
% R=22k
f2rez=85e3;
f2 = [60 64.2 68.5 73 77.6 80 85 86.2 90.4 95.3 99.8 111 120]*1e3;
Uf2 = [0.07 0.0889 0.1142 0.157 0.2559 0.3687 0.5 0.4967 0.347 0.2 0.1516 0.0954 0.07];
Uf2_Urez = Uf2./Urez;
m = 60:1e3:120e3;
Uf2_Urezs = spline(f2,Uf2_Urez,m);
Uf2s = spline(f2,Uf2,m);
figure(2)
plot(f2,Uf2,'o',f2,Uf2_Urez,'x',m,Uf2s,m,Uf2_Urezs)
legend('U(f)','U(f)/Urez')
h3 = xlabel('$f,Hz$')
set(h3,'Interpreter','latex')
h4 = ylabel('$U,V$')
set(h4,'Interpreter','latex')
ylim([0 1]);
figure(3)
plot(f1,Uf1_Urez,'o',n,Uf1_Urezs,f2,Uf2_Urez,'x',m,Uf2_Urezs)
h5 = xlabel('$f,Hz$')
set(h5,'Interpreter','latex')
h6 = ylabel('$U,V$')
set(h6,'Interpreter','latex')
ylim([0 1.1])
legend('U(f)/Urez R1','U(f)/Urez R2')


