clear
close
clc
s=tf('s');
k=[1 10 50];
for a=1:3
    g=k(a)/(s^2+2*s+1);
    g1=feedback(g,1);   %final closed loop transfer function
    [wn,z]=damp(g1)     %values of natural freq and damping ratio
end
