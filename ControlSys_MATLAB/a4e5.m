clear
close
clc
s=tf('s');
r=0.2;      %defime the constants
l=0.5;
km=0.1;
kb=0.2;
b=0.2;
j=0.02;
g=km/(s*((r+l)*s)*(j*s+b));%transfer function
k=[1 4 10]
for i=1:3
    t=stepinfo(g*s*k(i))    %info of step response
    value(t)                %call the function and return value of oveshoot,risetime,settling time
    [z,wn]=damp(g*k(i))     %give zeta and natural freq
    plot(k,z)
    figure(2)
    plot(k,wn)
end