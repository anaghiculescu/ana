clc;
clear all;

T = 4;                                  %Perioada
t = 0:0.002:T;                          %Domeniu timp
y = abs(1.5 * sin(2*pi*0.25*t));        %Generare sin redresat cu ajutorul valorii absolute
subplot(3,1,1)
plot(t,y)
axis([0 10 -0.25 3])
xlabel('Timp')
ylabel('Amplitudine')
title('Sinus dubla-alternanta 2ms')
grid

t = 0:0.02:T;
y = abs(1.5 * sin(2*pi*0.25*t));
subplot(3,1,2)
plot(t,y)
axis([0 10 -0.25 3])
xlabel('Timp')
ylabel('Amplitudine')
title('Sinus dubla-alternanta 20ms')
grid

t = 0:0.2:T;
y = abs(1.5 * sin(2*pi*0.25*t));
subplot(3,1,3)
plot(t,y)
axis([0 10 -0.25 3])
xlabel('Timp')
ylabel('Amplitudine')
title('Sinus dubla-alternanta 200ms')
grid