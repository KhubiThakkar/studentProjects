clear
close
clc
a=complex(3,4);  %enter complex number
mag=abs(a)          %magnitudeofnumber
th=angle(a)         %ohase in rad
theta=th*180/pi     %phase of complex number in deg
db=20*log(mag)      %magnitude in dB