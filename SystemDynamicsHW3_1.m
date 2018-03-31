clear;
clc;
%²Ä¤@ÃD
% (a)
A = 1;
w = 2*pi;
t = 0:0.5:12;
y = A*sin(w*t);
figure(1);
plot(t,y);

% (b)
t = 0:0.2:12;
figure(2);
y = A*sin(w*t);
plot(t,y);

% (c)
t = 0:0.1:12;
figure(3);
y = A*sin(w*t);
plot(t,y);

% (d)
t = 0:0.01:12;
figure(4);
y = A*sin(w*t);
plot(t,y);

% (e)
t = 0:0.002:12;
figure(5);
y = A*sin(w*t);
plot(t,y);
