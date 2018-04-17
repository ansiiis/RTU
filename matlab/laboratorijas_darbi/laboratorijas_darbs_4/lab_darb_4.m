%% Ceturtais laboratorijas darbs
t = 0:0.01:8;
Us1 = sin(t); 
Us2 = ones(size(t))*6;
J3 = macibu_stunda_4_fun(t);
R1=10;    R2=2;    R3=3;     R4=4;     R5=5;     R6=6;     R7=7;     R8=8;

g12=1/12; g34=1/7; g5=1/5; g6=1/6; g7=1/7; g8=1/8;

%
R = [g12+g34 -g34            0           
    -g34      g34+g5+g7     -g5           
     0        -g5            g5+g6+g8];
 
 U = [Us1*g12-J3; Us2*g5; Us2*g5+Us1*g8];
 
 Fi = R\U;
 %
 I2 = (Fi(1,:) - F4)/(R1+R2);
 P2 = I2.^2*R2;
 I3 = (Fi(2,:) - Fi(1,:))/(R3+R4);
 plot(t,I2,t,P2);
 %
 KStrL=I2+J3-I3;
 figure(2)
 plot(t,KStrL)