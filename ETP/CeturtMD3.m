Us1 = 30; Us2 = 10*cos(10e6); R1 = 10; R2 = R1; R3 = 20; L1=10e-6; C1=100e-9; C2=C1; 
omega=10e6;
Zl1 = L1*omega*i; Zc1=1/(C1*omega*i); Zc2=Zc1;

r = [ R1+Zl1+R2         -R2         0
              -R2         R2+Zc2    0
              0                 0   Zc2+R3];
          
u = [ Us1; -Us2; Us2];

Ik = r\u;

I2 = Ik(1) - Ik(2);

U2 = I2*R2