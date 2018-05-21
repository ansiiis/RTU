L=100e-3; C=2400e-12; Rp=91e3;
i = [0.1 0.2 0.4 0.7 1 2 4 7 10];
f0 = 1.0273e4;
fi = i.*f0;
omega = fi.*2*pi;
Xl = omega.*L;
Xc = 1./(omega.*C);
dX = Xl-Xc;
rv = (Xl).^2/Rp;
Zv = sqrt(rv.^2+(Xl+Xc).^2);
Iv = sqrt((Xl+Xc).^2);
Yc = 1./Xc;
Yl = 1./Xl;
dY = Yc-Yl;
Zp = 1./sqrt((1/Rp)^2+(1./Xl - 1./Xc).^2);
Ip = 1./sqrt((1./Xl - 1./Xc).^2);

figure(1)
subplot(2,1,1, 'XScale', 'log', 'YScale', 'log')
loglog(fi,Zp,fi,Xl,fi,Xc,'--')
title('Paralēlā slēguma pretestības atkarība no frekvences')
h1=xlabel('$f, Hz$')
h2=ylabel('$Zp,\Omega$')
set(h1,'Interpreter','latex')
set(h2,'Interpreter','latex')
xlim([1e3 1.1e5])
subplot(2,1,2, 'XScale', 'log', 'YScale', 'log')
loglog(fi,Zv,fi,Iv,'--')
h3=xlabel('$f, Hz$')
h4=ylabel('$Zp,\Omega$')
set(h3,'Interpreter','latex')
set(h4,'Interpreter','latex')
title('Virknes slēguma pretestības atkarība no frekvences')

