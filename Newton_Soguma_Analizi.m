        % Newton'un Soğuma Yasası - Karşılaştırmalı Analiz Scripti

clear; clc;

Tm = 70;    
T0 = 180;   
t = 0:1:60;


k_degerleri = [0.02, 0.05, 0.1]; 

figure;
hold on; 
grid on;


for k = k_degerleri
    T = Tm + (T0 - Tm) * exp(-k * t);
    
    plot(t, T, 'LineWidth', 2, 'DisplayName', ['k = ', num2str(k)]);
end

title('Newtonun Soğuma Yasası: Farklı k Katsayılarının Etkisi');
xlabel('Zaman (Dakika)');
ylabel('Sıcaklık (F)');
legend('show'); 
ax = gca;
ax.FontSize = 12;

yline(120, '--r', 'İçme Sıcaklığı (120F)', 'LineWidth', 1.5);

hold off;
