
f = [4,8,16,32,64,128];
e = [2.559 1.338 0.681 0.241 0.107 0.052];

semilogx(f, e);
xlabel('Vzorkovac√≠ frekvence [kHz]');
ylabel('Efektivn√≠ hodnota chyby [V]');
xticks(f)
%yticks(e(end:-1:1))
grid on