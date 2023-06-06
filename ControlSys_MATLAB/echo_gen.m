%ECHO GENERATOR
%Write a functio called echo _gen that adds an echo effect to an audio
%recording.The function is to be called like this: 
%output = echo_gen(input,fs,delay,amp);
%where input is a column vector with values between -1 and 1 representing a
%time series of digitized sound data. The input argument fs is the sampling
%rate.The sampling rate specifies how many samples we have in the data each
%second. For example, an audio CD uses 44,100 samples per second. The input
%argument delay represent the delay of the echo in seconds. That is, the
%echo should start after delay seconds have passed from the start of the
%audio signal. Finally, amp specifies the amplification of the echo which
%normally should be a value less than 1, since the echo is typically not as
%loud as original signal.
%The output of the function is a column vector conntaining the original
%sound with the echo superimposed. The output vector will be longer than
%the input vector if the delay is not zero (round to the nearest number of
%points needed to get the delay, as opposed to floor or ceil). Asound
%recording has values between -1 and 1, so if the echo causes some values
%to be outside of this range, you will need to normalize the entire
%vecctor, so that all values adhere to this requirement.
%MATLAB has several sample audio files included that you can try splat,
%gong and handel are few examples. Try the following:
%load gong
%sound(y,Fs)
function output = echo_gen(input,fs,delay,amp)
stime = 1/fs;                       %seconds for which one sample plays
[row,col] = size(input);
nsample = round(delay * fs);        %after these samples first echo starts
echoin(nsample+1:nsample+row,1) = input;
input(row+1:row+nsample,1) = 0;

echoin = amp.*echoin;
out = input + echoin;
if max(out)>1 || min(out)<-1
    X = max(abs(out))
    output = out./X;
else
    output = out;
end

end