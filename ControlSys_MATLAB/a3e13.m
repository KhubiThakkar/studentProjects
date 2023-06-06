clear
clc
close
s=tf('s')
g=1/(s*(s+10)*(s+2));
bode(g)
margin(g)