clear
close
clc
k=1;
s=tf('s')
g=10*k/(s*(s+5));
mag=abs(g);
semilogx(g)