% clear;
% 
% t = 0:0.001:5;
% 
% x = heaviside(t) - heaviside(t-5);
% 
% h = heaviside(t) - heaviside(t-1);
% 
% convolution = conv(x,h)*0.001;
% 
% convPos = 0:0.001:(length(x)+length(h)-2)*0.001;
% 
% plot(convPos,convolution)
% title("Convolution of constant laser beam with aperture")
% xlabel("Location of right edge of aperture")
% ylabel("Output Signal")
% 
% Sigma = 1.5;
% Mu = 2.5;
% 
% xGauss = 1/(Sigma*sqrt(2*pi))*exp(-1/2*((t-Mu)/Sigma).^2);
% 
% convolutionGauss = conv(xGauss,h)*0.001;
% 
% plot(convPos,convolutionGauss)
% title("Convolution of Gaussian laser beam with aperture")
% xlabel("Location of right edge of aperture")
% ylabel("Output Signal")

t = 1:35007;

h = zeros(10,1);

% h(1) = 5000;

% for i = 2:5000
%    h(i)=h(i-1)-1; 
% end

for i = 1:25
    h(i) = 100;
end

% for i = 101:2000
%    h(i) = 100;
% end
% 
% for i = 2001:2500
%    h(i) = h(i-1)-0.2; 
% end

load('I.mat');

convolution = conv(I,h)/2514;

for i = 1:(length(t)+length(h)-1)
   convolution(i) = convolution(i)-0.1;
end

plot(I)
hold on
plot(convolution,'r')
title("Raw and Filtered Data")
%ylim([-19 -15])