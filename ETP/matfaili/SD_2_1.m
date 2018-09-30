R1=8e3; R2=6e3; R3=7e3; R4=5e3; R5=4e3; R6=2e3;
U = 15; UR6 = 30;

R = [R1+R3      -R3                     0
     -R3         R2+R3+R4+R6-9*R4       8*R4
     7*R5       -R4-7*R5               R4+R5];
I = [U;UR6;0];

Ik = R\I;
I1 = Ik(1);
I2 = Ik(2);
I3 = Ik(1) - Ik(2);
I4 = Ik(2) - Ik(3);
I5 = Ik(3);
I6 = Ik(2);

%% Vien

%% MSM
R1=8e3; R2=6e3; R3=7e3; R4=5e3; R5=4e3; R6=2e3;
U = 15; UR6 = 30;
g1=1/R1; g2=1/R2; g3=1/R3; g4=1/R4; g5=1/R5; g6=1/R6;

g = [g1+g3+g6       0           -g6
    7*g3         g2+g4+g5-9*g2    -g4-g5+9*g2
    -g6-7*g3    -g4-g5      g4+g6+g5];
I = [-g1*U+g6*UR6;0;-g6*UR6];
fi = g\I;
I1 = ( fi(1) + U )*g1;
I4 = ( fi(2) - fi(3) )*g4;
I2 = (-fi(2) + 9*I4*R4)*g2;
I3 = -fi(1)*g3;
I5 = (fi(2) - fi(3) - 7*I3*R5)*g5;
I6 = (fi(3) - fi(1) + UR6)*g6;
