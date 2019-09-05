% Practical study of amplitude demodulation by linear diode detector
clc;
clear all;
am = 2; fm = 20;
ac = 5; fc = 400;
t = 0:0.001:1;
mt = am * sin(2 * pi * fm * t);
ct = ac * cos(2 * pi * fc * t);
st = (mt + ac).*cos(2 * pi * fc * t);
subplot(3 ,1 ,1);
plot(t, st, 'k');
final = st .*cos(2 * pi * fc * t);
subplot(3 , 1, 2);
plot(t, final, 'k');
fs = 10000;
y = modulate(mt, fc, fs, 'am');
x = demod(y, fc, fs, 'am');
subplot(3, 1, 3);
plot(t, x, 'k');