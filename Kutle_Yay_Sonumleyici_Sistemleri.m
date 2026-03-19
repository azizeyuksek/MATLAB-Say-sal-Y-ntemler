% Kütle-Yay-Sönümleyici Sistemleri
% Sayısal çözüm için ikinci dereceden bu denklem iki adet 1.dereceden denkleme dönüşür.
% Serbestlik derecesine göre diferansiyel denklemler türetilir.

m=1;c=0.5;k=10; % Kodu çalıştırınca grafikte salınımların her seferinde biraz daha küçüldüğünü göreceksiniz. Bunun sebebi tanımladığımız c = 0.5 değeridir. Eğer c = 0 olsaydı, bu salınım sonsuza kadar aynı şiddette devam ederdi.
f_sys=@(t,x)[x(2);(0-c*x(2)-k*x(1))/m];
[t,res]=ode45(f_sys,[0,10],[1;0]); %x(0) =1,v(0)=0 , ode45 sonuçları bir matris olarak döndürür:

plot(t,res(:,1));
title('Sönümlü Titreşim Yanıtı');
hold on; 
plot(t, res(:,2), 'r--'); 
legend('Konum', 'Hız');