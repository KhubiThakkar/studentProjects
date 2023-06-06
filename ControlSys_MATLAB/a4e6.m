clear
close
clc
a=[-1 0.5;-1 0];
b=[0;1];
c=[1 0];
d=[];
sys=ss(a,b,c,d);
t=0:0.1:10;
u=exp(-t);
lsim(sys,u,t)