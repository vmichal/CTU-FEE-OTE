%% No noise, vary Rx
Rx = 1:10; % in Mohms
U_out_100p = [47, 17, 11, 5.6, 3, 0.5, -1.2, -1.8, -2.2, -2.5]; % in mV
U_out_300p = [1055, 1041, 1030, 1023, 1021,1021,1020,1020,1019,1019]; % in mV

plot(Rx, [U_out_100p - (-2.5); U_out_300p - 1019]);
xlabel('R_x [M\Omega]');
ylabel('Odchylka od výstupu pro R_x = 10 M\Omega [mV]');
grid on;
legend('Pro C_x = 100 pF', 'Pro C_x = 300 pF')


%% No noise, vary Cx
Cx = [20 25 30 35 40 45 50 55 60] / 100 * 500; % values in percent of 500pF
U_out = [-2.5, 124.8, 253.7, 378, 507, 635, 766, 897, 1021]; % in mV
U_ideal = (Cx - 100)/200*1000;
U_error = U_ideal - U_out;

yyaxis left
plot(Cx, U_out);
xlabel('C_x [pF]');
ylabel('DC složka výstupního napětí [mV]');
yyaxis right
plot(Cx, U_error);
ylabel('Odchylka od ideální charakteristiky [mV]');
grid on;
legend('Změřená charakteristika', 'Odchylka od ideálu')
variance = var(U_error), deviation = std(U_error)

%% Noise, vary Cx
Cx = [20 25 30 35 40 45 50 55 60] / 100 * 500; % values in percent of 500pF
U_out_shifted = [104,235,370,507, 640, 777, 908, 1041, 1176]; % in mV
U_error = U_out_shifted - U_out;

yyaxis left
plot(Cx, U_out_shifted);
xlabel('C_x [pF]');
ylabel('DC složka výstupního napětí [mV]');
yyaxis right
plot(Cx, U_error);
ylabel('Odchylka od hodnot bez přítomného šumu [mV]');
grid on;
legend('Změřená charakteristika', 'Odchylka od bezšumové charakteristiky', 'location', 'northwest')
variance = var(U_error), deviation = std(U_error)



