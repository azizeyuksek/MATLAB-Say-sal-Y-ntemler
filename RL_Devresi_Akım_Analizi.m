% 3. RL Devresi - Kirchoff Kanunu Devredeki akımın zamana bağlı değişimini $\frac{dI}{dt} + 2I = 25$ denklemi üzerinden hesaplar.


% Diferansiyel Denklem: dI/dt + 2I = 25, I(0) = 0 [cite: 99, 100]
t_sim = 0:0.01:5;
% Analitik çözüm: I(t) = 12.5 * (1 - e^(-2t))
I = 12.5 * (1 - exp(-2 * t_sim));

figure;
plot(t_sim, I, 'b', 'LineWidth', 2);
grid on;
title('RL Devresi Akım Değişimi');
xlabel('Zaman (sn)');
ylabel('Akım (Amper)');
legend('I(t)');





