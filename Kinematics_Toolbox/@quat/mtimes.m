%% quat.mtimes
%    a*b for quaternions
%
%% Syntax
%   q_combined = quat_a * quat_b
%
%% Input Arguments
% * quat_a -- first quaternion 
% * quat_b -- second quaternion 
%
%% Output Arguments
% q_combined -- quaternion for the combined rotation
%
%% Examples
% q_a = quat([0, 0.1, 0])
% q_b = quat([0, 0, 0.1])
% q_combined = q_a * q_b
%

% ------------------
% ver:      0.1
% author:   ThH
% date:     May-2018

function q_combined = mtimes(quat_a, quat_b)


a = quat(quat_a);
b = quat(quat_b);

c(:,1)=a.c(:,1).*b.c(:,1)-a.c(:,2).*b.c(:,2)-a.c(:,3).*b.c(:,3)-a.c(:,4).*b.c(:,4);
c(:,2)=a.c(:,2).*b.c(:,1)+a.c(:,1).*b.c(:,2)-a.c(:,4).*b.c(:,3)+a.c(:,3).*b.c(:,4);
c(:,3)=a.c(:,3).*b.c(:,1)+a.c(:,4).*b.c(:,2)+a.c(:,1).*b.c(:,3)-a.c(:,2).*b.c(:,4);
c(:,4)=a.c(:,4).*b.c(:,1)-a.c(:,3).*b.c(:,2)+a.c(:,2).*b.c(:,3)+a.c(:,1).*b.c(:,4);

q_combined = quat(c);

end
