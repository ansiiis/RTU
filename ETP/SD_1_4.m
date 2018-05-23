In = 3e-3; U1=10; U2=17; 
R1=4e3; R2=2e3; R3=5e3; R4=3e3; R5=NaN; R6=1e3;
g1=1/R1; g2=1/R2; g3=1/R3; g4 = 1/R4; g5=1/R5; g6=1/R6;
Ux = In*R1;


g = [g1+g2+g6,-g1;-g1,g1+g3+g4];

I = [-g1*Ux+g6*U2;g1*Ux+g3*U1];

fi = g\I;