function y = lab_3_demo_fun(t)
%t = 0:0.01:7.5;

t_sin_f = (t>=0)&(t<1.5);
t_sin = t(t_sin_f);
t_zero_f = (t>=1.5)&(t<3.5);
t_zero = t(t_zero_f);
t_const_f = (t>=3.5)&(t<4.5);
t_const = t(t_const_f);
t_saw_f = (t>=4.5)&(t<6);
t_saw = t(t_saw_f);
t_noise_f = (t>=6)&(t<=7.5);
t_noise = t(t_noise_f);
%
A0 = 0; A = 3; T = (1.5)/8; f = 1/T; delay = 1;
y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
%
y_noise = rand(size(t_noise)) * 3 -1.5;
%plot(t_noise,y_noise)
%
y_const = zeros(size(t_const))-3;
%
yA = 0; yB = 0.375; tA = 4.5; tB = 6; delay = 4.5;
k = (yA-yB)/(tA-tB)
y_saw = k*(t_saw-delay);
%plot(t_saw,y_saw)
%
y_zero = zeros(size(t_zero));
%plot(t_zero,y_zero)
%
%t = [t_sin,t_zero,t_const,t_saw,t_noise];
y = [y_sin,y_zero,y_const,y_saw,y_noise];
%plot(t,y)


