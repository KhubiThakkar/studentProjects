clear
close
clc
t=0:0.01:10;
alpha=2;
ramp=alpha*t;       %define the input
s=tf('s');
g=25/(s^2+s+1);     %transfer function
lsim(g,ramp,t)      %ramp response using lsim
figure
step(g/s)           %ramp response using step