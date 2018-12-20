function y = scaledInverseChiPdf(x,df,scale)
% The Scaled Inverse Chi-Squared Distribution.
% INPUT
% x = the parameter value
% df = degrees of freedom
% scale = scale (tau squared).
% OUTPUT
% y = The probaility density
% 
% BK - 2018
%assert(all(x>0),'The scaled inverse Chi-squared PDF is only defined for x>0')
z = x<0;
y = zeros(size(z));
if nargin <3
    scale =1; % Default to scaled inverse Chi-squared.
end
y(~z) = bf.inverseGammaPdf(x(~z),df/2,df*scale/2);
end