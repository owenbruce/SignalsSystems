% t = linspace(0,100*pi, 10000);
% omega = 0.1;
% A = 50;
% Tshift = 50;
% x = A*exp(j*omega*t);
% 
% y = A*exp(j*omega*(t-Tshift));
% 
% plot(t,real(x),t,real(y))

t = linspace(-10,10,1001);

impulse = (t==0)*10000;

step = heaviside(-2*t+6);

ramp 

plot(t,rfxn)