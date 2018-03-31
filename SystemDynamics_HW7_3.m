%HW7-3
clc;
clear;
ts = 0.1;
num = [1];
den = [ts 1];
t = [0:0.01:10];
sys = tf (num,den);
y1= step (sys,t);
figure(1);
plot(t,y1.^2)
title('ts=0.1');
xlabel('Time (t)'); ylabel('Moments');

ts = 0.08;
num = [1];
den = [ts 1];
t = [0:0.01:10];
sys = tf (num,den);
y2= step (sys,t);
figure(2);
plot(t,y2.^2)
title('ts=0.08');
xlabel('Time (t)'); ylabel('Moments');

ts = 0.05;
num = [1];
den = [ts 1];
t = [0:0.01:10];
sys = tf (num,den);
y3= step (sys,t);
figure(3);
plot(t,y3.^2)
title('ts=0.05');
xlabel('Time (t)'); ylabel('Moments');

ts = 1.2;
num = [1];
den = [ts 1];
t = [0:0.01:10];
sys = tf (num,den);
y4= step (sys,t);
figure(4);
plot(t,y4.^2)
title('ts=1.2');
xlabel('Time (t)'); ylabel('Moments');

yall=sqrt( abs( y1.^2-y3.^2 )+abs ( y4.^2-y2.^2 ).^2 );
figure(5);
plot(t,yall)
title('Total Moments');
xlabel('Time (t)'); ylabel('Moments');