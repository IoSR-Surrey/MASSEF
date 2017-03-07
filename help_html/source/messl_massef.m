classdef messl_massef < MASSEFseparator
%MESSL_MASSEF Wrapper class for the MESSL algorithm.
%
%   A wrapper class for the MESSL algorithm (https://github.com/mim/messl).
%
%   MESSL_MASSEF properties:
%       label       - A label for the instance of the algorithm (shown in
%                     the results file).
%       estTag      - Tags for the estimated outputs.
%       fs          - The sampling frequency that the separator will run
%                     at.
%
%   MESSL_MASSEF methods:
%       messl_massef    - Create an instance of the algorithm.
%       separate        - Run the separation algorithm on the time-domain
%                         mixture.
%
%   See also MASSEF.

%   Copyright 2016 University of Surrey.
    
    properties % Public properties
        fs     % Sampling frequency
    end
    
    methods
        
        function obj = messl_massef(fs) % constructor
        %MESSL_MASSEF Create an instance of the separation algorithm
        %
        %   OBJ = MESSL_MASSEF(FS) creates an instance of the MESSL
        %   algorithm at the sampling frequency FS.
            
            % this code creates an instance of the object
            obj.label = 'MESSL';
            obj.estTag = {'Fancier usage'};
            obj.fs = fs;
            
            % check dependency is compiled
            iosr.general.checkMexCompiled('logProbGmm.cpp');
            
        end
        
        % separation
        function [signal,mask,est_azis,est_eles] = separate(obj,mixture)
        %SEPARATE separate the mixture
        %
        %   SIGNAL = OBJ.SEPARATE(MIXTURE) separates the time-domain
        %   mixture signal MIXTURE and produces the estimated output
        %   SIGNAL.
            
            lr = mixture';
            tau = tauGrid(0.15, obj.fs, 31);
            
            m = messl(lr, tau, 2, 'vis', 1, 'ildPriorPrec', 3, ...
                'GarbageSrc', 1, 'sr', 16000, 'vis', 0);
            
            m2 = prob2mask(m);
            signal = reconstruct(m2, lr, 1);
            
            mask = [];
            est_azis = [];
            est_eles = [];
            
        end
        
    end
    
end
