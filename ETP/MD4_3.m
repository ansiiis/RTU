Ri1 = 1e3; Ri2 = 120; R1 = 1.3e3; R2=2e3; R3=2.7e3; R4=3.6e3; R5=1.8e3; R6=1.1e3;
U1 = 22; U2 = 6;

r = [Ri1+R1     0           0 
           0    R3+R4+R6    -R4
           0    -R4         R5+Ri2+R4];
       
u = [U1;0;-U2];

Ik = r\u;

R11= Ri1+R1;
R55= R5+Ri2;
R554 = R55*R4/(R55+R4);
R5436 = R554+R6+R3;
Req = R11*R5436/(R11+R5436);
In = Ik(1) - Ik(2)
I2 = (In)*Req/(Req + R2);