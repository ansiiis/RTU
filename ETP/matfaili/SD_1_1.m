In = 3e-3; U1=10; U2=17; R1=4e3; R2=2e3; R3=5e3; R4=3e3; R5=6e3; R6=1e3;
Ux = In*R1;
R = [R1+R2+R3, -R3, -R2
    -R3, R4+R3+R5, -R5
    -R2, -R5, R2+R5+R6];
    
U = [-U1-Ux;U1;U2];
Ik = R\U;

I1 = Ik(1)
I2 = Ik(1) - Ik(3)
I3 = Ik(2) - Ik(1)
I4 = Ik(2)
I5 =  Ik(2) - Ik(3)
I6 = Ik(3)

%% Mezglu metode
In = 3e-3; U1=10; U2=17; 
R1=4e3; R2=2e3; R3=5e3; R4=3e3; R5=6e3; R6=1e3;
g1=1/R1; g2=1/R2; g3=1/R3; g4 = 1/R4; g5=1/R5; g6=1/R6;
Ux = In*R1;


g = [g1+g2+g6, -g1, -g6; -g1, g1+g4+g3, -g4; -g6, -g4, g4+g5+g6];

I = [-g1*Ux-g6*U2;g1*Ux-g3*U1;U2*g6];

fi = g\I;

I1 = (fi(2) - fi(1) - Ux)*g1
I2 = (fi(1))*g2
I3 = (fi(2)+U1)*g3
I4 = (fi(3) - fi(2))*g4
I5 = -fi(3)*g5
I6 = (fi(1) - fi(3) + U2)*g6

