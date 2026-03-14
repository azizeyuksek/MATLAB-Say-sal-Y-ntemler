% Senaryo: 1'den 10'a kadar olan sayıları bir vektöre atayacağız. Sonra bu sayıların hepsinin karesini tek bir komutla
%  hesaplayıp ekrana yazdıracağız.

sayilar=1:10;  
kareler=sayilar.^2;

fprintf("***sayı | karesi ****");

for i=1:length(sayilar)
    fprintf( '%2d | %3d ',sayilar(i),kareler(i));
  
end
plot(sayilar,kareler, 'b-o'); 
title('sayılarin kareleri grafiği'); 
xlabel('sayilar'); 
ylabel('kareleri'); 
grid on; 