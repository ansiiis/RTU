In = 3e-3; U1=10; U2=17; 
R1=4e3; R2=2e3; R3=5e3; R4=3e3; R5=6e3; R6=1e3;
g1=1/R1; g2=1/R2; g3=1/R3; g4 = 1/R4; g5=1/R5; g6=1/R6;
Ux = In*R1;
g32=1/(R2+R3);
g46=1/(R4+R6);

g = [g1+g32+g46];
I = [g1*Ux-g32*U1+g46*U2];

fi = g\I;

I4 = (-fi+U2)*g46;
I3 = (fi+U1)*g32;
fim = I3*R2;
fin = fi + I4*R4;
Umn = -fin + fim;
R14 = R1+R4;
R143 = R14*R3/(R14+R3);
R1432 = R143*R2/(R143+R2);
R14326 = R1432+R6;
Req = R14326;
I5 = Umn/(R5+Req);
