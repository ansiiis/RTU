R1=8e3; R2=6e3; R3=7e3; R4=5e3; R5=4e3; R6=2e3;
U = 15; UR6 = R6*15e-3;

R = [R1+R3      -R3                     0
     -R3         R2+R3+R4+R6-9*R4       9*R4
     7*R5       -R4-7*R5               R4+R5];
I = [U;UR6;0]

Ik = R\I