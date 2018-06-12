%% get_data  Get (acc, omega, mag, rate) from motion trackers
%
% Currently data from the following systems can be read in:
%   * XSens MTx
%   * x-io (classic, and ngimu)
%
%% Syntax
%    data = get_data(selection, data_type);
%
%% Input Arguments
% * selection -- Path and name of data file
% * data_type -- Format of input data. Has to be one of the following:
%                - xsens
%                - xio
%                - xio_ngimu
% 
%% Output Arguments
% * data -- recorded raw data and processed data
%           MATLAB-structure, with the following fields:
%           - rate
%           - acc
%           - omega
%           - mag
%           - quat_sensor
%           - time
% 

% ----------------------
% ver:      1.0
% date:     June-2018
% authors:  Thomas Haslwanter

function data = get_data(selection, data_type)

    switch data_type

    case 'xsens'
        % For "xsens" the paramter "selection" is a filename
        
        % Find rate
        fh_in = fopen(selection);
        first_line = fgetl(fh_in);
        second_line = fgetl(fh_in);
        fclose(fh_in);
        txt_parts = strsplit(second_line, ':');
        rate = str2num(txt_parts{2}(1:(end-2)));

        % Get the data
        prg_dir = fileparts(which('get_data'));
        addpath(fullfile(prg_dir, 'sensors'));
        in_data = get_Xsens(selection, rate);

        data.rate = rate;
        data.acc = in_data.acc;
        data.omega = in_data.omega;
        data.mag = in_data.mag;
        data.quat_sensor = in_data.quats;
        
        data.time = (1:size(data.acc,1))/rate;

    case 'xio'
        % For "xio" the paramter "selection" is a directory name,
        % possibly including the file-numbers

        [pathstr,name,ext]= fileparts(selection);
        if ~isempty(str2num(name))  % 'ExampleData\00000'
            in_dir = pathstr;
            file_num = name;
        else
%             in_dir = pathstr;        % 'ExampleData'
            bin_name = dir(fullfile(selection, '*.BIN'));
            [pathstr,number_str,ext]= fileparts(bin_name.name);
            selection = fullfile(selection, number_str);
        end
        
        % Add Seb Madgewick's library to the path
        prg_dir = fileparts(which('get_data'));
        addpath(fullfile(prg_dir, 'sensors\x-IMU-MATLAB-Library\ximu_matlab_library')); 
        
        % Get the data
        xIMUdata = xIMUdataClass(selection);
        
        data.rate = xIMUdata.CalInertialAndMagneticData.SampleRate;
        data.acc = to_matrix(xIMUdata.CalInertialAndMagneticData.Accelerometer);
        data.omega =  to_matrix(xIMUdata.CalInertialAndMagneticData.Gyroscope);
        data.mag = to_matrix(xIMUdata.CalInertialAndMagneticData.Magnetometer);
        data.quat_sensor = xIMUdata.QuaternionData.Quaternion;
        
        data.time = (1:size(data.acc,1))/data.rate; 
        % Check this with Seb: "packet numbers" are not contiguous
        
    case 'xio_ngimu'
        % For "xio_ngimu" the paramter "in_file" is a directory name
        
        if exist(selection,'dir')~=7
            error(['Directory ' selection ' does not exist!']);
        end
               
        data_quat = dlmread(fullfile(selection, 'quaternion.csv'), ',', 1, 0);
        
        data.time = data_quat(:,1);
        data.rate = median(1./(diff(data.time)))';      % check with Seb
        data.quat = data_quat(:,2:5);
        
        data_sensor = dlmread(fullfile(selection, 'sensors.csv'), ',', 1, 0);
        
        data.omega = data_sensor(:,2:4);
        data.acc   = data_sensor(:,5:7);
        data.mag   = data_sensor(:,8:10);
        data.barometer = data_sensor(:,11);

    otherwise
        error(['Unknown data type: ' data_type]);

    end

end

function matrix_data = to_matrix(struct_data)
% Get x/y/z-fields from structure, and combine them to a matrix
%
% author: ThH
% date:   June-2018

matrix_data = [struct_data.X, struct_data.Y, struct_data.Z];
end

