% 4. Serbest Düşüş Problemi (Örnek 1.4)


% Parametreler
g = 980; % Yerçekimi ivmesi (cm/s^2) 
t_final = 4; % 4. saniye 

% Konum denklemi: x = 0.5 * g * t^2 
t_range = 0:0.1:t_final;
x = 0.5 * g * t_range.^2;

% 4. saniyedeki konumu hesapla
x_4s = 0.5 * g * t_final^2; 

fprintf('4. saniyede kütlenin konumu: %.0f cm\n', x_4s);

% Grafik
figure;
subplot(2,1,1);
plot(t_range, g * t_range, 'g'); % Hız grafiği v=gt 
title('Hız - Zaman'); xlabel('t (s)'); ylabel('v (cm/s)');

subplot(2,1,2);
plot(t_range, x, 'm'); % Konum grafiği
title('Konum - Zaman'); xlabel('t (s)'); ylabel('x (cm)');

