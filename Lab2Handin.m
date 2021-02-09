clear;

t = 0:0.001:5;

x = heaviside(t) - heaviside(t-2.5);

bcritical = 15491.9;
bunder = 7746.0;
bover = 30983.9;
m = 300;
k = 2*10^5;

Acritical = [-bcritical/m -k/m; 1 0];
Aunder = [-bunder/m -k/m; 1 0];
Aover = [-bover/m -k/m; 1 0];
B = [k/m; 0];
C = [1 0; 0 1];
D = 0;

SYScritical = ss(Acritical,B,C,D);
SYSunder = ss(Aunder,B,C,D);
SYSover = ss(Aover,B,C,D);

lsim(SYScritical,SYSunder,SYSover,x,t)