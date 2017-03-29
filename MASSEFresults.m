classdef MASSEFresults < handle
%MASSEFRESULTS A class for storing MASSEF results
% 
%   The multichannel audio source separation evaluation framework uses this
%   class to store results. You can use its methods to recall and filter
%   the data.
%   
%   MASSEFRESULTS properties:
%     Read-only properties:
%       data            - The full results set returned as a Table object
%                         (read only). The Table has the following columns:
%                             - algorithmNum - the algorithm number;
%                             - channel - the audio channel
%                             - estimateNum - the estimate number;
%                             - estTag - a tag for each estimate from a
%                               given algorithm;
%                             - metric - the performance metric;
%                             - mixNum - the mixture number; and
%                             - value - the value of the performance metric
%                         Additional mixture and algorithm information is
%                         also returned in the results set.
%       estTags         - A list of the estTags, taken from the separators,
%                         that feature in the results set (read only).
%       metrics         - The metrics that feature in the results set (read
%                         only).
%       numAlgorithms   - The number of algorithms in the results set (read
%                         only).
%       numMixtures     - The number of mixtures in the results set (read
%                         only).
%       numEstimates    - The (maximum) number of estimates in the results
%                         set (read only).
%       numChannels     - The (maximum) number of channels in the results
%                         set (read only).
%   
%   MASSEFRESULTS methods:
%       MASSEFresults       - Create a MASSEFresults object.
%       algorithmInfo       - Add algorithm information.
%       boxPlot             - Analyse the results data by plotting notched
%                             box plots.
%       filter              - Filter the results set.
%       input               - Add performance data.
%       merge               - Combine results array into singular object.
%       mixtureInfo         - Add mixture information.
%       removeDuplicates    - Remove duplicate data from the results
%                             object.
% 
%   See also MASSEFFW.

%   Copyright 2016 University of Surrey.
    
    properties (SetAccess = private, Dependent)
        data            % The full results set.
        estTags         % A tag assigned to each estimate.
        metrics         % The metrics that feature in the results set.
        numAlgorithms   % The number of algorithms in the results set.
        numMixtures     % The number of mixtures in the results set.
        numEstimates    % The (maximum) number of estimates in the results set.
        numChannels     % The (maximum) number of channels in the results set.
    end
    
    properties (Access = private)
        mixtures        % mixtures table
        algorithms      % algorithms table
        performance     % main performance table
    end
    
    methods
        
        function obj = MASSEFresults()
        %MASSEFRESULTS Create the results set.
        %   
        %   R = MASSEFRESULTS creates an empty MASSEFRESULTS object. Use the
        %   MASSEFRESULTS.INPUT method to add data.
        
            obj.mixtures = cell2table(cell(0,9), 'VariableNames',{'mixNum','azi_sep','elevation','filename_t','filename_i','sofa_path','target_azi','target_ele','tir'});
            obj.algorithms = cell2table(cell(0,2), 'VariableNames',{'algorithmNum','algorithmLabel'});
            obj.performance = cell2table(cell(0,7), 'VariableNames',{'mixNum','algorithmNum','estimateNum','channel','metric','estTag','value'});
        
        end
        
        function data = get.data(obj)
        % GET.DATA get data set
        
            data = obj.joinLookupTables(obj.performance);
            
        end
        
        function metrics = get.metrics(obj)
        % GET.METRICS get metrics
            metrics = unique(obj.performance.metric);
        end
        
        function estTags = get.estTags(obj)
        % GET.METRICS get metrics
            estTags = unique(obj.performance.estTag);
        end
        
        function numAlgorithms = get.numAlgorithms(obj)
        % GET.NUMALGORITHMS get number of algorithms
            numAlgorithms = length(unique(obj.performance.algorithmNum));
        end
        
        function numMixtures = get.numMixtures(obj)
        % GET.NUMMIXTURES get number of mixtures
            numMixtures = length(unique(obj.performance.mixNum));
        end
        
        function numEstimates = get.numEstimates(obj)
        % GET.NUMESTIMATES get number of estimates
            numEstimates = length(unique(obj.performance.estimateNum));
        end
        
        function numChannels = get.numChannels(obj)
        % GET.NUMCHANNEL get number of channels
            numChannels = length(unique(obj.performance.channel));
        end
        
        function newObj = merge(obj)
        % MERGE Combine MASSEFresults array into singular object
        %
        %   NEWOBJ = R.MERGE() combines the elements of the MASSEFRESULTS array
        %   R into a singular MASSEFRESULTS object NEWOBJ.
        
            newObj = obj(1);
            if length(obj) > 1
                for n = 2:length(obj)
                    % combine lookup table and eliminate duplicate rows
                    newObj.mixtures = vertcat(newObj.mixtures,obj(n).mixtures);
                    newObj.algorithms = vertcat(newObj.algorithms,obj(n).algorithms);
                    % combine all rows of performance tables
                    newObj.performance = vertcat(newObj.performance,obj(n).performance);
                end
            end
            newObj.removeDuplicates();
            
        end
        
        function removeDuplicates(obj)
        % REMOVEDUPLICATES Remove duplicate data from MASSEFresults object
        %
        %   R.REMOVEDUPLICATES() removes duplicate results from the
        %   MASSEFRESULTS object R.
        
            obj.mixtures = unique(obj.mixtures);
            obj.algorithms = unique(obj.algorithms);
            obj.performance = unique(obj.performance);
            
        end
        
        function data = filter(obj,varargin)
        %FILTER Filter the results data set
        %
        %   R.FILTER(NAME,VALUE) filters the results set contained in the
        %   MASSEFRESULTS object R using the variable names and values
        %   contained in the NAME / VALUE pair arguments. The parameters
        %   are:
        % 
        %       - 'algorithmnum' - Filters the data according to the
        %         algorithm number. The parameter should be a function
        %         handle that takes the mixture number as its input, and
        %         returns a logical value.
        %       - 'channel' - Filters the data according to channel
        %         information. The parameter can be a function handle that
        %         takes the channel number as its input, and returns a
        %         logical value. Alternatively, the parameter can be 'max'
        %         or 'mean', which calculates the the maximum or mean
        %         respectively for every combination of the other
        %         variables.
        %       - 'estimate' - Filters the data according to estimate
        %         information. The specification is identical to 'channel'.
        %       - 'estTag' - Filters the data according to the estmate tag.
        %         The parameter should be a function handle that takes the
        %         tag string as its input, and returns a logical value.
        %       - 'metric' - Filters the data according to the metric. The
        %         parameter should be a function handle that takes the
        %         metric name as its input, and returns a logical value.
        %       - 'mixnum' - Filters the data according to the mixture
        %         number. The parameter should be a function handle that
        %         takes the mixture number as its input, and returns a
        %         logical value.
        %       - 'value' - Filters the data according to the value. The
        %         parameter should be a function handle that takes the
        %         value as its input, and returns a logical value.
            
            assert(mod(length(varargin),2)==0,'MASSEFresults:filter:invalidArgs','input must contain parameter/value pairs')
            data = obj.data;
            
            % work through varargin
            for n = 1:2:length(varargin)
                filtername = varargin{n}; % column to filter on
                filterval = varargin{n+1}; % value used to filter
                switch lower(filtername) % do filtering
                    case 'channel'
                        data = obj.filterRowOrAggregate(data,filterval,'channel',...
                            {'mixNum','algorithmNum','estimateNum','metric'},...
                            {'mixNum','algorithmNum','metric'});
                    case 'estimate'
                        data = obj.filterRowOrAggregate(data,filterval,'estimateNum',...
                            {'mixNum','algorithmNum','channel','metric'},...
                            {'mixNum','algorithmNum','metric'});
                    case 'mixnum'
                        data = obj.filterRows(data,filterval,'mixNum');
                    case 'algorithmnum'
                        data = obj.filterRows(data,filterval,'algorithmNum');
                    case 'metric'
                        data = obj.filterRows(data,filterval,'metric');
                    case 'esttag'
                        data = obj.filterRows(data,filterval,'estTag');
                    case 'value'
                        data = obj.filterRows(data,filterval,'value');
                    otherwise
                    
                end
                
            end
        
        end
        
        function mixtureInfo(obj,mixtureNumber,varargin)
        %MIXTUREINFO Add mixture information.
        %   
        %   R.MIXTUREINFO(MIXTURENUM,NAME,VALUE) adds algorithm information
        %   for the mixture with number MIXTURENUM to the results set
        %   contained in the MASSEFRESULTS object R using the variable names
        %   and values contained in the NAME / VALUE pair arguments. The
        %   following information can be stored about each mixture:
        % 
        %       - 'azi_sep' - azimuthal separation of widest sources
        %         (numeric);
        %       - 'elevation' - median elevation of sources (numeric);
        %       - 'filename_t' - target filename (char array);
        %       - 'filename_i' - interferer filename (char array);
        %       - 'sofa_path' - SOFA filename (char array);
        %       - 'target_azi' - the target azimuth (numeric);
        %       - 'target_ele' - the target elevation (numeric); and
        %       - 'tir' - target-to-interferer ratio (dB) (numeric).
            
            % ensure some inputs are strings
            varargin = obj.ensureKeyValParamStrs({'sofa_path','filename_t','filename_i'},varargin);
            
            % add data
            obj.mixtures = obj.addData(obj.mixtures,'mixNum',mixtureNumber,varargin{:});
            
        end
        
        function algorithmInfo(obj,algorithmNumber,varargin)
        %ALGORITHMINFO Add algorithm information.
        %
        %   R.ALGORITHMINFO(ALGORITHMNUM,NAME,VALUE)| adds algorithm
        %   information for the algorithm with number ALGORITHMNUM to the
        %   results set contained in the MASSEFRESULTS object R using the
        %   variable names and values contained in the NAME / VALUE pair
        %   arguments. The following information can be stored about each
        %   algorithm:
        % 
        %       - 'algorithmLabel'  - a label for the algorithm (char
        %                             array).
            
            % ensure some inputs are strings
            varargin = obj.ensureKeyValParamStrs('algorithmLabel',varargin);
            
            obj.algorithms = obj.addData(obj.algorithms,'algorithmNum',algorithmNumber,varargin{:});
            
        end
        
        function input(obj,mixtureNum,algorithmNum,estimateNum,metric,channel,estTag,value)
        %INPUT Input performance data.
        %   
        %   R.INPUT(MIXTURENUM,ALGORITHMNUM,...
        %       ESTIMATENUM,METRIC,CHANNEL,ESTTAG,VALUE)
        %   inputs the performance data for mixture number MIXTURENUM,
        %   algorithm number ALGORITHMNUM, estimate number ESTIMATENUM,
        %   metric METRIC, channel number CHANNEL, estimate tag ESTTAG, and
        %   value VALUE to the MASSEFRESULTS instance R.
            
            if ~ischar(estTag)
                estTag = char(estTag);
            end
            
            rownames = {'mixNum','algorithmNum','estimateNum','metric','channel','estTag','value'};
            values = {mixtureNum,algorithmNum,estimateNum,metric,channel,estTag,value};
            row = cell2table(values, 'VariableNames',rownames);
            
            try
                % find existing row
                match = obj.performance.mixNum==mixtureNum && ...
                    obj.performance.algorithmNum==algorithmNum && ...
                    obj.performance.estimateNum==estimateNum && ...
                    strcmp(metric,obj.performance.metric) && ...
                    obj.performance.channel==channel && ...
                    strcmp(estTag,obj.performance.estTag);

                if any(match)
                    % replace
                    obj.performance(find(match,1,'first'),:) = row;
                else
                    % append
                    obj.performance = [obj.performance; row];
                end
            catch % there is no data
                % append
                obj.performance = [obj.performance; row];
            end
            
        end
        
        function bph = boxPlot(obj)
        %BOXPLOT Analyse the results data by plotting notched box plots
        %
        %   R.BOXPLOT() produces a series of box plots, one for each
        %   metric, plotting the performance of each algorithms/estimate
        %   aggregated across all mixtures.
        %
        %   BPH = R.BOXPLOT() returns an array of IOSR.STATISTICS.BOXPLOT
        %   objects BPH for the plots.
            
            for m = numel(obj.metrics):-1:1
                
                tabData = obj.filter('metric', @(x) strcmp(x, obj.metrics{m}), 'channel', 'max');
                tabData.name = strcat(tabData.algorithmLabel, ':', {' '}, tabData.estTag);
                
                [y, x] = iosr.statistics.tab2box(tabData.name, tabData.value);
                
                figure
                bph(m) = iosr.statistics.boxPlot(x, y, 'notch', true);
                ylabel(obj.metrics{m})
                xlabel('Algorithm')
                box on
                
            end
            
        end
        
    end % public methods
    
    methods (Hidden)
        
        function debug(obj) %#ok<MANU>
            keyboard;
        end
        
    end % hidden methods
    
    methods (Access = private)
        
        function dataTable = filterRowOrAggregate(obj,dataTable,filterval,col,group,altgroup)
        %FILTERROWORAGGREGATE filter data based on aggregate function.
            
            if ischar(filterval)
                % special aggregate function
                switch lower(filterval)
                    case 'max'
                        fhandle = @max;
                    case 'mean'
                        fhandle = @mean;
                    otherwise
                        error('MASSEFresults:filterRowOrAggregate:unknownOption','Unknown filter parameter ''%s''.',filterval)
                end
                % do stats
                try
                    filteredTable = varfun(fhandle,dataTable,'InputVariables','value',...
                        'GroupingVariables',group);
                    keys = group;
                catch
                    filteredTable = varfun(fhandle,dataTable,'InputVariables','value',...
                        'GroupingVariables',altgroup);
                    keys = altgroup;
                end
                % rename value column and delete GroupCount column
                filteredTable = obj.findRenameVar(filteredTable,'value','value');
                filteredTable.GroupCount = [];
                [~, ia, ib] = intersect(filteredTable(:,keys), dataTable(:,keys));
                dataTable.value(ib) = filteredTable.value(ia);
                dataTable = dataTable(ib, :);
            else
                % normal filter function
                dataTable = obj.filterRows(dataTable,filterval,col);
            end
            
        end
        
        function dataTable = joinLookupTables(obj,dataTable)
        %JOINLOOKUPTABLES join a table to the lookup tables
            
            if ~isempty(obj.mixtures)
                dataTable = outerjoin(dataTable,obj.mixtures,'Type','left','MergeKeys',true,'keys','mixNum');
            end
            if ~isempty(obj.algorithms)
                dataTable = outerjoin(dataTable,obj.algorithms,'Type','left','MergeKeys',true);
            end
            
        end
        
    end % private methods
    
    methods (Static, Access = private)
        
        function dataTable = addData(dataTable,key,keyVal,varargin)
        %ADDDATA add data to lookup tables.
            
            assert(mod(length(varargin),2)==0,'MASSEFresults:addData:invalidArgs','input must contain parameter/value pairs')
            rI = find(ismember(dataTable.(key),keyVal),1,'first');
            if isempty(rI) % add a new row
                % get data from varargin
                varnames = cell(0);
                vals = cell(0);
                for n = 1:2:length(varargin)
                    varnames{(n+1)/2} = varargin{n};
                    vals{(n+1)/2} = varargin{n+1};
                end
                % make new row
                vars = dataTable.Properties.VariableNames;
                newrow = cell(1,length(vars));
                newrow{strcmp(key,vars)} = keyVal;
                for r = 1:length(varnames)
                    if ismember(varnames{r},vars);
                        newrow{strcmp(varnames{r},vars)} = vals{r};
                    end
                end
                newrow = cell2table(newrow,'VariableNames',vars);
                % append
                dataTable = [dataTable; newrow];
            else % update row
                for n = 1:2:length(varargin)
                    try
                        dataTable(rI,varargin(n)) = varargin(n+1);
                    catch
                        dataTable.(varargin{n})(rI) = varargin(n+1);
                    end
                end
            end
            
        end
        
        function dataTable = findRenameVar(dataTable,old,new)
        %FINDRENAMEVAR Find and rename a variable.
            
            varnames = dataTable.Properties.VariableNames;
            k = find(cellfun(@(x) ~isempty(strfind(x,old)),varnames),1,'first');
            dataTable.Properties.VariableNames{varnames{k}} = new;
            
        end
        
        function dataTable = filterRows(dataTable,fhandle,col)
        %FILTERROWS filter the rows in a table.
            
            assert(isa(fhandle,'function_handle'),'MASSEFresults:filterRows:invalidFhandle','Parameter must be a function handle')
            dataTable = dataTable(fhandle(dataTable.(col)),:);
            
        end
        
        function C = ensureKeyValParamStrs(keys,keyValArray)
            keys = cellstr(keys);
            C = keyValArray;
            keyValArrayStr = cellfun(@char,keyValArray,'UniformOutput',false);
            [~,~,ib] = intersect(keys,keyValArrayStr);
            C(ib+1) = cellfun(@char,C(ib+1),'UniformOutput',false);
        end
        
    end % private static methods
    
end
