%% Ceturtais laboratorijas darbs
t = 0:0.01:8;
Us1 = sin(t); 
Us2 = ones(size(t))*6;
J3 = macibu_stunda_4_fun(t);
R1=10;    R2=2;    R3=3;     R4=4;     R5=5;     R6=6;     R7=7;     R8=8;
g1=10e-1; g2=2e-1; g3=3e-1;  g4=4e-1;  g5=5e-1;  g6=6e-1;  g7=7e-1;  g8=8e-1;

%
R = [g1+g2+g3+g4 -(g3+g4)      0            -(g1+g2)
     -(g3+g4)     g3+g4+g5+g7  0            0
     0              0          g3+g6+g8     -g8];
 
 U = [J3; Us2*g5; Us2*g5];
 
 Fi = R\U;
 F4 = Us1;
 %
 I2 = (Fi(1,:) - F4)/(R1+R2);
 P2 = I2.^2*R2;
 I3 = (Fi(2,:) - Fi(1,:))/(R3+R4);
 plot(t,I2,t,P2);
 %
 p = +I2+I3+J3