Us=15-15*i; R1=10; R2=10; C1=10e-6; C2=10e-6; omega = 10e6;
Zc1=1/(C1*omega*i); Zc2=1/(C2*omega*i); 

r = [R1+Zc1+R2 -R2
          -R2   R2+Zc2];
u = [Us;0];

Ik = r\u;

Uex = Zc2*Ik(2);
modulis = abs(Uex);
faze=angle(Uex);
%%
