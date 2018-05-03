%% videjas vertibas aprekins 
t=0:0.1:7.5;
N = length(t); 
%% 
%* ar formulu 3a
xvid3a = 1/(N-1) * sum(sig(t(1:end-1)))
%* ar formulu 3b
xvid3b = 1/(N-1) * sum(sig(t(2:end)))
%* ar formulu 3c
h = (t(end)-t(1))/(N-1);
xvid3c = 1/(N-1) * sum(sig(t(1:end-1)+h/2))
%* ar formulu 4
xvid4 = 1/(N-1)* ((sig(t(1)) + sig(t(end)))/2 + sum(sig(t(2:end-1))))
%% istas videjas vertibas aprekins
% * sinusoīda
syms t_sin
A0 = 0; A = 3; T = (1.5)/8; f = 1/T; delay = 1;
y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
int_sin = int(y_sin,t_sin,0,1.5)
% * saw
syms t_saw
yA = 0; yB = 0.375; tA = 4.5; tB = 6; delay = 4.5;
k = (yA-yB)/(tA-tB);
y_saw = k*(t_saw-delay);
int_saw = int(y_saw,t_saw,4.5,6)
% * const
syms t_const
y_const =-3;
int_const = int(y_const,t_const,3.5,4.5)
%%
% Liekam visu kopa
ista_vv = double(1/7.5*(int_const+int_saw+int_sin))

%% Salidzinasim 3a ar isto vv
dt = [1 0.1 0.01 0.001]; % laika solis
xvid3am = [];
for dtc = dt
    t = 0:dtc:7.5;
    N = length(t); 
    xvid3a = 1/(N-1) * sum(sig(t(1:end-1)));
    xvid3am = [xvid3am,xvid3a];
end
semilogx(dt,xvid3am,'-o',dt,dt*0+ista_vv)
%% Simulink
%
% <<../a.png>>
%
% <<../b.png>>
%
%% Piezime
% lai simulink palaistos vajadzētu definēt dt = 0.01
%% Secinajumi:
% Stravas signala aprēkinus var veikt manuali, vai izmantojot simulink
% blokshemas
%
% Precizakus rezultātus iegust lietojot mazaku soli dt


