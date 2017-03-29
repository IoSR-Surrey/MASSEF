classdef MASSEFseparator < handle
%MASSEFseparator Abstract base class for MASSEF separation algorithms
% 
%   MASSEFseparator properties:
%       label       - A label for the instance of the algorithm (shown in
%                     the results file).
%       estTag      - Tags for the estimated outputs.
% 
%   MASSEFseparator methods:
%       MASSEFseparator - Create an instance of the algorithm.
%       separate        - Run the separation algorithm on the time-domain
%                         mixture (Abstract).
% 
%   Note that this is a handle class and hence derived classes are passed
%   by reference.
% 
%   See also MASSEF.

%   Copyright 2016 University of Surrey.
    
    properties
        label  % A label for the instance of the algorithm (shown in the MASSEF results file)
        estTag % Tags for the estimated outputs
    end
    
    methods
        
        % constructor
        function obj = MASSEFseparator()
            obj.label = '';
            obj.estTag = '';
        end
        
        % set estTag
        function set.estTag(obj,val)
            if ischar(val)
                obj.estTag = cellstr(val);
            elseif iscellstr(val)
                obj.estTag = val;
            else
                error('MASSEFseparator:estTag:invalid','''estTag'' must be a char array or cell array of strings');
            end
        end
        
        % set label
        function set.label(obj,val)
            if ischar(val)
                obj.label = val;
            else
                error('MASSEFseparator:label:invalid','''label'' must be a char array');
            end
        end
        
    end
    
    methods (Abstract)
        
        % separation
        [signal,mask,est_azis,est_eles] = separate(obj,mixture);
        
    end
   
end
