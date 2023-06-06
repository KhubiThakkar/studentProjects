clc
clear
close
s=tf('s');
for k=1:4
    wn=[1 2 4 6];       %values of natural freq
    z=[0.3 0.5 0.7 0.8];%values of damping ratio
    g=(wn(k)^2)/(s^2+(2*z(k)*wn(k)*s)+(wn(k)^2))%trnsfer function
    
    step(g)     %step response
    hold on
end
figure
hold off
for h=1:4
    wn=[1 2 4 6];       %values of natural freq
    z=[0.3 0.5 0.7 0.8];%values of damping ratio
    [X,Y]=meshgrid(-10:0.5:10);%define the grid size
    F2=(wn(h)^2)./((X.^2+Y.^2)+(2*z(h)*wn(h)*sqrt(X.^2+Y.^2))+wn(k)^2);%magnitude of the function
    mesh(X,Y,F2)        %plot the 3D plot
    figure
end

    