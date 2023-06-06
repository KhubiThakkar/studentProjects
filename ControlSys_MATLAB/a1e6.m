clear 
close 
clc
ampl = 5;
t = 0:0.1:10;
gain = 1.5;
freq = 0.1;
y = ampl*gain*sin(2*pi*freq*t);
plot(t,y)
grid on