%% quat.minus
%    a-b for quaternions (does not make much sense)
%
%% Syntax
%   q_subtracted = quat_a - quat_b
%
%% Input Arguments
% * quat_a -- first quaternion 
% * quat_b -- second quaternion 
%
%% Output Arguments
% q_subtracted -- subtraction of ALL quaternion values
%
%% Examples
% q_a = quat([0, 0.1, 0])
% q_b = quat([0, 0, 0.1])
% q_a_minus_b = q_a - q_b
%

% ------------------
% ver:      0.1
% author:   ThH
% date:     May-2018

function q_subtracted = minus(quat_a, quat_b)

a = quat(quat_a);
b = quat(quat_b);

c = a.c - b.c;

q_subtracted = quat(c);

end
