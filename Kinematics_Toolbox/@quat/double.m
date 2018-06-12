%% quat.double
%     return the corresponding quaternion values
%
%% Syntax
%    vec = double(quat_in)
%
%% Input Arguments
% quat_in -- quaternion
%
%% Output Arguments
% vec -- corresponding quaternion values. The first element is the scalar part.
%
%% Examples
%  q = quat([0, 0.1, 0])
%  vec = double(q)
%

% ------------------
% ver:      0.1
% author:   ThH
% date:     May-2018

function vec = double(quat_in)

d = q.c;
%d = d(:,2:4);
