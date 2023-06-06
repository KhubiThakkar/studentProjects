clc 
s=tf('s'); 
g1=0.1/s; 
g2=1/(s+2); 
g3=series(g1,g2);
%ForUnityfeedbackpathtransferfunction: 
g=feedback(g3,1)
step(10*g)