%% quat.plus
%    a+b for quaternions (does not make much sense)
%
%% Syntax
%   q_added = quat_a + quat_b
%
%% Input Arguments
% * quat_a -- first quaternion 
% * quat_b -- second quaternion 
%
%% Output Arguments
% q_added -- addition of ALL quaternion values
%
%% Examples
% q_a = quat([0, 0.1, 0])
% q_b = quat([0, 0, 0.1])
% q_a_plus_b = q_a + q_b
%

% ------------------
% ver:      0.1
% author:   ThH
% date:     May-2018

function q_added = plus(quat_a, quat_b)

a = quat(quat_a);
b = quat(quat_b);

c = a.c + b.c;

q_added = quat(c);

end
