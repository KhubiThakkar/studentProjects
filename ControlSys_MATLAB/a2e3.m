clear
close
clc
s=tf('s')
g=(s^2+2*s+4)/(s*(s+4)*(s+6)*(s^2+1.4*s+1))

figure
rlocus(g)
%the system is stable for k from 0 to 15.8

