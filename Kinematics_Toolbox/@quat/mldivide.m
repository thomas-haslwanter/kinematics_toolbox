%% quat.mldivide
%    a/b for quaternions
%
%% Syntax
%   q_left_divided = mldivide(quat_a, quat_b)
%
%% Input Arguments
% * quat_a -- numerator
% * quat_b -- denominator
%
%% Output Arguments
% q_left_divided -- a * inv(b)
%
%% Examples
% q_a = quat([0, 0.1, 0])
% q_b = quat([0, 0, 0.1])
% q_left_divided = q_a/q_b
%

% ------------------
% ver:      0.1
% author:   ThH
% date:     May-2018

function q_left_divided = mldivide(quat_a, quat_b)

a = quat(quat_a);
b = quat(quat_b);

q_left_divided = a*inv(b);

end
