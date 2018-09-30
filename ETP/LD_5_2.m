L=20e-3; C=2200e-12;
Us = 5; Uc = 3;
R0 = 1e3;  R=4e3;
fm = [10e3];
omega = 2*pi*fm;
Zc = 1/(C*omega*i);

r = [R0+R+Zc];
I = r\Us;

Uc = I*Zc;
Ur = I*R;
Ur0 = I*R0;