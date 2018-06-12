function varargout = view_ts(varargin)
% VIEW_TS MATLAB code for view_ts.fig
%      VIEW_TS, by itself, creates a new VIEW_TS or raises the existing
%      singleton*.
%
%      H = VIEW_TS returns the handle to a new VIEW_TS or the handle to
%      the existing singleton*.
%
%      VIEW_TS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VIEW_TS.M with the given input arguments.
%
%      VIEW_TS('Property','Value',...) creates a new VIEW_TS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before view_ts_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to view_ts_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help view_ts

% Last Modified by GUIDE v2.5 23-May-2018 19:50:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @view_ts_OpeningFcn, ...
                   'gui_OutputFcn',  @view_ts_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before view_ts is made visible.
function view_ts_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to view_ts (see VARARGIN)

% Choose default command line output for view_ts
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes view_ts wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = view_ts_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edt_lower_limit_Callback(hObject, eventdata, handles)
% hObject    handle to edt_lower_limit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edt_lower_limit as text
%        str2double(get(hObject,'String')) returns contents of edt_lower_limit as a double


% --- Executes during object creation, after setting all properties.
function edt_lower_limit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edt_lower_limit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edt_upper_limit_Callback(hObject, eventdata, handles)
% hObject    handle to edt_upper_limit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edt_upper_limit as text
%        str2double(get(hObject,'String')) returns contents of edt_upper_limit as a double


% --- Executes during object creation, after setting all properties.
function edt_upper_limit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edt_upper_limit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edt_rate_Callback(hObject, eventdata, handles)
% hObject    handle to edt_rate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edt_rate as text
%        str2double(get(hObject,'String')) returns contents of edt_rate as a double


% --- Executes during object creation, after setting all properties.
function edt_rate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edt_rate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in chkbx_log.
function chkbx_log_Callback(hObject, eventdata, handles)
% hObject    handle to chkbx_log (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkbx_log


% --- Executes on button press in pb_fb.
function pb_fb_Callback(hObject, eventdata, handles)
% hObject    handle to pb_fb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb_b.
function pb_b_Callback(hObject, eventdata, handles)
% hObject    handle to pb_b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb_f.
function pb_f_Callback(hObject, eventdata, handles)
% hObject    handle to pb_f (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb_ff.
function pb_ff_Callback(hObject, eventdata, handles)
% hObject    handle to pb_ff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb_show_all.
function pb_show_all_Callback(hObject, eventdata, handles)
% hObject    handle to pb_show_all (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pb_load.
function pb_load_Callback(hObject, eventdata, handles)
% hObject    handle to pb_load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

[FileName,PathName] = uigetfile('*.mat', 'Select data');
in_file = fullfile(PathName, FileName);

file_data = load(in_file);
names = fieldnames(file_data);
if length(names) == 1
    name = names{1};
end
data = getfield(file_data, name);
ax_viewer.UserData = data;

% Show the data
show_plot(handles)

% --- Shows the data
function show_plot(handles)

set(gcf,'CurrentAxes',handles.ax_viewer)
plot(handles.ax_viewer.UserData)
disp('done');


% --- Executes on button press in pb_exit.
function pb_exit_Callback(hObject, eventdata, handles)
% hObject    handle to pb_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
