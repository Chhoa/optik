%######################################################
% This code is part of the Matlab-based toolbox
% OPTIK --- Optimization Toolkit
% For details see https://github.com/andreasmang/optik
%######################################################
function [result] = objFunLSQ(A,x,b,flag)
% OBJFUNLSQ implementation of objective function for
% least squares problem
%
% inputs:
%    A         n x m matrix
%    b         right hand side (vector)
%    x         current iterate
%    flag      flag to identify what's going to be computed
%              options are:
%              'j'    objective value
%              'g'    gradient
%              'h'    hessian
% outputs:
%    result    value of objective functional or gradient


switch flag
	case 'j'
		% evaluate objective functional j(x) = ||Ax-b||^2_2
		dr = A*x - b;
		result = 0.5*dr(:)'*dr(:);
	case 'g'
		% evaluate gradient g(x) = A^\T(Ax-b)
		dr = A*x - b;
		result = A'*dr;
	case 'h'
		% compute hessian A^\T A
		result = A'*A;
	otherwise
		error('flag not defined');
end


end
