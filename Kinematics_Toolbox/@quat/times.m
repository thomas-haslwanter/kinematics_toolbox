%% quat.times
%    a.*b for quaternions
%
%% Syntax
%   q_scaled = quat_a .* b
%
%% Input Arguments
% * quat_a -- quaternion 
% * b -- vector of the same length as the quaternion
%
%% Output Arguments
% q_scaled -- scaled quaternion 
%
%% Examples
% q_a = quat([0, 0.1, 0;
              0, 0, 0.2]);
% b = [1,2]
% q_scaled = q_a .* b
%

% ------------------
% ver:      0.1
% author:   ThH
% date:     May-2018

function q_scaled = times(quat_a, b)


a = quat(quat_a);

a = quat(a);
if length(a) ~= length(b)
  error('quaternion-length has to be equal vector-length')
end

q_scaled = a.c .* (b(:)*ones(1,4));

q_scaled = quat(q_scaled);

end
