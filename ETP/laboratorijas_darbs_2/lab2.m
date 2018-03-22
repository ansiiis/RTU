R =      [1900 900 800 700 600 500 400 300 200];
U = 1e-3*[380 305 290 270 250 230 200 165 126];
I = U./R;
Rt = 10:20:1e4;
Ug = 0.5;
Rg = 600;
Ut = Ug*Rt./(Rt+Rg);
It = Ut./Rt;
figure(1)
plot(R,U,'-o'), axis([0 2e3 0 0.5]),h0 = title('$U_{SL}=f(R_{SL})$'), 
set(h0,'Interpreter','latex')
h1 = xlabel(['$R_{SL}, \Omega$'])
h2 = ylabel(['$U_{SL}, V$'])
set(h1,'Interpreter','latex'),set(h2,'Interpreter','latex')
grid on

figure(2)
plot(I,U,'o',It,Ut,'--'), axis([0 1e-3 0 0.6]),h5 = title('$U_{SL}=f(I)$'), 
set(h5,'Interpreter','latex')
h3 = xlabel('$I, A$')
h4 = ylabel('$U_{SL}, V$')
set(h3,'Interpreter','latex'),set(h4,'Interpreter','latex')
grid on
