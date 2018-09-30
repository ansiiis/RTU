%% 1-1.
% Simboliski
syms v0 v1 a t
eqn = v0+a*t-v1;
t = solve(eqn,t);
fprintf('t=\n\n')
pretty(simplify(t))
% Numerāli
v0 = 8;
v1 = 1;
a = -2;
t = eval(t)
%% 1-15
% Simboliski
syms s sx sy v0 t g sinB
eqn_sy = (g*t^2)/2 - sy;
eqn_sx = v0*sinB*t + (g*t^2)/2 -sx;
t = solve(eqn_sy,t);
v0 = solve(eqn_sx,v0);
fprintf('t=\n\n')
pretty(t(1))
fprintf('v0=\n\n')
pretty(v0(1))
%% Numerāli
sx = 5;
sy = 1;
g = 9.8;
t = eval(t); 
t = t(t>=0)
v0 = eval(v0);
v0 = v0(v0>=0)

