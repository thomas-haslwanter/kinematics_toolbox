%% test_markers
% Tests for marker functions for the "3D_Kinematics toolbox"

% authors:  ThH
% ver:      0.1

%% Main function to generate tests
function tests = markerTest

    tests = functiontests(localfunctions);

end

%% Test setup
function [delta] = setUp()

    delta = 1e-5;

end

function assertAlmostEqual(a,b)

    delta = setUp();
    assert( abs(a - b) < delta );

end

%% Test analyze_3Dmarkers
function test_marker_analysis(testCase)
    % Test-data Generation:
    
    % 1) Three marker locations
    M = zeros(3)
    M(1,:) = [0,0,0];
    M(2,:) = [1,0,0];
    M(3,:) = [1,1,0];

    M = M - repmat(mean(M), 3,1);

    % 2) a gradual translation from 0 to [1,1,0], over 10 sec
    t = 0:0.1:10;
    translation = ([1;1;0] * t)';

    % 3) A rotation with 100 deg/s about the z-axis
    q = [zeros(length(t),2), deg2quat(100*t')];

    % Calculate the location of the three test-markers
    M0 = rotate_vector(M(1,:), q) + translation;
    M1 = rotate_vector(M(2,:), q) + translation;
    M2 = rotate_vector(M(3,:), q) + translation;

    data = [M0, M1, M2];

    [pos, ori] = analyze_3Dmarkers(data, data(1,:));
    
    pos_error = max(max(abs(pos-translation)));
    assertAlmostEqual(pos_error, 0);

    quat_error = max(max(abs(ori-q)));
    assertAlmostEqual(quat_error, 0);

end

