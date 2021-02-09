clear;

t = linspace(0,10,1001);

omega = pi/4;

rect = sign(real(exp(j*omega*(t-5))));

for i = 1:length(t)
   if rect(i) == -1
       rect(i) = 0;
   end
end

decexp = exp(-0.5*t);

convolution = conv(rect,decexp);

plot(convolution)
title("Convolution of Rectangular Function and Decaying Exponential")