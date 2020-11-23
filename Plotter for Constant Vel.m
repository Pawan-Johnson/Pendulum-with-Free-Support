
t0 = [-2 2];
hold on

for i=-2.5:0.1:2.5
    [t,x] = ode45('simplecase',t0,[0 i]);
    plot(x(:,1),x(:,2))
    title('Phase Plot')
    xlabel('\theta')
    ylabel('$\dot{\theta}$','Interpreter','latex')
end
    
for i=-5:0.1:5
    [t,x] = ode45('simplecase',t0,[i 0]);
    plot(x(:,1),x(:,2))
    title('Phase Plot')
    xlabel('\theta')
    ylabel('$\dot{\theta}$','Interpreter','latex')
end

for i=-5:0.1:5
    [t,x] = ode45('simplecase',t0,[-i 2]);
    plot(x(:,1),x(:,2))
    title('Phase Plot')
    xlabel('\theta')
    ylabel('$\dot{\theta}$','Interpreter','latex')
end

for i=-5:0.1:5
    [t,x] = ode45('simplecase',t0,[2 -i]);
    plot(x(:,1),x(:,2))
    title('Phase Plot')
    xlabel('\theta')
    ylabel('$\dot{\theta}$','Interpreter','latex')
end