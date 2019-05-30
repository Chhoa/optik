clear, close all;
clc;

n = 2;

% create random matrices and vectors
%A = [ 2, 0; 0, -2]; b = zeros(n,1); % indefinite
%A = [-2, 0; 0,  2]; b = zeros(n,1); % indefinite
%A = [ 2, 0; 0,  0]; b = -ones(n,1); % semi-definite
A = [ 2, 0; 0,  0]; b = zeros(n,1); % semi-definite


x0 = zeros(n,1);

% define function handle for objective
objfun = @(x) objFunQuad(A,x,b,0);

plotObj(objfun,[-1,1,-1,1],x0);




%######################################################
% This code is part of the Matlab-based toolbox
% OPTIK --- Optimization Toolkit
% For details see https://github.com/andreasmang/optik
%######################################################
