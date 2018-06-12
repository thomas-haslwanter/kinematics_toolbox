%% R
% Rotation matrix for rotation about the "dim"-axis
%
%% Syntax
%    r_mat = R(dim, alpha)
%
%% Input Arguments
% * dim -- Axis of rotation. Has to be "1", "2", or "3", or "x", "y", or "z"
% * alpha -- Angle of rotation [in degrees]
%
%% Output Arguments
% r_mat -- Corresponding matrix for rotation of an object
%
%% Examples
%    R('x', 45)

% ------------------
% author:   ThH
% date:     April-2018

function r_mat = R(dim, alpha)

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

% convert from degrees into radian:
alpha = alpha * pi/180;

switch dim
    case 'x'
        r_mat = 	[	1			0			0
            0			cos(alpha)		-sin(alpha)
            0 			sin(alpha)		cos(alpha) ];
        
    case 'y'
        r_mat = 	[	cos(alpha)		0			sin(alpha)
            0			1			0
            -sin(alpha)		0			cos(alpha) ];
        
    case 'z'
        r_mat =	[	cos(alpha)	-sin(alpha)	0
            sin(alpha)	cos(alpha)	0
            0			0	1];
end

end
