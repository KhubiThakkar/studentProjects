clear
clc
close
s=tf('s')
k = input('enter value of k')
s=tf('s');
g2=k*(s+0.4)/((s^2)*(s+3.6));
rlocus(g2)
