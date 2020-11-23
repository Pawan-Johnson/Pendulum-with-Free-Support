function xdot = simplecase(t,x)
xdot(1) = x(2);
A = 4;
xdot(2) = -1*A*sin(x(1));
xdot = xdot';
