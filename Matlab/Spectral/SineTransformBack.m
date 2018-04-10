function [tn, x] = SineTransformBack( fn, xbar )
% SineTransformBack  Fast Discrete Inverse Sine Transform
% 

N = length(fn);

dstScratch = sqrt(-1)*cat(1,0,0.5*xbar(1:N-1),xbar(N),-0.5*xbar(N-1:-1:1));
x = fft(dstScratch,2*N,1);

x = real(x(1:N));
deltaT = 1/(2*N*(fn(2)-fn(1)));
tn = (0:N-1)'*deltaT;
end