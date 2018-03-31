clear;
clc;
%²Ä¤GÃD
% (a)
w1 = 2*pi;
w2 = 3.5*pi;
t = 0:0.5:12;
y = sin(w1*t) + cos(w2*t);
figure(1);
plot(t,y);

% (b)
t = 0:0.2:12;
figure(2);
y = sin(w1*t) + cos(w2*t);
plot(t,y);

% (c)
t = 0:0.1:12;
figure(3);
y = sin(w1*t) + cos(w2*t);
plot(t,y);

% (d)
t = 0:0.01:12;
figure(4);
y = sin(w1*t) + cos(w2*t);
plot(t,y);

% (e)
t = 0:0.002:12;
figure(5);
y = sin(w1*t) + cos(w2*t);
plot(t,y);
