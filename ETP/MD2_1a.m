R1=5; R2=3; R3=10; R4=2; R5=5; R6=8; R7=4; R8=5; R9=7; Us=24;
%
Rq1=R7+R8+R9
Rq2=Rq1*R6/(Rq1+R6)
Rq3=Rq2+R4+R5
Rq4=Rq3*R3/(Rq3+R3)
Rq5=Rq4+R1+R2
%
U3 = Us*R3/Rq5
U6 = U3*R6/Rq3
U9 = U6*R9/Rq1
I9 = U6/Rq1