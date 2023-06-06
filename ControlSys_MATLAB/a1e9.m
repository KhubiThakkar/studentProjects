clear
close
clc
g1=3*tf([1 1],[1 3 1])
s=tf('s');
g2=(2*s+3)/(s^3+1)
[num1,den1]=tfdata(g1,'v');     %extracting num and den from g1
[num2,den2]=tfdata(g2,'v');     %extracting num and den from g2
z1=roots(num1)                  %zeros of g1
z2=roots(num2)                  %zeros of g2
p3=roots(den1)                  %poles of g1
p4=roots(den2)                  %poles of g2
zero(g1)                        %zeros of g1
zero(g2)                        %zeros of g2
pole(g1)                        %poles of g1
pole(g2)                        %poles of g2
pzmap(g1)
figure
pzmap(g2)