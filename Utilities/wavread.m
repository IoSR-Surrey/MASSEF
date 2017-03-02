function [y,fs,bits] = wavread(filename,arg)
%WAVREAD Read an audio file
% 
%   WAVREAD is a wrapper function for audioread, using the same function
%   name and input arguments as the deprecated MATLAB WAVREAD function. It
%   is provided in order to improve the compatibility of legacy code.
%   
%   Y = WAVREAD(FILENAME) loads an audio file specified by the string
%   FILENAME, returning the sampled data in Y. Audio channels are returned
%   in the columns of Y.
% 
%   [Y,FS,BITS] = WAVREAD(FILENAME) returns the sample rate (FF) in Hertz
%   and the number of bits per sample (BITS) used to encode the data in the
%   file.
% 
%   ... = WAVREAD(FILENAME,N) returns only the first N samples from each
%   channel in the file.
% 
%   ... = WAVREAD(FILENAME,[N1 N2]) returns only samples N1 through N2 from
%   each channel in the file.
%   
%   SIZ = WAVREAD(FILENAME,'SIZE') returns the size of the audio data
%   contained in the file in place of the actual audio data, returning the
%   vector SIZ = [NumSamples NumChannels].
%   
%   See also AUDIOREAD.

%   Copyright 2016 University of Surrey.

    % basic info
    info = audioinfo(filename);
    bits = info.BitsPerSample;

    if nargin>1
        if ischar(arg)
            % return size
            if strcmpi(arg,'size')
                y = [info.TotalSamples info.NumChannels];
            else
                error('Unknown argument ''%s'' specified',arg)
            end
        else
            % return some samples
            assert(isnumeric(arg) && numel(arg)<=2,'The second argument must be a one- or two-element numeric array.')
            [y,fs] = audioread(filename,arg);
        end
    else
        % return all samples
        [y,fs] = audioread(filename);
    end

end
