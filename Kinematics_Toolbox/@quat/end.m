%% quat.end
%     end method for quaternions
%
%% Syntax
%    q_length = end(quat_in)
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
% length = end(q);
% q_tail = q(2:end); 
%

% ------------------
% ver:      0.1
% author:   ThH
% date:     May-2018

function q_length = char(a)

q_length = length(a)

end
