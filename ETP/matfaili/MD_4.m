Ri1 = 1e3; Ri2 = 120; R1 = 1.3e3; R2=2e3; R3=2.7e3; R4=3.6e3; R5=1.8e3; R6=1.1e3;
U1 = 22; U2 = 6;

r = [ Ri1+R1+R2     -R2              0
             -R2     R2+R3+R4+R6    -R4
                0    -R4             R4+R5+Ri2];
u = [U1;0;-U2];

Ik = r\u;

I1 = Ik(1);
I2 = Ik(1) - Ik(2);
I3 = Ik(2);
I4 = Ik(2) - Ik(3);
I5 = Ik(3);
I6 = Ik(2);

Iv = [I1 I2 I3 I4 I5 I6];

%% MSM
Ri1 = 1e3; Ri2 = 120; R1 = 1.3e3; R2=2e3; R3=2.7e3; R4=3.6e3; R5=1.8e3; R6=1.1e3;
U1 = 22; U2 = 6;

g1 = 1/R1; g2=1/R2; g3=1/R3; g4=1/R4; g5=1/R5; g6=1/R6;
gi1 = 1/Ri1; gi2=1/Ri2;
g11=1/(Ri1+R1);
g55 = 1/(Ri2+R5);

g = [g11+g2+g3      -g11-g2         0
     -g11-g2         g2+g11+g6      -g6
     0              -g6             g4+g6+g55];

 i = [U1*g11; -U1*g11; -U2*g55];
 
 fi = g\i;
 
 I1 = ( fi(2) - fi(1) + U1 )*g11;
 I2 = ( fi(1) - fi(2) ) *g2;
 I3 = fi(1)*g3;
 I4 = -fi(3)*g4;
 I5 = ( -fi(3) - U2 )*g55;
 I6 = ( fi(3) - fi(2) ) *g6;
 
 Iv = [I1 I2 I3 I4 I5 I6];
 







