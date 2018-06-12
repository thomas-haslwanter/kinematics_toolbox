function [ output_args ] = view_ts( data, rate )
%view_ts Interactive viewer for 1-D or 3-D data
%
%% Syntax
%  view(demo_data)
%
%% Input Arguments
% * data -- 1-D or 3-D dataset, 
% * rate -- Sample-rate [Hz]
% 
% 
%% Examples
% rate = 100;
% dt = 1/rate;
% t= 0:dt:10;
% x = sin(t);
% view_ts(data, rate)

% --------------
% ver:      0.1
% author:   ThH
% date:     June-2018

if nargin == 1
    rate = 1
end

time = (1:length(data))/rate;

plot(time, data);

xlabel('Time [sec]');
end

