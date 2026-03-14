% Senaryo: "Sayı Filtreleme -  Analiz ve Grafik Yapma "
%1'den belirlenen limite kadar olan sayıları ele alalım.:Eğer sayı çift ise karesini al,Eğer sayı tek ise küpünü al,Bu sonuçları ekrana güzel bir 
% tablo olarak yazdır son olarak da grafiğini çizelim.

clear; clc; close all;
limit = input("Sayı değerleri kaça kadar olsun?: ");
sayilar = 1:limit;

tekler = nan(1, limit); 
ciftler = nan(1, limit); 


for i = 1:limit
    if mod(sayilar(i), 2) ~= 0
        tekler(i) = sayilar(i)^3;
        fprintf('Sayı: %2d (Tek) | Küpü: %6d\n', sayilar(i), tekler(i));       
    else
        ciftler(i) = sayilar(i).^2;
        fprintf('Sayı: %2d (Çift) | Karesi: %6d\n', sayilar(i), ciftler(i));
    end 
end 

figure;
plot(sayilar, tekler, 'r-o', 'MarkerSize', 8, 'DisplayName', 'Tekler (Küp)');
hold on; 
plot(sayilar, ciftler, 'b-s', 'MarkerSize', 8, 'DisplayName', 'Çiftler (Kare)');
hold off;

title(['1-' num2str(limit) ' Arası Sayı Analizi']);
xlabel(['Girdi Sayıları (1-' num2str(limit) ')']);
ylabel('Hesaplanan Sonuçlar');
legend('Location', 'northwest');
grid on;