%% test_check_input
% Tests for function "check_input" for the "3D_Kinematics toolbox"

% authors:  ThH
% ver:      0.1

%% Main function to generate tests
function tests = inputTest

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

%% Test check_input
function test_inputs(testCase)
    vector_input = 1:3;
    matrix_input1 = randn(5,3);
    matrix_input2 = randn(5,3);
    

    % Two matrices of same size
    [output_1, output_2] = check_input(matrix_input1, matrix_input2, 1, 'test.txt');

    errorMag = max(max(abs(output_1 - matrix_input1)));
    assertAlmostEqual(errorMag, 0);

    errorMag = max(max(abs(output_2 - matrix_input2)));
    assertAlmostEqual(errorMag, 0);


    % First input a vector
    [output_1, output_2] = check_input(vector_input, matrix_input2, 1, 'test.txt');
    
    errorMag = max(max(abs(output_1 - repmat(vector_input, length(matrix_input2), 1))));
    assertAlmostEqual(errorMag, 0);

    errorMag = max(max(abs(output_2 - matrix_input2)));
    assertAlmostEqual(errorMag, 0);

    % Second input a vector
    [output_1, output_2] = check_input(matrix_input1, vector_input, 1, 'test.txt');

    errorMag = max(max(abs(output_1 - matrix_input1)));
    assertAlmostEqual(errorMag, 0);

    errorMag = max(max(abs(output_2 - repmat(vector_input, length(matrix_input1), 1))));
    assertAlmostEqual(errorMag, 0);
    
    
    % Test third parameter
    [output_1, output_2] = check_input(vector_input', matrix_input2', 2, 'test.txt');
    
    errorMag = max(max(abs(output_1 - repmat(vector_input, length(matrix_input2), 1))));
    assertAlmostEqual(errorMag, 0);

    errorMag = max(max(abs(output_2 - matrix_input2)));
    assertAlmostEqual(errorMag, 0);


end
