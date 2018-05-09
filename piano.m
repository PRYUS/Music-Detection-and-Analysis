function varargout = piano(varargin)
% PIANO MATLAB code for piano.fig
%      PIANO, by itself, creates a new PIANO or raises the existing
%      singleton*.
%
%      H = PIANO returns the handle to a new PIANO or the handle to
%      the existing singleton*.
%
%      PIANO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PIANO.M with the given input arguments.
%
%      PIANO('Property','Value',...) creates a new PIANO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before piano_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to piano_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help piano

% Last Modified by GUIDE v2.5 21-Nov-2017 09:47:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @piano_OpeningFcn, ...
                   'gui_OutputFcn',  @piano_OutputFcn, ...
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


% --- Executes just before piano is made visible.
function piano_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to piano (see VARARGIN)

% Choose default command line output for piano
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes piano wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = piano_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in C.
function C_Callback(hObject, eventdata, handles)
% hObject    handle to C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
onPress('C');

% --- Executes on button press in D.
function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
onPress('D');

% --- Executes on button press in E.
function E_Callback(hObject, eventdata, handles)
% hObject    handle to E (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
onPress('E');

% --- Executes on button press in F.
function F_Callback(hObject, eventdata, handles)
% hObject    handle to F (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
onPress('F');

% --- Executes on button press in G.
function G_Callback(hObject, eventdata, handles)
% hObject    handle to G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
onPress('G');

% --- Executes on button press in A.
function A_Callback(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
onPress('A');

% --- Executes on button press in B.
function B_Callback(hObject, eventdata, handles)
% hObject    handle to B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
onPress('B');

% --- Executes on button press in C3.
function C3_Callback(hObject, eventdata, handles)
% hObject    handle to C3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
onPress('C3');

% --- Executes on button press in Eb.
function Eb_Callback(hObject, eventdata, handles)
% hObject    handle to Eb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
onPress('Eb');

% --- Executes on button press in F3.
function F3_Callback(hObject, eventdata, handles)
% hObject    handle to F3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
onPress('F3');

% --- Executes on button press in Ab.
function Ab_Callback(hObject, eventdata, handles)
% hObject    handle to Ab (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
onPress('Ab');

% --- Executes on button press in Bb.
function Bb_Callback(hObject, eventdata, handles)
% hObject    handle to Bb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
onPress('Bb');
function onPress(str)
if str == 'C'
    freq = 523.251;
end
if str == 'C3'
    freq = 554.365;
end
if str == 'D'
    freq = 587.330;
end
if str == 'Eb'
    freq = 622.254;
end
if str == 'E'
    freq = 659.255;
end
if str == 'F'
    freq = 698.456;
end
if str == 'F3'
    freq = 739.989;
end
if str == 'G'
    freq = 783.991;
end
if str == 'Ab'
    freq = 830.609;
end
if str == 'A'
    freq = 880;
end
if str == 'Bb'
    freq = 932.328;
end
if str == 'B'
    freq = 987.767;
end
amp=10 ;
fs=20500;  % sampling frequency
duration=0.2;
values=0:1/fs:duration;
a=amp*sin(2*pi* freq*values);
sound(a)