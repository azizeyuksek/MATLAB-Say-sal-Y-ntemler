% ikinci dereceden x^2 -5000.001x + 5=0 denkleminin köklerini bulma analizi

format short % short formatı, sayıları virgülden sonra 4 basamak olacak şekilde yuvarlayarak gösterir
a=1 ; b=-5000.001 ;c=5;
delta=b^2-(4*a*c);
kok1=(-b+sqrt(delta))/(2*a) % sqrt() fonksiyonu "square root" yani karekök demektir
kok2=(-b-sqrt(delta))/(2*a)