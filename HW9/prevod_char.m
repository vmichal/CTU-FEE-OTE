% Vykreslí převodní charakteristiku Sigma-Delta modulátoru

% Voltages
x = [-9.5 -7.5 -5 -2.5 0 2.5 5 7.5 9.5];
y = [2.54 12.37 24.85 37.61 50.19 62.4 75.18 87.6 97.52];
y_ideal = x/10*50 + 50;

plot(x, y_ideal - y, 'linewidth', 2);
xlabel('Vstupní napětí U_{in} [V]');
ylabel('Absolutní chyba střídy [%]');
grid on
