% Statická převodní charakteristika logaritmického zesilovače
vstupni = [[1 3 10 30 100 300]*1e-3 [1 3 10]];
vystupni = [1986 1515 995.9 521.6 1.57 -473 -992.9 -1468 -1988] / 1000;
ideal_vystupni = -log10(vstupni) - 1;

chyba = vystupni - ideal_vystupni;
rel_chyba = chyba / ideal_vystupni;

semilogx(vstupni, [vystupni; ideal_vystupni], 'linewidth',2);
legend({'Reálná převodní charakteristika', 'Ideální převodní charakteristika'})
xlabel('Vstupní napětí [V]');
ylabel('Výstupní napětí [V]')
grid on
title({'Porovnání reálné a převodní charakteristiky','logaritmického zesilovače s převodem -1V/dek'})

figure

semilogx(vstupni, chyba*1000, 'linewidth',2);
xlabel('Vstupní napětí [V]');
ylabel('Velikost chyby [mV]')
grid on
title({'Absolutni chyba logaritmického zesilovače','od ideální charakteristiky'})
