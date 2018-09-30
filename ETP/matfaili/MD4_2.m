Ri1 = 1e3; Ri2 = 120; R1 = 1.3e3; R2=2e3; R3=2.7e3; R4=3.6e3; R5=1.8e3; R6=1.1e3;
U1 = 22; U2 = 6;

g1 = 1/R1; g2=1/R2; g3=1/R3; g4=1/R4; g5=1/R5; g6=1/R6;
ga = 1/(R3+R1+Ri1+R6);
gb = 1/(R5+Ri2);

g = [ga+gb+g4];
i = [U1*ga+U2*gb];
fi = g\i;

Iga = (-fi +U1) *ga;

fim = fi + R3*Iga;
fin = -Iga*R6;
Umn = fim - fin;

R11= Ri1+R1;
R55= R5+Ri2;
R554 = R55*R4/(R55+R4);
R5436 = R554+R6+R3;
Req = R11*R5436/(R11+R5436);
Umn/(R2+Req)