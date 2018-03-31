clc;
clear;
%第一題
figure(1)
t = 0:0.01:4*pi;
tc = 1;
for i =1:1:4
    y = exp(-t/tc);
    plot(t, y); hold on;
    tc = tc + 1;
end
xlabel('t'); 
ylabel('y'); 
title('y = exp(-t/tc)');
legend('time constant=1','time constant=2','time constant=3','time constant=4');

%第二題
clear;
figure(2)
t = 0:0.01:4*pi;
tc = 1;
for i =1:1:4
    y = (t/tc).*exp(-t/tc);
    plot(t, y); hold on;
    tc = tc + 1;
end
xlabel('t'); 
ylabel('y'); 
title('y = (t/tc).*exp(-t/tc)');
legend('time constant=1','time constant=2','time constant=3','time constant=4');

%第三題
clear;
figure(3)
t = 0:0.01:5*pi;
A = 1;
B = 1;
for i = 1:1:4
    y = A*exp(-t/2) + B*exp(-t/10);
    plot(t, y); hold on;
    A = A + 1;
    B = B + 1;
end
xlabel('t');
ylabel('y');
title('y = A*exp(-t/2) + B*exp(-t/10);');
legend('A=1 B=1','A=2 B=2','A=3 B=3','A=4 B=4');

%第四題
clear;
figure(4)
t = 0:0.01:5*pi;
tc = 1;
A = 1;
phi = 0/180*2*pi;
w = 1;
for i = 1:1:2
    y = A.*exp(-t/tc).*sin(w.*t+phi);
    plot(t, y); hold on;
    tc = tc + 1;
end
tc = 1;
phi = 45/180*2*pi;
for i = 1:1:2
    y = A.*exp(-t/tc).*sin(w.*t+phi);
    plot(t, y); hold on;
    tc = tc + 1;
end
tc = 1;
phi = 90/180*2*pi;
for i = 1:1:2
    y = A.*exp(-t/tc).*sin(w.*t+phi);
    plot(t, y); hold on;
    tc = tc + 1;
end
xlabel('t');
ylabel('y');
title('y = A.*exp(-t/tc).*sin(w.*t+phi);');
legend('phi=0 tc=1','phi=0 tc=2','phi=45 tc=1','phi=45 tc=2','phi=90 tc=1','phi=90 tc=2');

%第五題
clear;
figure(5)
A = 1;
t1 = 1;
t2 = 3;
t = 0:0.01:pi;
tc = 3;
y = A*exp(-t/tc);


semilogy(t,y);

tc=(t2-t1)/( log( A*exp(-t2/tc) )-log(A*exp(-t1/tc) ) )




