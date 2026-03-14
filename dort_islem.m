
a=input("bir a değeri giriniz:");
b=input("bir b değeri giriniz:");

toplam=a+b ;
fark=a-b;
bolum=a/b;
carpim=a*b;

fprintf("****Dört İşlem Hesaplama ****");
fprintf("toplam sonucu:%.2f\n",toplam);
fprintf("fark sonucu:%.2f\n",fark);
fprintf("bölüm sonucu:%.2f\n",bolum);
fprintf("çarpım sonucu:%.2f\n",carpim);

if a < 0
    fprintf(" a sayısı negatiftir ! karekökü karmaşık sayı olur , lütfen pozitif sayı giriniz:");
    kokAlma=NaN;

else 
    fprintf("a sayısı pozitiftir.Kök sonucu:%.2f",sqrt(a));
    kokAlma=sqrt(a);

end 

if b < 0
    fprintf(" b sayısı negatiftir ! karekökü karmaşık sayı olur , lütfen pozitif sayı giriniz:");
    kokAlma1=NaN;

else
    fprintf(" b sayısı pozitiftir.Kök sonucu:%.2f",sqrt(b));
    kokAlma1=sqrt(b);

end 

fprintf("a sayısının küp kök sonucu:%.2f\n",nthroot(a,3));
fprintf("b sayısının küp kök sonucu:%.2f\n",nthroot(b,3));


sonuclar=[toplam, fark ,bolum,carpim,kokAlma,kokAlma1,kupkokAlma,kupkokAlma1];
disp('sonuc vektoru:');
disp(sonuclar);