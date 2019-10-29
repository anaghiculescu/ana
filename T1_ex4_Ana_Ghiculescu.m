clc;
close all;

T=3;                                 % Perioada
t = 0:0.002:10;                      % Domeniul timp           
x=0.8*sin(2*pi*0.33*t);              % Generare semnal sin  
x(x<0) = 0;                          % Semnalul redresat
subplot(3,1,1)
plot(t,x);
axis([0 10 -1  1])
xlabel('Timp')
ylabel('Amplitudine')
title('Sinus monoalternanta 2ms')
grid

t = 0:0.02:10;                      % Domeniul timp           
x=0.8*sin(2*pi*0.33*t);              % Generare semnal sin  
x(x<0) = 0;                          % Semnalul redresat
subplot(3,1,2)
plot(t,x);
axis([0 10 -1  1])
xlabel('Timp')
ylabel('Amplitudine')
title('Sinus monoalternanta 20ms')
grid

t = 0:0.2:10;                        % Domeniul timp           
x=0.8*sin(2*pi*0.33*t);              % Generare semnal sin  
x(x<0) = 0;                          % Semnalul redresat
subplot(3,1,3)
plot(t,x);
axis([0 10 -1  1])
xlabel('Timp')
ylabel('Amplitudine')
title('Sinus monoalternanta 200ms')
grid