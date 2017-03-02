function wavwrite(y,varargin)
%WAVWRITE Write an audio file
% 
%   WAVWRITE is a wrapper function for audiowrite, using the same function
%   name and input arguments as the deprecated MATLAB WAVWRITE function. It
%   is provided in order to improve the compatibility of legacy code.
% 
%   WAVWRITE(Y,FILENAME) writes an audio file specified by the string
%   FILENAME. The audio data in Y should be arranged with one channel per
%   column. The data are assumed to be sampled at 8000 Hz and 16 bits per
%   sample.
% 
%   WAVWRITE(Y,FS,FILENAME) specifies the sample rate FS, in Hertz, of the
%   data.
% 
%   WAVWRITE(Y,FS,N,FILENAME) forces an N-bit file format to be written,
%   where N <= 32.
%   
%   See also AUDIOWRITE.

%   Copyright 2016 University of Surrey.

    % defaults
    fs = 8000;
    N = 16;

    % determine arguments
    switch nargin
        case 1
            error('Not enough input arguments')
        case 2
            filename = varargin{1};
        case 3
            fs = varargin{1};
            filename = varargin{2};
        case 4
            fs = varargin{1};
            N = varargin{2};
            filename = varargin{3};
        otherwise
            error('Too many input arguments')
    end

    % write audio file
    audiowrite(filename,y,fs,'BitsPerSample',N);

end
