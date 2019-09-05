%Generation of DSB-SC AM signal using balanced modulator.
clc;
clear all;
am = 2; fm = 20;
ac = 5; fc = 400;
t = 0:0.001:1;

mt = am * cos(2 * pi * fm * t);
subplot(5, 1, 1);
plot(t, mt, 'k');
title('Message Signal'); ylabel('x(t)'); xlabel('Time (sec)')

ct = ac * cos(2 * pi * fc * t);
subplot(5, 1, 2);
plot(t, ct, 'k');
title('Carrier Signal'); ylabel('x(t)'); xlabel('Time')

st = (ac + mt) .*cos(2 * pi * fc * t);
subplot(5, 1, 3);
plot(t, st, 'k');
title('AM Wave Signal (Under-Modulated)'); ylabel('Amplitude') ;xlabel('Time')

st_dsb = (mt) .*cos(2 * pi * fc * t);
subplot(5, 1, 4);
plot(t, st_dsb, 'k');
title('DSB Wave'); ylabel('s(t)'); xlabel('Time')

b1 = mt .*ct;
b2 = -mt.*ct;
kt = b1 - b2;
subplot(5, 1, 5);
plot(t, kt, 'k');
title('DSB-SC Wave'); ylabel('s(t)'); xlabel('Time')