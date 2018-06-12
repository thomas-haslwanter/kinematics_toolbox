%% quat.mldivide
%    a\b for quaternions
%
%% Syntax
%   q_right_divided = mrdivide(quat_a, quat_b)
%
%% Input Arguments
% * quat_a -- denominator
% * quat_b -- numerator
%
%% Output Arguments
% q_right_divided -- inv(a) * b
%
%% Examples
% q_a = quat([0, 0.1, 0])
% q_b = quat([0, 0, 0.1])
% q_right_divided = q_a\q_b
%

% ------------------
% ver:      0.1
% author:   ThH
% date:     May-2018

function q_right_divided = mrdivide(quat_a, quat_b)

a = quat(quat_a);
b = quat(quat_b);

q_right_divided = inv(a)*b;

end
