%m = [159 159 159 159 159 421 421 421 421 421]/1e3;
m = 159/1e3;
ma = 33/1e3;
md = 126/1e3;
mg = 262/1e3;
t = [1.36 1.363 1.374 1.368 1.365 2.05 2.057 2.051 2.05 2.056];
h = 400/1e3;
r = 5/1e3;
D1 = 84.5/1e3;
D2 = 105/1e3;
g = 9.81;

%%
t1 = [1.36 1.363 1.374 1.368 1.365]
%t1vid=mean(t1)
t2 = [2.05 2.057 2.051 2.05 2.056]
%%

for n = 1:1:10
    I(1,n) = m*r^2*(g*t(1,n)^2/(h*2) - 1);
end

for n = 1:1:10
    Wkb(1,n) = (m + I(1,n)/r^2) * (2*h^2/(t(1,n)^2));
end
Ig = mg/8*(D1^2+D2^2);
Wp0 = m*g*h;