clc;
clear all;

array = [-3, -1, 1, 3];								%initializam un array avand elemente nivelurile la care ajunge graficul
numpulses=50;									%numarul de "pulse-uri"
    Pcell = cell(1,numpulses);							%Pcell returneaza un vector celula de matrici goale
    dt = .002;									%pasul lui t
    for i = 1:numpulses								%parcurgem fiecare puls
        T = 2   ; 								%Perioada							
        W = 0.25; 								%latimea pulse-ului
        t = 0:dt:T;								
       Pcell{i} = randsample(array,1)*(t<=W); 					%returneaza 1 vector celula de matrici goale(asimptota orizontala) 
										de lungime t<W pana la valoarea t=alpha*W unde 1<=alpha<=n , n natural
										iar functia randsample returneaza o valoare "1" aleatoare din vectorul "array"
    end										%sfarsit for
     pulse = [Pcell{:}];							%funtia ce afiseaza 1 vector celula de matrici goale pe axa 0X
     t = (0:length(pulse)-1)*dt;						%domeniul lui Pcell unde length(Pcell{:})=10010
     subplot(3,1,1)
     plot(t,pulse) ;								
     ylim([-4 4])
     xlim([0 40])
     xlabel('Timp')
     ylabel('Amplitudine')
     title('Semnal dreptunghiular multinivel,aleator [-3 -1 1 3]')
grid     

 array = [-5, -3, -1, 1, 3, 5];
 numpulses=50;
 Pcell = cell(1,numpulses);
    dt = .002;
    for i = 1:numpulses
        T = 2   ; %duration
        W = 0.25; %pulse width
        t = 0:dt:T;
       Pcell{i} = randsample(array,1)*(t<=W); 
    end
     pulse = [Pcell{:}];
     t = (0:length(pulse)-1)*dt;
     subplot(3,1,2)
     plot(t,pulse) ;
     ylim([-6 6])
     xlim([0 40])
     xlabel('Timp')
     ylabel('Amplitudine')
     title('Semnal dreptunghiular multinivel,aleator [-5 -3 -1 1 3 5]')
grid     

 array = [-7 -5, -3, -1, 1, 3, 5 7];
 numpulses=50;
 Pcell = cell(1,numpulses);
    dt = .002;
    for i = 1:numpulses
        T = 2   ; %duration
        W = 0.25; %pulse width
        t = 0:dt:T;
       Pcell{i} = randsample(array,1)*(t<=W); 
    end
     pulse = [Pcell{:}];
     t = (0:length(pulse)-1)*dt;
     subplot(3,1,3)
     plot(t,pulse) ;
     ylim([-8 8])
     xlim([0 40])
     xlabel('Timp')
     ylabel('Amplitudine')
     title('Semnal dreptunghiular multinivel,aleator [-7 -5 -3 -1 1 3 5 7]')
grid 