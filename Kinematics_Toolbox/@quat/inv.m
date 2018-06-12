%% quat.inv
%    inverse for quaternions
%
%% Syntax
%   q_inverted = inv(q_in)
%
%% Input Arguments
% quat_in -- input quaternion
%
%% Output Arguments
% q_inverted -- inversion of the input quaternion
%
%% Examples
% q_a = quat([0, 0.1, 0]);
% q_b = quat([0, 0.1, 0]);
% q_a_over_b = q_a * inv(q_b);
%

% ------------------
% ver:      0.1
% author:   ThH
% date:     May-2018

function inverted = inv(q_in)

a = quat(q_in);

% inverse of a
inverted = [a.c(:,1) -a.c(:,2:4)]./ (sum(a.c.^2,2)*ones(1,4));

end
