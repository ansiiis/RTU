R1=4; R2=1; R3=3; R4=5; R5=2; R6=10; R7=4; R8=12; Us = 10;
%
Req1 = R1+R5;
Req2 = Req1*R6/(Req1+R6);
Req3 = Req2+R8;
Req4 = Req3*R4/(Req3+R4);
Req5 = Req4+R7;
Req6 = Req5*R3/(Req5+R3);
Req7 = Req6+R2;

U2 = Us/Req7*R2;
Us2 = Us-U2;
U3 = Us2;
I3 = U3/R3;
I7 = U3/Req5;
U7 = I7*R7;
U4 = U7 - U3;
I8 = -U4/Req3