%HW4-4
clc;
clear;
num = [8 25];
den = [1 8 25];
sys = tf (num,den);
[y,t] = step (sys,10);
figure(1);
plot(t,y)
title('第4題');
xlabel('Time (t)'); ylabel('y(t)');

%HW4-5
clear;
figure(2);
t=0:0.001:100;
u=sin(t);
num = [8 25];
den = [1 8 25];
sys = tf ( num, den );
y = lsim(sys,u,t);
plot(t,y)
title('第5題');
xlabel('Time (t)'); ylabel('y(t)');

%HW4-6
%a*y"(t)+b*y'(t)+y(t) = u(t)
clear
figure(3);

%y1 = y ; y2 = y'
%dy1 = y2; 
%dy2 = (b*y2+y1+u)/a
%u = step([1 1],70);
a = 1; b = 1;
num = [1];
den = [a b 1];
sys = tf ( num, den );
[y t] = step(sys,70);
plot(t,y,'+k')
hold on;


a = 10; b = 1;
num = [1];
den = [a b 1];
sys = tf ( num, den );
[y t] = step(sys,70);
plot(t,y,'*k')
hold on;


a = 20; b = 2;
num = [1];
den = [a b 1];
sys = tf ( num, den );
[y t] = step(sys,70);
plot(t,y,'.k')

a = 1; b = 10;
num = [1];
den = [a b 1];
sys = tf ( num, den );
[y t] = step(sys,70);
plot(t,y,'^k')
hold on;

a = 1; b = 20;
num = [1];
den = [a b 1];
sys = tf ( num, den );
[y t] = step(sys,70);
plot(t,y,'--k')

title('第6題');
xlabel('Time (t)'); ylabel('y(t)');
legend('a=1,b=1','a=10,b=1','a=20,b=1','a=1,b=10','a=1,b=20');