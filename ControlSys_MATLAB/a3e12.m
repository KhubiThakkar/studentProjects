clear 
close
clc
s=tf('s')
g=5/(s*(s+1)*(s^2+s*2+5))
bode(g)