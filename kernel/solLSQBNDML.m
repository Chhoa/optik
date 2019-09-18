function x = solLSQBNDML(A,b,l,u)
% SOLLSQBNDML function to solve the convex optimization
% problem (least squares problem) with box constraints
% / bounds on x, i.e.,
%    minimize_x ||Ax - b||_2 subject to l <= x <= u
%
% inputs:
%    A         n x m matrix
%    b         right hand side (vector)
%    l         component wise lower bound
%    u         component wise upper bound
% outputs:
%    x         solution

% call the Matlab solver (quadratic programming)
x = quadprog(2*A'*A, -2*A'*b, [], [], [], [], l, u);

end % end of function




%######################################################
% This code is part of the Matlab-based toolbox
% OPTIK --- Optimization Toolkit
% For details see https://github.com/andreasmang/optik
%######################################################
