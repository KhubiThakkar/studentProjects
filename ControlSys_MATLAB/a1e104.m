clear
close 
clc
for tau=2:2:6
    s=tf('s');
    g1=1/(tau*s+1)
    hold
    step(g1)    %step response of the function
    hold
end