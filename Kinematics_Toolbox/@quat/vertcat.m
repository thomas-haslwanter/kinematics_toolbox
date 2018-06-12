%% quat.vertcat
%    [a; b] for quaternions; same as [a b]. Works for multiple length inputs
%
%% Syntax
%   q_concat = [q_a, q_b, q_c]
%
%% Input Arguments
% * quat_a -- first quaternion to be compared
% * quat_b -- second quaternion to be compared
% * etc
%
%% Output Arguments
% q_concat -- concatenation of the input quaternions
%
%% Examples
% q_a = quat([0, 0.1, 0])
% q_b = quat([0, 0.1, 0])
% q_ab = [q_a; q_b]
%

% ------------------
% ver:      0.1
% author:   ThH
% date:     May-2018

function concatenated = vertcat(varargin)

concatenated = horzcat(varargin)

end
