t = [30 35 40 45 50 55 60 65 70];
Rs = [85.7 86.7 87.9 89.1 90.3 91.6 93 94.4 95.8];
Rdz = [86.3 87.7 89.2 91.3 92.6 93.8 95.3 96.4 97.2];
U=0:5:100;
x = polyfit(t,Rs,1);
y = polyval(x,U);
x1 = polyfit(t,Rdz,1);
y1 = polyval(x1,U);
plot(t,Rs,'o',t,Rdz,'x',U,y,U,y1)
legend('Laiks,t','Pretestība,R')
R0 = x1(2);

alpham = []
for i=1:5
alpha = (Rdz(i+1) - Rdz(i))/(t(i+1) - t(i))/R0;
alpham = [alpham,alpha];
end


