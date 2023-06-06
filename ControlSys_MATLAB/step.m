function step(mag,start)
figure
hold on
for t = [-10:0.5:10]
    if t < start
        plot(t,0)
    else 
        plot(t,mag)
    end
    
end