v=[1+3i, 3+21i, 4+10i, 15+7i, 9+2i]     %declararea vectorului cu elemente complexe;

mean(real(v))				%media aritmetica a partilor reale a elementelor vectorului;

for i=1:5
   v(i) * v(i)                          %ridicarea la patrat a elementelor
end

v(:) .* v				%inmultirea vectorului cu transpusul

