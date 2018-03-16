%% 1
syms c a x b
y = (c+a*x+b*sqrt(x))/(x-1)-1
n = solve(y,x)
pretty(n)
%% 2
syms x
y = (-1*((x+1)/(x-2)));
y_atv = diff(y);
y_atv = simplify(y_atv);
y_vect = vectorize(y);
y_atv_vect = vectorize(y_atv);
x = 2:0.001:3;
y_num = eval(y_vect);
y_atv_num = eval(y_atv_vect);
plot(x,y_num,':k',x,y_atv_num,'b')
ylim([-100 100]);
y_ltx = latex(y);
y_atv_ltx = latex(y_atv);
h = legend(['$',y_ltx,'$'],['$',y_atv_ltx,'$']);
set(h,'Interpreter','latex')

