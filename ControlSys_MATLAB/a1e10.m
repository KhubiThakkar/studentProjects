clear
close
clc
t=0:0.1:10;     %start of part 1
y=2*sin(t)+3*cos(t);
plot(t,y)
maximum=max(y)          %max value of function y
%start of part 2
a=roots([1 2 0 1])
b=roots([1 0 0 1])
c=roots([-3 0 -3])
%start of part 3
Ga=zpk(-4,-3,1)
Gb=zpk([-1],[complex(-1,0.5) complex(-1,-0.5)],10)
Gc=zpk(-6,[0 0 -4],inf)
%start of part 5
g1=tf([1 2 1],[1 3 0 1])
s=tf('s')
g2=(2*s^2-3)/(s^3+1)/(s^2+s+1)

[num,den]=tfdata(g1,'v')
zn=roots(num)
zd=roots(den)
zn1=zero(g1)
zd1=pole(g1)
figure
pzmap(g1)
zn2=zero(g2)
zd2=pole(g2)
hold
pzmap(g2)



