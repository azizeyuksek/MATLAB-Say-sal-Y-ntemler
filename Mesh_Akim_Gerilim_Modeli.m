% Mesh (kapalı göz) için Akım ve Gerilim Modelleri
% Seri RLC : KVL + durum uzayi simülasyonu 
clear;clc; close all;
R=10;
L=50e-3;
C=100e-6;

vs=@(t) 5*(t>=0); % 5V step kaynak

odefun=@(t,z)[
    (1/L)*(vs(t) - R*z(1) - z(2));
    (1/L)*z(1)
];

tspan=[0 0.2];
z0= [0;0];

[t,z] = ode45(odefun, tspan , z0);
i = z(:,1);
vC=z(:,2);

vR=R*i;
vL=[0; L*diff(i)./diff(t)];

figure; plot(t, i, 'LineWidth',1.5); grid on;
xlabel('t (s)'); ylabel('i (A) '); title('Akım i(t) ');

figure; plot(t, [vR vL vC] , 'LineWidth',1.5); grid on;
xlabel('t (s)'); ylabel('Gerilim(V)');
legend('v_R','v_L','v_C'); 
title('Eleman gerilimleri');
