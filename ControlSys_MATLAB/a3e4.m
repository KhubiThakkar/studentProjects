clc
clear
close
s=tf('s')
for z=0.2:0.2:2
g=1/(s^2+2*z*s+1)
figure
hold on
bodemag(g)
end