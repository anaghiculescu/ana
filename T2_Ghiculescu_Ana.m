
D=8;   %semanal triunghiular de durata D=8
T=40; %perioada semnalului
f=1/T; %frecventa semnalului
w=2*pi*f; %pulsatia semnalului
rezolutia=0.0001; % rezolutie temporara de 0.1 ms
t=0:rezolutia:2*T;% t porneste de la  0,cu pasul de 0.0001, afisand 2 perioade 
N=50; %numarul de coeficienti
x=(sawtooth(w*t,0.5)+abs(sawtooth(w*t,0.5)))/2;
 %semnal triunghiular redresat monoalternanta de perioada T=40s
C = zeros(1,2*N+1);
%initializam vectorul de coeficienti cu valori nule
for n = -N:N
    C(n+N+1) = 1/T * integral(@(t)(1/2*sawtooth(w*t,0.5)+1/2*abs(sawtooth(w*t,0.5))).*exp(-1j*n*w*t),0,T) ;
    %calculul coeficientiilor 
end
%calculul seriei reconstruite cu numar finit de coeficienti
x_r = 0;
for n = -N:N
    x_r = x_r + C(n+N+1)*exp(1j*n*w*t) ;
end
figure(1);
hold on
plot(t,x);%reprezentarea semnalului initial
plot(t,real(x_r),':r',t,imag(x_r),':r');%reprezentarea semnalului reconstruit
%:r inseamna linie punctata cu rosu
axis([-1 150 -0.1 1.1])
xlabel('Timp[s]');
ylabel('x(t)-linie continua si x_r(t)-linie punctata cu rosu');
title('Suprapunerea semnalelor x(t) si x_r(t)')
hold off
%prin hold on/off se pot reprezenta mai multe grafice in acelasi sistem
figure(2);
hold on
stem((-N:N)*w,2*abs(C));
%stem-fucntie pt reprezentarea valorilor discrete
plot((-N:N)*w,2*abs(C),':r')
xlabel('Pulsatia[rad/s]');
ylabel('Amplitudinile');
axis([-5 5 -0.05 0.55])
title('Spectrul de Amplitudini');
hold off
%conform SF (SFT, SFA si SFC) orice
%semnal periodic poate fi aproximat printr-o suma infinita de sinusuri
%si cosinusuri de diferite frecvente 
%acesti coeficienti reprezinta practic spectrul 
%semnalul reconstruit are aceeasi forma ca
%semnalul original, cu mici diferente de rigoare. Cu cat creste
%numarul  coeficientilor SF, diferenta va fi din ce in ce mai
%mica. 