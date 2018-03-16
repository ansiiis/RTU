Rsl = [100 200 500 800 900 1e3 1.1e3 1.2e3 1.5e3 2e3 5e3 1e4];
U1 = 22;
Ri = 1e3;
m = 1;
for m = 1:1:12
    Rsl(1,m);
    P(1,m) = U1^2*(Rsl(1,m)/(Ri+Rsl(1,m))^2)
    m=m+1;
end
S = 0:1:1e4;
Pi = spline(Rsl,P,S);
plot(Rsl,P,'o',S,Pi)
title('Jauda');
xlabel('Rsl');
ylabel('Jauda');