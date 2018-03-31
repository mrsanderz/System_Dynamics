clear
%a*y'(t) + y(t) = 3*u(t)
%第一題
figure(1);
a = 10;
u = 1;
y0 = 0;
dy = @(t,y) (3*u-y) / a;% define 
[t,y] = ode45(dy,[0 60],y0);
plot(t,y);
title('第一題');
xlabel('Time (t)'); ylabel('y(t)');

clear
%第二題
figure(2);
a = 10;
u = 0;
y0 = 5;
dy = @(t,y) (3*u-y) / a;% define 
[t,y] = ode45(dy,[0 60],y0);
plot(t,y);
title('第二題');
xlabel('Time (t)'); ylabel('y(t)');

clear
%第三題
figure(3);
am = [1 5 10];
u = 1;
y0 = 0;
for i=1:1:3
    a = am(i);
    dy = @(t,y) (3*u-y) / a;% define 
    [t,y] = ode45(dy,[0 60],y0);
    plot(t,y);
    hold on;
    title('第三題');
    xlabel('Time (t)'); ylabel('y(t)');
    legend('a=1','a=5','a=10');
end

clear
%第四題
figure(4);
a = 10;
um = [1 3 5];
y0 = 0;
for i=1:1:3
    u = um(i);
    dy = @(t,y) (3*u-y) / a;% define 
    [t,y] = ode45(dy,[0 60],y0);
    plot(t,y);
    hold on;
    title('第四題');
    xlabel('Time (t)'); ylabel('y(t)');
    legend('u(t)=1','u(t)=3','u(t)=5');
end

clear
%第六題
figure(5);
a = 10;
y0 = 10;
u = 0;
dy = @(t,y) (3*u-y) / a;% define 
[t,y] = ode45(dy,[0 60],y0);
plot(t,y);
hold on;
title('第六題');
xlabel('Time (t)'); ylabel('y(t)');
legend('u(t)=1','u(t)=3','u(t)=5');
