clc;
clear all;

T=2;							%Perioa8tda
t = 0:0.002:5*T;					%Timpul pas_initial=0 pas_final=5*T pas=0.002(rezolutia temporara)
x = -0.25+0.75*square(2*pi*0.5*t,25);			%functia(semnalul) in functie de t in care -0.25 este componenta continua , 0.75 amplitudinea , iar 2*pi*0.5*t este w0*t iar 25 este factorul de umplere
dutycycle(x,t)						%legatura intre timpului in functie de factorul de umplere
subplot(3,1,1)						%impartirea ferestrei output in 3 linii si o coloana , cu respectivul grafic ca prim obiect
plot(t,x);						%afisarea graficului	
xlabel('Timp')						%denumirea axei 0X
ylabel('Amplitudine')					%denumirea axei 0Y
title('Semnal Dreptunghiular 2ms')			%titlul graficului
axis([0 10 -1 0.5])					%limitele axelor axia([limita_stanga_0X limita_dreapta_0Y limita_de_jos_0Y limita_de_sus_0Y])
grid							%formatarea graficului 


t = 0:0.02:5*T;
x = -0.25+0.75*square(2*pi*0.5*t,25);
subplot(3,1,2)
plot(t,x);
xlabel('Timp')
ylabel('Amplitudine')
title('Semnal Dreptunghiular 20ms')
axis([0 10 -1 0.5])
grid

t = 0:0.2:5*T;
x = -0.25+0.75*square(2*pi*0.5*t,25);
subplot(3,1,3)
plot(t,x);
xlabel('Timp')
ylabel('Amplitudine')
title('Semnal Dreptunghiular 200ms')
axis([0 10 -1 0.5])
grid

