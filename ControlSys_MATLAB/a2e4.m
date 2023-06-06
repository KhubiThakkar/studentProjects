clc
clear
close
s=tf('s');
g=1/(s*(s+1)*(s+5));
gc=(s+1)^2/s;
g1=g*gc;
rlocus(g1)
sgrid([0.58844 0.7798],[2.266 1.709])
figure(2)
k=78
a=1
g2=k*(s+a)^2/((s^2)*(s+5)*(s+1))
step(feedback(g2,1))
