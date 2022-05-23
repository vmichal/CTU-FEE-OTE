ideal = [0.706 1.413 2.12 2.827 3.534 4.24 4.947 5.654 6.361 7.067];
realne = [0.705 1.410 2.117 2.824 3.529 4.235 4.941 5.644 6.351 7.057];

chyba = realne - ideal;
rel_chyba = chyba / ideal;

plot(chyba * 1000, 'linewidth', 2);
legend(['Chyba dvoucestného operačního usměrňovače'], 'location', 'northeast');
title('Odchylka reálné převodní charakteristiky od ideální');
xlabel('Amplituda vstupu [V]')
ylabel('Absolutní chyba výstupu [mV]');
ylim([-15 5])
