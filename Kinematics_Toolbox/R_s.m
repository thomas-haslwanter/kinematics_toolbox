%% R_s
% Symbolic rotation matrix for rotation about the "dim"-axis.
%
% For rotation about the x/y/z axis, the angle names
% "psi", "phi", "theta" are used, respectively. (This allows to 
% subsequently multyply different matrices, and keep the symbolic
% angles apart.)
%
%% Syntax
%    R_sym = R_s(dim, label) 
%
%% Input Arguments
% * dim -- Axis of rotation. Has to be "1", "2", or "3", or "x", "y", or "z"
% * label -- Name of angle
%
%% Output Arguments
% * R_s -- Corresponding symbolic rotation matrix
% 
%% Notes
% The resulting symbolic matrices can be multiplied with each other.
%
%% Examples
%    Rx = R_s('x', 'phi');
%    Ry = R_s('y', 'theta');
%    R_total = Rx * Ry

% -------------------
% author:   ThH
% date:     April-2018

function R_sym = R_s(dim, label)
% for whatever reason, the following line crashed inside a function call
% syms R_sym theta phi psi
R_sym = sym('R_sym');
angle = sym(label);

% Check the input
options_num = [1,2,3];
options_char = ['x', 'y', 'z'];
help_txt = [upper(mfilename) ': dim has to be 1, 2, or 3, or "x", "y", or "z"'];

if ischar(dim)
    if ~any(dim == options_char)
        error(help_txt);
    end
else
    if ~any(dim == [1,2,3])
        error(help_txt);
    end
    dim = options_char(dim);
end

switch dim
case 'x'
    R_sym = [1      0       0;
             0 cos(angle) -sin(angle);
             0 sin(angle) cos(angle)];

case 'y'
    R_sym = [cos(angle)  0 sin(angle);
                0        1       0;
            -sin(angle)  0 cos(angle)];

case 'z'
    R_sym = [cos(angle) -sin(angle) 0;
             sin(angle)  cos(angle) 0;
                0           0       1];
end

end

