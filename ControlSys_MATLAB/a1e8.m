clear
close
clc
k=10;
tau=5;
w=[0.01,0.05,0.1,2,5,10];
g=k./(j*tau*w+1);
db=20*log(abs(g));
theta=angle(g)*180/pi;
semilogx(w,db,w,theta,'--')
grid on
title('PLOTTING COMPLEX FUNCTION')
xlabel('angular velocity')
ylabel('gain and phase')