close all
% Statická převodní charakteristika logaritmického zesilovače
vstupni = [-2000 -1500 -1000 -500 0 500 1000 1500 2000];
vystupni = [[10.292 3.234 1.016], [319.4 100.4 31.54 9.911 3.114 0.978]*1e-3];
ideal_vystupni = 10.^-(vstupni / 1000 + 1);

chyba = vystupni - ideal_vystupni;
rel_chyba = chyba ./ ideal_vystupni;

semilogy(vstupni, [vystupni; ideal_vystupni], 'linewidth',2);
legend({'Reálná převodní charakteristika', 'Ideální převodní charakteristika'})
xlabel('Vstupní napětí [mV]');
ylabel('Výstupní napětí [V]')
grid on
title({'Porovnání reálné a převodní charakteristiky','exponenciálního zesilovače s převodem -1dek/V'})

figure

plot(vstupni, rel_chyba * 100, 'linewidth',2);
xlabel('Vstupní napětí [mV]');
ylabel('Velikost relativní chyby [%]')
grid on
title({'Relativní chyba exponenciálního zesilovače','od ideální charakteristiky'})
