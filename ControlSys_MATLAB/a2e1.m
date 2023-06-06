clc 
clear
close
g=tf([1,0.4],[1,3.6,0,0]);
g1=feedback(g,1);
figure
rlocus(g1)
sgrid(0.5,1)
[r]=rlocfind(g1)
[r]=rlocfind(g1)

