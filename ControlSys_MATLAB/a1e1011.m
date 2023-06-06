clear
close
clc
ck=input('enter the number ');
counter=0;
for i=1:1:ck
    if mod(ck,i)==0
        counter=counter+1;
    end
end
if counter==2
    fprintf('prime')
else
    fprintf('not prime')
end


