% sabit doğum ve ölüm oranlı nüfus modeli

P0=1000; % naşlangıç nüfüsü 
r=0.02; %net artış oranı
t=0:1:50; %belirlenen zaman dilimi

P=P0*exp(r*t);  % Üstel (Eksponansiyel) Büyüme Formülü: Matematiksel karşılığı $P(t) = P_0 \cdot e^{rt}$ şeklindedir.

plot(t,P,'LineWidth',2);
grid on;
title('Nüfus Artış Modeli');
xlabel('Zaman(yıl)');
ylabel('Nüfus');