function [ydot] = freesupport(t,y)

ydot = zeros(4,1);
m = 0.10;
M = 0.1;
l = 1;
g = 9.81;

mu = m/(m + M);
A = cos(y(1))/l;
B = -g*sin( y(1))/l;
C = l*mu*sin(y(1))*y(2)*y(2);
D = -l*mu*cos(y(1));

ydot(1) = y(2);
ydot(3) = y(4);
ydot(2) = (A*C+B)/(1-A*D);
ydot(4) = (C+B*D)/(1-A*D);

end