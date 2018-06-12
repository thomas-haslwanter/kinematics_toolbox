%% quat.eq
%    a==b for quaternions
%
%% Syntax
%   q_a == q_b
%    
%
%% Input Arguments
% * quat_a -- first quaternion to be compared
% * quat_b -- second quaternion to be compared
%
%% Output Arguments
% comparison -- boolean value of the comparison
%
%% Examples
% q_a = quat([0, 0.1, 0])
% q_b = quat([0, 0.1, 0])
% if q_a == q_b
%       disp('Quaternions are equal')
% end
%

% ------------------
% ver:      0.1
% author:   ThH
% date:     May-2018

function comparison = eq(quat_a, quat_b)

c = all((quat_a.c==quat_b.c)');

end

