
%2. Torricelli Yasası - Boşalan Tank 
%Tanktaki su derinliğinin zamana bağlı değişimini $\frac{dy}{dt} =-h\sqrt{y}$ diferansiyel denklemi ile modellenir.


syms y(t) h
ode = diff(y, t) == -h * sqrt(y); 
y_sol = dsolve(ode, y(0) == 10);

fprintf('Torricelli Yasası Sembolik Çözümü:\n');
disp(y_sol);


h_val = 0.2;
y0 = 10;
[t, y_num] = ode45(@(t, y) -h_val * sqrt(y), [0 20], y0);

figure;
plot(t, y_num, 'r', 'LineWidth', 2);
grid on;
title('Torricelli Yasası - Tankın Boşalması');
xlabel('Zaman (sn)');
ylabel('Su Derinliği (y)');
