%%
R1=1;R2=2;R3=3;R4=4;R5=5;R6=6;R7=7; E1=1;E2=2;E3=3;

R= [R1+R2+R3 -R2 0;-R2 R2+R4+R5 -R5;0 -R5 R5+R6+R7];
E = [E1;-E2;-E3];
Ik = R\E;

%% Laika mainīgie signāli
t = 0:0.01:1;
R1=1;R2=2;R3=3;R4=4;R5=5;R6=6;R7=7; E1=1;E2=2;E3=3;
R= [R1+R2+R3 -R2 0;-R2 R2+R4+R5 -R5;0 -R5 R5+R6+R7];
E1 = 2*cos(2*pi*2*t);
E2 = 5*ones(size(t));
E3 = 3*sin(2*pi*3*t);
E = [E1;-E2;-E3];
% risināsim vienādojumu
Ik = R\E;
% atrast un uzzīmēt IR6
IR6 = Ik(3,:);
plot(t,IR6)
hold on
%UR6
UR6 = R6*IR6;
plot(t,UR6)
P6 = IR6.^2*R6;
plot(t,P6)

%% Kā pārbaudīt rezultātus
% kirhova sprieguma likums
%UR6+UR7+UR5=-E3
IR5 = Ik(3,:)-Ik(2,:);
IR7 = Ik(3,:);
UR5 = IR5*R5;
UR7 = IR7*R7;
Utst = UR6+UR7+UR5+E3;
plot(t,Utst)


