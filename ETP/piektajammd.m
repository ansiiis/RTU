Uie = 100*sqrt(2)*exp(pi/2); R1=20; R2=10; L1=20e-3; L2=L1; L3=10e-3; C1=50e-6;
omega = 1e4;
Zl = j*omega*L1; Zc = 1/(j*omega*C1);

Zeq1 = R1*Zl/(R1+Zl); Zeq2 = Zl*R2/(Zl+R2); Zeq3 = Zeq2*Zc/(Zeq2+Zc);

Zkop = Zeq1 + Zeq3 + Zl;
Iie = Uie/Zkop;