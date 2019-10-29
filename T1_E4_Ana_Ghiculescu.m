z=[0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0]  %declararea vectorilor z,n,m;
n=0:20						
m=-5:15

subplot(2,1,2), stem(z,n);			%graficul lui z in functie de n;	
subplot(2,1,1),stem(z,m);			%graficul lui z in functie de m;

t=abs(10-n)					
plot(t,n)					%graficul lui t in functie de n;



a=-15:25					%declararea vectorului x1;
for i=1:41
x1=sin(pi*a(i)/17)
end


b=0:50						%declararea vectorului x2;
for i=1:51
x2=cos(pi*b(i)/sqrt(23))
end

plot(x1,x2)					%graficul lui x1 in functie de x2;