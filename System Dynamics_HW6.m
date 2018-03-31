%HW6
clc;
clear;
m = 5;% door's weight
b = 1;% damper constant
k = 1;% spring constant
t=0:0.001:200;
u=square(t/30,50)+1; % 方波代表施力後放開
num = [1];
den = [m b k];
sys = tf ( num, den );
y = lsim(sys,u,t);
figure(1);
plot(t,u)
figure(2);
plot(t,y)
title('Swing door closer');
xlabel('Time (t)'); ylabel('y(t)');

