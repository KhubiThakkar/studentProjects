clear
close
clc
s=tf('s')
g=(s+1)^2/((s^2)*(s+1)*(s+5));
sisotool(feedback(g,1))