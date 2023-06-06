clear
close
clc
g1=zpk(4,[-1,-2,-3],1)

k=1
s=tf('s')
g2=k/((s+2)*s)
rlocus(g1,g2)