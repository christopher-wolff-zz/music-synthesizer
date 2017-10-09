function varargout = Synth(varargin)
% SYNTH MATLAB code for Synth.fig
%      SYNTH, by itself, creates a new SYNTH or raises the existing
%      singleton*.
%
%      H = SYNTH returns the handle to a new SYNTH or the handle to
%      the existing singleton*.
%
%      SYNTH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SYNTH.M with the given input arguments.
%
%      SYNTH('Property','Value',...) creates a new SYNTH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Synth_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Synth_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Synth

% Last Modified by GUIDE v2.5 24-Sep-2017 02:56:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Synth_OpeningFcn, ...
                   'gui_OutputFcn',  @Synth_OutputFcn, ...
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


% --- Executes just before Synth is made visible.
function Synth_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Synth (see VARARGIN)

init(handles);
updateAll(handles);

% Choose default command line output for Synth
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Synth wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Synth_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function centsSliderB_Callback(hObject, eventdata, handles)
% hObject    handle to centsSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global centsB
centsB = get(hObject, 'Value');

set(handles.centsValueB, 'String', centsB);

updateOscB(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function centsSliderB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to centsSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function semitonesSliderB_Callback(hObject, eventdata, handles)
% hObject    handle to semitonesSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global semitonesB
semitonesB = round(get(hObject, 'Value'));

set(hObject, 'Value', semitonesB);
set(handles.semitonesValueB, 'String', semitonesB);

updateOscB(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function semitonesSliderB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to semitonesSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function octaveSliderB_Callback(hObject, eventdata, handles)
% hObject    handle to octaveSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global octaveB
octaveB = round(get(hObject, 'Value'));

set(hObject, 'Value', octaveB);
set(handles.octaveValueB, 'String', octaveB);

updateOscB(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function octaveSliderB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to octaveSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function octaveSliderA_Callback(hObject, eventdata, handles)
% hObject    handle to octaveSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global octaveA
octaveA = round(get(hObject, 'Value'));

set(hObject, 'Value', octaveA);
set(handles.octaveValueA, 'String', octaveA);

updateOscA(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function octaveSliderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to octaveSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function semitonesSliderA_Callback(hObject, eventdata, handles)
% hObject    handle to semitonesSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global semitonesA
semitonesA = round(get(hObject, 'Value'));

set(hObject, 'Value', semitonesA);
set(handles.semitonesValueA, 'String', semitonesA);

updateOscA(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function semitonesSliderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to semitonesSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function centsSliderA_Callback(hObject, eventdata, handles)
% hObject    handle to centsSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global centsA
centsA = get(hObject, 'Value');

set(handles.centsValueA, 'String', centsA);

updateOscA(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function centsSliderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to centsSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function fsField_Callback(hObject, eventdata, handles)
% hObject    handle to fsField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fs
fs = str2double(get(hObject, 'String'));

fs = round(fs);
if fs < 1
    fs = 1;
    set(hObject, 'String', fs);
end

updateAll(handles);


% --- Executes during object creation, after setting all properties.
function fsField_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fsField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function volumeSliderB_Callback(hObject, eventdata, handles)
% hObject    handle to volumeSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global volumeB
volumeB = get(hObject, 'Value');
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function volumeSliderB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to volumeSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function volumeSliderA_Callback(hObject, eventdata, handles)
% hObject    handle to volumeSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global volumeA
volumeA = get(hObject, 'Value');
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function volumeSliderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to volumeSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function ampReleaseSliderB_Callback(hObject, eventdata, handles)
% hObject    handle to ampReleaseSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ampAttackB ampDecayB ampReleaseB dur
ampReleaseB = get(hObject, 'Value');

maxAmpReleaseB = dur - ampAttackB - ampDecayB;
if ampReleaseB > maxAmpReleaseB
    ampReleaseB = maxAmpReleaseB;
    set(hObject, 'Value', ampReleaseB);
end

updateAmpModB(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function ampReleaseSliderB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampReleaseSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function ampSustainSliderB_Callback(hObject, eventdata, handles)
% hObject    handle to ampSustainSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ampSustainB
ampSustainB = get(hObject, 'Value');

updateAmpModB(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function ampSustainSliderB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampSustainSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function ampDecaySliderB_Callback(hObject, eventdata, handles)
% hObject    handle to ampDecaySliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ampAttackB ampDecayB ampReleaseB dur
ampDecayB = get(hObject, 'Value');

maxAmpDecayB = dur - ampAttackB - ampReleaseB;
if ampDecayB > maxAmpDecayB
    ampDecayB = maxAmpDecayB;
    set(hObject, 'Value', ampDecayB);
end

updateAmpModB(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function ampDecaySliderB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampDecaySliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function ampAttackSliderB_Callback(hObject, eventdata, handles)
% hObject    handle to ampAttackSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ampAttackB ampDecayB ampReleaseB dur
ampAttackB = get(hObject, 'Value');

maxAmpAttackB = dur - ampDecayB - ampReleaseB;
if ampAttackB > maxAmpAttackB
    ampAttackB = maxAmpAttackB;
    set(hObject, 'Value', ampAttackB);
end

updateAmpModB(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function ampAttackSliderB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampAttackSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function ampAttackSliderA_Callback(hObject, eventdata, handles)
% hObject    handle to ampAttackSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ampAttackA ampDecayA ampReleaseA dur
ampAttackA = get(hObject, 'Value');

maxAmpAttackA = dur - ampDecayA - ampReleaseA;
if ampAttackA > maxAmpAttackA
    ampAttackA = maxAmpAttackA;
    set(hObject, 'Value', ampAttackA);
end

updateAmpModA(handles);
updateMain(handles);

% --- Executes during object creation, after setting all properties.
function ampAttackSliderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampAttackSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function ampDecaySliderA_Callback(hObject, eventdata, handles)
% hObject    handle to ampDecaySliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ampAttackA ampDecayA ampReleaseA dur
ampDecayA = get(hObject, 'Value');

maxAmpDecayA = dur - ampAttackA - ampReleaseA;
if ampDecayA > maxAmpDecayA
    ampDecayA = maxAmpDecayA;
    set(hObject, 'Value', ampDecayA);
end

updateAmpModA(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function ampDecaySliderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampDecaySliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function ampSustainSliderA_Callback(hObject, eventdata, handles)
% hObject    handle to ampSustainSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ampSustainA
ampSustainA = get(hObject, 'Value');

updateAmpModA(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function ampSustainSliderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampSustainSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function ampReleaseSliderA_Callback(hObject, eventdata, handles)
% hObject    handle to ampReleaseSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ampAttackA ampDecayA ampReleaseA dur
ampReleaseA = get(hObject, 'Value');

maxAmpReleaseA = dur - ampAttackA - ampDecayA;
if ampReleaseA > maxAmpReleaseA
    ampReleaseA = maxAmpReleaseA;
    set(hObject, 'Value', ampReleaseA);
end

updateAmpModA(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function ampReleaseSliderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampReleaseSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function nHarmonicsField_Callback(hObject, eventdata, handles)
% hObject    handle to nHarmonicsField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nHarmonics
nHarmonics = str2double(get(hObject, 'String'));

if mod(nHarmonics, 1) ~= 0
    nHarmonics = round(nHarmonics);
end

if nHarmonics < 1
    nHarmonics = 1;
end

calcOscA();
calcOscB();
updateOscA(handles);
updateOscB(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function nHarmonicsField_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nHarmonicsField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function filterAttackSliderB_Callback(hObject, eventdata, handles)
% hObject    handle to filterAttackSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filterAttackB filterDecayB filterReleaseB dur
filterAttackB = get(hObject, 'Value');

maxFilterAttackB = dur - filterDecayB - filterReleaseB;
if filterAttackB > maxFilterAttackB
    filterAttackB = maxFilterAttackB;
    set(hObject, 'Value', filterAttackB);
end

updateFilterModB(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function filterAttackSliderB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterAttackSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function filterDecaySliderB_Callback(hObject, eventdata, handles)
% hObject    handle to filterDecaySliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filterAttackB filterDecayB filterReleaseB dur
filterDecayB = get(hObject, 'Value');

maxFilterDecayB = dur - filterAttackB - filterReleaseB;
if filterDecayB > maxFilterDecayB
    filterDecayB = maxFilterDecayB;
    set(hObject, 'Value', filterDecayB);
end

updateFilterModB(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function filterDecaySliderB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterDecaySliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function filterSustainSliderB_Callback(hObject, eventdata, handles)
% hObject    handle to filterSustainSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filterSustainB
filterSustainB = get(hObject, 'Value');

updateFilterModB(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function filterSustainSliderB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterSustainSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function filterReleaseSliderB_Callback(hObject, eventdata, handles)
% hObject    handle to filterReleaseSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filterAttackB filterDecayB filterReleaseB dur
filterReleaseB = get(hObject, 'Value');

maxFilterReleaseB = dur - filterAttackB - filterDecayB;
if filterReleaseB > maxFilterReleaseB
    filterReleaseB = maxFilterReleaseB;
    set(hObject, 'Value', filterReleaseB);
end

updateFilterModB(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function filterReleaseSliderB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterReleaseSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function filterReleaseSliderA_Callback(hObject, eventdata, handles)
% hObject    handle to filterReleaseSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filterAttackA filterDecayA filterReleaseA dur
filterReleaseA = get(hObject, 'Value');

maxFilterReleaseA = dur - filterAttackA - filterDecayA;
if filterReleaseA > maxFilterReleaseA
    filterReleaseA = maxFilterReleaseA;
    set(hObject, 'Value', filterReleaseA);
end

updateFilterModA(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function filterReleaseSliderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterReleaseSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function filterSustainSliderA_Callback(hObject, eventdata, handles)
% hObject    handle to filterSustainSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filterSustainA
filterSustainA = get(hObject, 'Value');

updateFilterModA(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function filterSustainSliderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterSustainSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function filterDecaySliderA_Callback(hObject, eventdata, handles)
% hObject    handle to filterDecaySliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filterAttackA filterDecayA filterReleaseA dur
filterDecayA = get(hObject, 'Value');

maxFilterDecayA = dur - filterAttackA - filterReleaseA;
if filterDecayA > maxFilterDecayA
    filterDecayA = maxFilterDecayA;
    set(hObject, 'Value', filterDecayA);
end

updateFilterModA(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function filterDecaySliderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterDecaySliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function filterAttackSliderA_Callback(hObject, eventdata, handles)
% hObject    handle to filterAttackSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filterAttackA filterDecayA filterReleaseA dur
filterAttackA = get(hObject, 'Value');

maxFilterAttackA = dur - filterDecayA - filterReleaseA;
if filterAttackA > maxFilterAttackA
    filterAttackA = maxFilterAttackA;
    set(hObject, 'Value', filterAttackA);
end

updateFilterModA(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function filterAttackSliderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterAttackSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes when selected object is changed in buttonGroupA.
function buttonGroupA_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in buttonGroupA 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global waveTypeA
waveTypeA = get(get(handles.buttonGroupA, 'SelectedObject'), 'String');

calcOscA();
updateOscA(handles);
updateMain(handles);


% --- Executes on button press in importButton.
function importButton_Callback(hObject, eventdata, handles)
% hObject    handle to importButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in exportButton.
function exportButton_Callback(hObject, eventdata, handles)
% hObject    handle to exportButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in playButton.
function playButton_Callback(hObject, eventdata, handles)
% hObject    handle to playButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global wave fs
sound(wave, fs);


function f0Value_Callback(hObject, eventdata, handles)
% hObject    handle to f0Value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global f0
f0 = str2double(get(hObject, 'String'));
if f0 < 0
    f0 = 0;
    set(hObject, 'String', f0);
end

updateOscA(handles);
updateOscB(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function f0Value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to f0Value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function durValue_Callback(hObject, eventdata, handles)
% hObject    handle to durValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global dur
global ampAttackA ampDecayA ampSustainA ampReleaseA
global ampAttackB ampDecayB ampSustainB ampReleaseB
dur = str2double(get(hObject, 'String'));

if dur < 0
    dur = 0;
    set(hObject, 'String', dur);
end

if ampAttackA + ampDecayA + ampReleaseA > dur
    ampAttackA = 0;
    ampDecayA = 0;
    ampReleaseA = 0;
    set(handles.ampAttackSliderA, 'Value', 0);
    set(handles.ampDecaySliderA, 'Value', 0);
    set(handles.ampReleaseSliderA, 'Value', 0);
end

if ampAttackB + ampDecayB + ampReleaseB > dur
    ampAttackB = 0;
    ampDecayB = 0;
    ampReleaseB = 0;
    set(handles.ampAttackSliderB, 'Value', 0);
    set(handles.ampDecaySliderB, 'Value', 0);
    set(handles.ampReleaseSliderB, 'Value', 0);
end

set(handles.ampAttackSliderA, 'Max', dur);
set(handles.ampDecaySliderA, 'Max', dur);
set(handles.ampReleaseSliderA, 'Max', dur);

set(handles.ampAttackSliderB, 'Max', dur);
set(handles.ampDecaySliderB, 'Max', dur);
set(handles.ampReleaseSliderB, 'Max', dur);

updateAll(handles);


% --- Executes during object creation, after setting all properties.
function durValue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to durValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when selected object is changed in buttonGroupB.
function buttonGroupB_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in buttonGroupB 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global waveTypeB
waveTypeB = get(get(handles.buttonGroupB, 'SelectedObject'), 'String');

calcOscB();
updateOscB(handles);
updateMain(handles);


% --- Executes on selection change in filterTypeMenuA.
function filterTypeMenuA_Callback(hObject, eventdata, handles)
% hObject    handle to filterTypeMenuA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filterTypeA

contents = cellstr(get(hObject,'String'));
filterTypeA = contents{get(hObject,'Value')};

updateFilterA(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function filterTypeMenuA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterTypeMenuA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function filterSlopeSliderB_Callback(hObject, eventdata, handles)
% hObject    handle to filterSlopeSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filterSlopeB
filterSlopeB = get(hObject, 'Value');

updateFilterB(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function filterSlopeSliderB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterSlopeSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function filterResSliderB_Callback(hObject, eventdata, handles)
% hObject    handle to filterResSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filterResB
filterResB = get(hObject, 'Value');

updateFilterB(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function filterResSliderB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterResSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function filterCutoffSliderB_Callback(hObject, eventdata, handles)
% hObject    handle to filterCutoffSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filterCutoffB
filterCutoffB = get(hObject, 'Value');

updateFilterB(handles);
updateMain(handles);



% --- Executes during object creation, after setting all properties.
function filterCutoffSliderB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterCutoffSliderB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in filterTypeMenuB.
function filterTypeMenuB_Callback(hObject, eventdata, handles)
% hObject    handle to filterTypeMenuB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filterTypeB

contents = cellstr(get(hObject,'String'));
filterTypeB = contents{get(hObject,'Value')};

updateFilterB(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function filterTypeMenuB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterTypeMenuB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function filterCutoffSliderA_Callback(hObject, eventdata, handles)
% hObject    handle to filterCutoffSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filterCutoffA
filterCutoffA = get(hObject, 'Value');

updateFilterA(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function filterCutoffSliderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterCutoffSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function filterResSliderA_Callback(hObject, eventdata, handles)
% hObject    handle to filterResSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filterResA
filterResA = get(hObject, 'Value');

updateFilterA(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function filterResSliderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterResSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function filterSlopeSliderA_Callback(hObject, eventdata, handles)
% hObject    handle to filterSlopeSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filterSlopeA
filterSlopeA = get(hObject, 'Value');

updateFilterA(handles);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function filterSlopeSliderA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filterSlopeSliderA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in reverbExtendDurationBox.
function reverbExtendDurationBox_Callback(hObject, eventdata, handles)
% hObject    handle to reverbExtendDurationBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global extendDuration
extendDuration = get(hObject, 'Value');
updateMain(handles);


% --- Executes on slider movement.
function reverbTimeSlider_Callback(hObject, eventdata, handles)
% hObject    handle to reverbTimeSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global reverbTime
reverbTime = get(hObject, 'Value');
set(handles.reverbTimeValue, 'String', reverbTime);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function reverbTimeSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reverbTimeSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function reverbDecaySlider_Callback(hObject, eventdata, handles)
% hObject    handle to reverbDecaySlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global reverbDecay
reverbDecay = get(hObject, 'Value');
set(handles.reverbDecayValue, 'String', reverbDecay);
updateMain(handles);


% --- Executes during object creation, after setting all properties.
function reverbDecaySlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reverbDecaySlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function reverbAmountField_Callback(hObject, eventdata, handles)
% hObject    handle to reverbAmountField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global reverbAmount
reverbAmount = str2double(get(hObject, 'String'));

if mod(reverbAmount, 1) ~= 0
    reverbAmount = round(reverbAmount);
end

if reverbAmount < 0
    reverbAmount = 0;
end

updateMain(handles);


% --- Executes during object creation, after setting all properties.
function reverbAmountField_CreateFcn(hObject, eventdata, handles)
% hObject    handle to reverbAmountField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in resetButton.
function resetButton_Callback(hObject, eventdata, handles)
% hObject    handle to resetButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
init(handles);
updateAll(handles);


% --- Resets all variables and UI controls
function init(handles)

global fs nHarmonics
global f0 dur totalDur

global maxFilterCutoff maxFilterRes maxFilterSlope filterGraphNPoints

global waveTypeA volumeA octaveA semitonesA centsA
global ampsA phasesA
global ampAttackA ampDecayA ampSustainA ampReleaseA
global filterTypeA filterCutoffA filterResA filterSlopeA

global waveTypeB volumeB octaveB semitonesB centsB
global ampsB phasesB
global ampAttackB ampDecayB ampSustainB ampReleaseB
global filterTypeB filterCutoffB filterResB filterSlopeB

global reverbTime reverbDecay reverbAmount extendDuration

% General
fs = 44100;
nHarmonics = 32;
f0 = 440;
dur = 2;
totalDur = dur;
set(handles.fsField, 'String', fs);
set(handles.nHarmonicsField, 'String', nHarmonics);
set(handles.f0Value, 'String', f0);
set(handles.durValue, 'String', dur);
% Filter settings
maxFilterCutoff = 20000;
maxFilterRes = 1;
maxFilterSlope = 10;
filterGraphNPoints = 1000;
set(handles.filterCutoffSliderA, 'Max', maxFilterCutoff);
set(handles.filterCutoffSliderB, 'Max', maxFilterCutoff);
set(handles.filterResSliderA, 'Max', maxFilterRes);
set(handles.filterResSliderB, 'Max', maxFilterRes);
set(handles.filterSlopeSliderA, 'Max', maxFilterSlope);
set(handles.filterSlopeSliderB, 'Max', maxFilterSlope);
% Osc A
waveTypeA = 'Sine';
volumeA = 1;
octaveA = 0;
semitonesA = 0;
centsA = 0;
set(handles.buttonGroupA, 'SelectedObject', handles.sineWaveButtonA);
set(handles.volumeSliderA, 'Value', volumeA);
set(handles.octaveSliderA, 'Value', octaveA);
set(handles.octaveValueA, 'String', octaveA);
set(handles.semitonesSliderA, 'Value', semitonesA);
set(handles.semitonesValueA, 'String', semitonesA);
set(handles.centsSliderA, 'Value', centsA);
set(handles.centsValueA, 'String', centsA);
% Harmonics A
ampsA = [1 zeros(1, nHarmonics-1)];
phasesA = zeros(1, nHarmonics);
% Amp Mod A
ampAttackA = 0;
ampDecayA = 0;
ampSustainA = 0.5;
ampReleaseA = 0;
set(handles.ampAttackSliderA, 'Max', dur);
set(handles.ampDecaySliderA, 'Max', dur);
set(handles.ampSustainSliderA, 'Max', 1);
set(handles.ampReleaseSliderA, 'Max', dur);
set(handles.ampAttackSliderA, 'Value', ampAttackA);
set(handles.ampDecaySliderA, 'Value', ampDecayA);
set(handles.ampSustainSliderA, 'Value', ampSustainA);
set(handles.ampReleaseSliderA, 'Value', ampReleaseA);
% Filter A
filterTypeA = 'LP';
filterCutoffA = 10000;
filterResA = 0;
filterSlopeA = 2;
set(handles.filterTypeMenuA, 'Value', 1); % LP
set(handles.filterCutoffSliderA, 'Value', filterCutoffA);
set(handles.filterResSliderA, 'Value', filterResA);
set(handles.filterSlopeSliderA, 'Value', filterSlopeA);
% Osc B
waveTypeB = 'Sine';
volumeB = 0;
octaveB = 0;
semitonesB = 0;
centsB = 0;
set(handles.buttonGroupB, 'SelectedObject', handles.sineWaveButtonB);
set(handles.volumeSliderB, 'Value', volumeB);
set(handles.octaveSliderB, 'Value', octaveB);
set(handles.octaveValueB, 'String', octaveB);
set(handles.semitonesSliderB, 'Value', semitonesB);
set(handles.semitonesValueB, 'String', semitonesB);
set(handles.centsSliderB, 'Value', centsB);
set(handles.centsValueB, 'String', centsB);
% Harmonics B
ampsB = [1 zeros(1, nHarmonics-1)];
phasesB = zeros(1, nHarmonics);
% Amp Mod B
ampAttackB = 0;
ampDecayB = 0;
ampSustainB = 0.5;
ampReleaseB = 0;
set(handles.ampAttackSliderB, 'Max', dur);
set(handles.ampDecaySliderB, 'Max', dur);
set(handles.ampSustainSliderB, 'Max', 1);
set(handles.ampReleaseSliderB, 'Max', dur);
set(handles.ampAttackSliderB, 'Value', ampAttackB);
set(handles.ampDecaySliderB, 'Value', ampDecayB);
set(handles.ampSustainSliderB, 'Value', ampSustainB);
set(handles.ampReleaseSliderB, 'Value', ampReleaseB);
% Filter B
filterTypeB = 'LP';
filterCutoffB = 10000;
filterResB = 0;
filterSlopeB = 2;
set(handles.filterTypeMenuB, 'Value', 1); % LP
set(handles.filterCutoffSliderB, 'Value', filterCutoffB);
set(handles.filterResSliderB, 'Value', filterResB);
set(handles.filterSlopeSliderB, 'Value', filterSlopeB);
% Reverb
reverbTime = 1;
reverbDecay = 0.8;
reverbAmount = 0;
extendDuration = 1;
set(handles.reverbTimeSlider, 'Value', reverbTime);
set(handles.reverbTimeValue, 'String', reverbTime);
set(handles.reverbDecaySlider, 'Value', reverbDecay);
set(handles.reverbDecayValue, 'String', reverbDecay);
set(handles.reverbAmountField, 'String', reverbAmount);
set(handles.reverbExtendDurationBox, 'Value', extendDuration);


% --- Updates everything.
function updateAll(handles)

calcOscA();
calcOscB();
updateOscA(handles);
updateOscB(handles);
updateAmpModA(handles);
updateAmpModB(handles);
updateFilterA(handles);
updateFilterB(handles);
updateMain(handles);


% --- Calculates amplitudes and phases for oscillator A.
function calcOscA()

global waveTypeA ampsA phasesA nHarmonics

switch waveTypeA
    case 'Sine'
        ampsA = [1 zeros(1, nHarmonics-1)];
        phasesA = zeros(1, nHarmonics);
    case 'Triangle'
        for k = 1:nHarmonics
            if mod(k, 2) == 1
                ampsA(k) = 4*(1 - (-1)^k) / (pi^2 * k^2);
            else
                ampsA(k) = 0;
            end
        end
        phasesA = ones(1, nHarmonics)*pi/2;
    case 'Saw'
        phasesA = zeros(1, nHarmonics);
        ampsA = zeros(1, nHarmonics);
        for k = 1:nHarmonics
            ampsA(k) = 1/k;
            if mod(k, 2) == 0
                phasesA(k) = pi;
            end
        end
    case 'Square'
        ampsA = zeros(1, nHarmonics);
        for k = 1:nHarmonics
            if mod(k, 2) == 1
                ampsA(k) = 1/k;
            end
        end
        phasesA = zeros(1, nHarmonics);
    case 'Pulse'
        
    case 'Noise'
        
end

% --- Calculates amplitudes and phases for oscillator B.
function calcOscB()

global waveTypeB ampsB phasesB nHarmonics

switch waveTypeB
    case 'Sine'
        ampsB = [1 zeros(1, nHarmonics-1)];
        phasesB = zeros(1, nHarmonics);
    case 'Triangle'
        for k = 1:nHarmonics
            if mod(k, 2) == 1
                ampsB(k) = 4*(1 - (-1)^k) / (pi^2 * k^2);
            else
                ampsB(k) = 0;
            end
        end
        phasesB = ones(1, nHarmonics)*pi/2;
    case 'Saw'
        phasesB = zeros(1, nHarmonics);
        ampsB = zeros(1, nHarmonics);
        for k = 1:nHarmonics
            ampsB(k) = 1/k;
            if mod(k, 2) == 0
                phasesB(k) = pi;
            end
        end
    case 'Square'
        ampsB = zeros(1, nHarmonics);
        for k = 1:nHarmonics
            if mod(k, 2) == 1
                ampsB(k) = 1/k;
            end
        end
        phasesB = zeros(1, nHarmonics);
    case 'Pulse'
        
    case 'Noise'
        
end


% --- Updates oscillator A and axesA.
function updateOscA(handles)

global fs f0
global octaveA semitonesA centsA
global nHarmonics ampsA phasesA

f = f0 * 2^octaveA * 2^(semitonesA/12) * 2^(centsA/1200);

T = 1/f;
t = 0 : 1/fs : T-1/fs;
nSamples = length(t);

wave = zeros(1, nSamples);
for k = 1:nHarmonics
    wave = wave + ampsA(k).*sin(2*pi*k*f*t + phasesA(k));
end

if max(wave) ~= 0
    wave = wave / max(wave);
end

axes(handles.axesA);
plot(t, wave);
xlim([0 T]);
ylim([-1 1]);
grid on

% --- Updates oscillator B and axesB.
function updateOscB(handles)

global fs f0
global octaveB semitonesB centsB
global nHarmonics ampsB phasesB

f = f0 * 2^octaveB * 2^(semitonesB/12) * 2^(centsB/1200);

T = 1/f;
t = 0 : 1/fs : T-1/fs;
nSamples = length(t);

wave = zeros(1, nSamples);
for k = 1:nHarmonics
    wave = wave + ampsB(k).*sin(2*pi*k*f*t + phasesB(k));
end

if max(wave) ~= 0
    wave = wave / max(wave);
end

axes(handles.axesB);
plot(t, wave);
xlim([0 T]);
ylim([-1 1]);
grid on


% --- Updates amplitude modulation A including ampModAxesA.
function updateAmpModA(handles)

global fs dur
global ampAttackA ampDecayA ampSustainA ampReleaseA

t = 0 : 1/fs : dur-1/fs;
env = ADSR_Envelope(ampAttackA, ampDecayA, ampSustainA, ampReleaseA, dur, fs);

axes(handles.ampModAxesA);
plot(t, env);
xlim([0 dur]);
ylim([0 1]);
grid on


% --- Updates amplitude modulation B including ampModAxesB.
function updateAmpModB(handles)

global fs dur
global ampAttackB ampDecayB ampSustainB ampReleaseB

t = 0 : 1/fs : dur-1/fs;
env = ADSR_Envelope(ampAttackB, ampDecayB, ampSustainB, ampReleaseB, dur, fs);

axes(handles.ampModAxesB);
plot(t, env);
xlim([0 dur]);
ylim([0 1]);
grid on


% --- Updates filter A including filterAxesA.
function updateFilterA(handles)

global maxFilterCutoff filterGraphNPoints
global filterTypeA filterCutoffA filterResA filterSlopeA

f = linspace(0, maxFilterCutoff, filterGraphNPoints);
a = zeros(1, filterGraphNPoints);

for k = 1:filterGraphNPoints
    % Slope is divided by 10000 to account for the relation between
    % amplitude and frequency, which differ by about 4 orders of magnitude
    a(k) = Filter(filterTypeA, filterCutoffA, filterResA, filterSlopeA/10000, f(k));
end

axes(handles.filterAxesA);
plot(f, a);
xlim([0 maxFilterCutoff]);
ylim([0 2]);
grid on


% --- Updates filter B including filterAxesB.
function updateFilterB(handles)

global maxFilterCutoff filterGraphNPoints
global filterTypeB filterCutoffB filterResB filterSlopeB

f = linspace(0, maxFilterCutoff, filterGraphNPoints);
a = zeros(1, filterGraphNPoints);

for k = 1:filterGraphNPoints
    % Slope is divided by 10000 to account for the relation between
    % amplitude and frequency, which differ by about 4 orders of magnitude
    a(k) = Filter(filterTypeB, filterCutoffB, filterResB, filterSlopeB/10000, f(k));
end

axes(handles.filterAxesB);
plot(f, a);
xlim([0 maxFilterCutoff]);
ylim([0 2]);
grid on


% --- Updates main wave form including mainAxes.
function updateMain(handles)
%% Globals
global wave

global fs nHarmonics
global f0 dur

global volumeA octaveA semitonesA centsA
global ampsA phasesA
global ampAttackA ampDecayA ampSustainA ampReleaseA
global filterTypeA filterCutoffA filterResA filterSlopeA

global volumeB octaveB semitonesB centsB
global ampsB phasesB
global ampAttackB ampDecayB ampSustainB ampReleaseB
global filterTypeB filterCutoffB filterResB filterSlopeB

global reverbTime reverbDecay reverbAmount extendDuration

%% General
t = 0 : 1/fs : dur-1/fs;
n = length(t);

oscBaseFrequencyA = f0 * 2^octaveA * 2^(semitonesA/12) * 2^(centsA/1200);
oscBaseFrequencyB = f0 * 2^octaveB * 2^(semitonesB/12) * 2^(centsB/1200);

%% Oscillator A
% Filter each harmonic and add it to the wave
oscWaveA = zeros(1, n);
for k = 1 : nHarmonics
    filterAmp = Filter(filterTypeA, filterCutoffA, filterResA, filterSlopeA/10000, k*oscBaseFrequencyA);
    oscWaveA = oscWaveA + filterAmp*ampsA(k).*sin(2*pi*k*oscBaseFrequencyA*t + phasesA(k));
end
% Add amplitude modulation
oscWaveA = ADSR_Envelope(ampAttackA, ampDecayA, ampSustainA, ampReleaseA, dur, fs) .* oscWaveA;
% Normalize
maxAmpA = max(oscWaveA);
if maxAmpA ~= 0
    oscWaveA = oscWaveA / maxAmpA;
end

%% Oscillator B
% Filter each harmonic and add it to the wave
oscWaveB = zeros(1, n);
for k = 1 : nHarmonics
    filterAmp = Filter(filterTypeB, filterCutoffB, filterResB, filterSlopeB/10000, k*oscBaseFrequencyB);
    oscWaveB = oscWaveB + filterAmp*ampsB(k).*sin(2*pi*k*oscBaseFrequencyB*t + phasesB(k));
end
% Add amplitude modulation
oscWaveB = ADSR_Envelope(ampAttackB, ampDecayB, ampSustainB, ampReleaseB, dur, fs) .* oscWaveB;
% Normalize
maxAmpB = max(oscWaveB);
if maxAmpB ~= 0
    oscWaveB = oscWaveB / maxAmpB;
end

%% Mixer
wave = volumeA * oscWaveA + volumeB * oscWaveB;

%% Reverb
if reverbAmount == 0
    reverbDelay = 0;
else
    reverbDelay = reverbTime / reverbAmount;
end
% Convert reverbDelay to a divisor of fs
if mod(reverbDelay*fs, 1) ~= 0
    reverbDelay = floor(reverbDelay*fs) / fs;
end
% Add decayed waves to the original
originalWave = wave;
nExtraSamples = round(reverbDelay*fs);
for k = 1:reverbAmount
    wave = [wave zeros(1, nExtraSamples)] + [zeros(1, k*nExtraSamples) reverbDecay^k*originalWave];
end
% Crop wave if no extension
if extendDuration == 0
    wave = wave(1:dur*fs);
    totalDur = dur;
else
    t = 0:1/fs:length(wave)/fs-1/fs;
    totalDur = dur + round(reverbAmount * reverbDelay);
end

%% Normalize
maxAmp = max(wave);
if maxAmp ~= 0
    wave = wave / maxAmp;
end

%% Plot
axes(handles.mainAxes);
plot(t, wave);
xlim([0 totalDur]);
ylim([-1 1]);
grid on
