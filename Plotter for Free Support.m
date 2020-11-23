close all
clear

for i=-1:0.1:1
tspan = [-10 10];
theta = 0;
dtheta = 0;

x = 0;
dx = i;
y0 = [theta dtheta x dx];
[t,y] = ode45('freesupport',tspan,y0);

figure(1)
set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin')
hold on
grid on
plot(t,y(:,1))
xlabel('t')
ylabel('\theta')
saveas(gcf,'F1.png')

figure(2)
set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin')
hold on
grid on
plot(t,y(:,2))
xlabel('t')
ylabel('$\dot{\theta}$','Interpreter','latex')
saveas(gcf,'F2.png')

figure(3)
set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin')
hold on
grid on
plot(t,y(:,3))
xlabel('t')
ylabel('x','Interpreter','latex')
saveas(gcf,'F3.png')

figure(4)
set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin')
hold on
grid on
plot(t,y(:,4))
xlabel('t')
ylabel('$\dot{x}$','Interpreter','latex')
saveas(gcf,'F4.png')

figure(5)
set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin')
hold on
grid on
plot(y(:,1),y(:,2));
xlabel('${\theta}$','Interpreter','latex')
ylabel('$\dot{\theta}$','Interpreter','latex')
saveas(gcf,'F5.png')

figure(6)
set(gca, 'XAxisLocation', 'origin', 'YAxisLocation', 'origin')
hold on
grid on
plot(y(:,3),y(:,4));
xlabel('$x$','Interpreter','latex')
ylabel('$\dot{x}$','Interpreter','latex')
saveas(gcf,'F6.png')
end