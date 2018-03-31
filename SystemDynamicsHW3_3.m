clear;
clc;
%²Ä¤TÃD
% (a)
t = 0:0.5:12;
figure(1);
y = square(2*pi*t,50);
plot(t,y);

% (b)
t = 0:0.2:12;
figure(2);
y = square(2*pi*t,50);
plot(t,y);

% (c)
t = 0:0.1:12;
figure(3);
y = square(2*pi*t,50);
plot(t,y);

% (d)
t = 0:0.01:12;
figure(4);
y = square(2*pi*t,50);
plot(t,y);

% (e)
t = 0:0.002:12;
figure(5);
y = square(2*pi*t,50);
plot(t,y);
