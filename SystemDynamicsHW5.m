%HW5-5
clc;
clear;
num = [20000];
den = [1 200.01 2];
sys = tf (num,den);
[y,t] = step (sys,900);
figure(1);
plot(t,y)
title('Q5');
xlabel('Time (t)'); ylabel('y(t)');

%HW5-6
clear;
figure(2);
t=0:0.001:500;
u=sin(t);
num = [20000];
den = [1 200.01 2];
sys = tf ( num, den );
y = lsim(sys,u,t);
plot(t,y)
title('Q6');
xlabel('Time (t)'); ylabel('y(t)');
