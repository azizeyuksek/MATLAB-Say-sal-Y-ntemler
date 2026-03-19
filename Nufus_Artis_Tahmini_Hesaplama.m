% nüfus artış oranı tahmini hesaplama 

P2024=8.1e9; %8.1 milyar
r_gun= 0.00024;
r_yil=(1+r_gun)^365-1;

t_fark=2050-2024;
P2050=P2024*(1+r_yil)^t_fark;

fprintf("2050 yılının tahmini nüfusu:%.2f Milyar\n",P2050/1e9);