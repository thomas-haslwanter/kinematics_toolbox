%% quat.length
%     length of a quaternions
%
%% Syntax
%    q_length = length(quat_in)
%
%% Input Arguments
% quat_in -- quaternion
%
%% Output Arguments
% q_length -- corresponding length
%
%% Examples
% q = quat([0, 0.1, 0;
%           0, 0, 0.1;
%           0, 0.1, 0]);
% length(q)

function q_length = length(quat_in)

q_length = size(quat_in.c,1);

end

