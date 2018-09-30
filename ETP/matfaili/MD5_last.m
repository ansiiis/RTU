L=20e-3; C=2200e-12;
R0 = 1e3; Us = 5; R1=100; R = 8e3;
f = [10e3];
omega = 2*pi*f;
Zl = L*omega*i; Zc = 1/(C*omega*i);

r = [R0+R1+R        -R1-R
     -R1-R          R1+R+Zc];
u = [Us;0];
Ik = r\u;

I1 = Ik(1);
I2 = Ik(1) - Ik(2);
I3 = Ik(2);

UR0 = I1*R0;
UR  = I2*R;
UR1 = I2*R1;
Uc = I3*Zc;

