clear
close
clc
a=[0 -1;-6.5 1];        %define the matrix
b=[1 1;1 0];            %define the matrix
c=[2 0;0 2];            %define the matrix
d=[0 0;0 0];            %define the matrix
sys= ss(a,b,c,d)        %define the state space model
step(sys)               %the step response