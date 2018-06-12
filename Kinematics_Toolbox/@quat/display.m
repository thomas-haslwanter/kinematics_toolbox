%% quat.display
%     Command window display of a quaternion
%
%% Syntax
%  display(q)
%
%% Input Arguments
% q -- quaternion
%
%% Examples
%  q = quat([0, 0.1, 0])
%  display(q)
%

% ------------------
% ver:      0.1
% author:   ThH
% date:     May-2018

function display(a)

disp([inputname(1), ' = ']);
disp(double(a.c(:,2:4)))

end
