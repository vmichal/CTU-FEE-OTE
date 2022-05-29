%% Draw characteristic char-dvoucest-usmernovac.eps needed for subtask 2
data = readmatrix('dvoucestne-usmerneni.csv');
input = data(:, 1);
output = data(:, 2);
yyaxis left
plot(input, output, 'linewidth', 2);
grid on;
xlabel('Vstupní napětí [V]');
ylabel('Výstupní napětí [V]');

yyaxis right

plot(input, (abs(input) - output)*1000, 'linewidth', 2);
ylabel('Odchylka napětí [mV]');
legend('Převodní charakteristika','Odchylka charakteristiky', 'location', 'north')

%% Draw mereni-c.eps
C_set = (1:10) * 10; % in pF
U_2 = [280e-3 577e-3 850e-3 1.136 1.426 1.705 1.988 2.273 2.554 2.838 ];
C = U_2 * 1.11 / 2 / pi / 1e3 / 1e6 / 5 * 1e12;
yyaxis left
plot(C_set, U_2, 'linewidth', 2)
xlabel('Nastavená kapacita C_1 [pF]')
ylabel('Výstupní napětí U_2 [V]')
yyaxis right
plot(C_set, C_set - C, 'linewidth', 2)
ylabel('Odchylka vypočtené kapacity [pF]')

grid on;
legend('Výstupní napětí', 'Odchylka vypočtené kapacity', 'location', 'northwest')


%% Draw mereni-r.eps
R_set = (1:10); % in MOhm
U_2 = [4.582 2.254 1.506 1.159 886e-3 746e-3 640e-3 566e-3 485e-3 437e-3];
R = 5 * 1e6  / 1.11 ./ U_2 * 1e-6;
yyaxis left
plot(R_set, U_2, 'linewidth', 2)
xlabel('Nastavený odpor R_2 [M\Omega]')
ylabel('Výstupní napětí U_2 [V]')
yyaxis right
plot(R_set, R_set - R, 'linewidth', 2)
ylabel('Odchylka vypočteného odporu [M\Omega]')

grid on;
legend('Výstupní napětí', 'Odchylka vypočteného odporu', 'location', 'northeast')


