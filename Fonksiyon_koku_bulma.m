% fonksiyon kökü bulma yöntemleri 

f=@(x)x^2-2; % kökü bulunacak fonksiyon 
df=@(x)2*x; % fonksiyonun türevi
x0=1.5; 

for i=1.5;
    x0=x0 -f(x0)/df(x0);
    fprintf('iterasyon % d: x =%.5f\n,',i ,x0);
end