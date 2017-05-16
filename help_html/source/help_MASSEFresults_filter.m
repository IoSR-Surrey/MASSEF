%% MASSEFresults.filter
% Filter the results data set.
% 
%% Syntax
% 
%   r.filter('name','value')
% 
% |r.filter('name','value')| filters the results set contained in the
% <help_MASSEFresults.html MASSEFresults> object |r| using the variable names
% and values contained in the |'name'| / |'value'| pair arguments. The
% parameters are:
% 
% * |'algorithmnum'|&mdash;Filters the data according to the algorithm
% number. The parameter should be a function handle that takes the mixture
% number as its input, and returns a logical value.
% * |'channel'|&mdash;Filters the data according to channel information.
% The parameter can be a function handle that takes the channel number as
% its input, and returns a logical value. Alternatively, the parameter can
% be 'max' or 'mean', which calculates the the maximum or mean respectively
% for every combination of the other variables.
% * |'estimate'|&mdash;Filters the data according to estimate information.
% The specification is identical to 'channel'.
% * |'estTag'|&mdash;Filters the data according to the estmate tag. The
% parameter should be a function handle that takes the tag string as its
% input, and returns a logical value.
% * |'metric'|&mdash;Filters the data according to the metric. The
% parameter should be a function handle that takes the metric name as its
% input, and returns a logical value.
% * |'mixnum'|&mdash;Filters the data according to the mixture number. The
% parameter should be a function handle that takes the mixture number as
% its input, and returns a logical value.
% * |'value'|&mdash;Filters the data according to the value. The parameter
% should be a function handle that takes the value as its input, and
% returns a logical value.
% 
% <html>
% <hr>
% <p>Copyright &copy; 2017 <a href="http://www.surrey.ac.uk">University of Surrey</a><br>
% <a href="http://iosr.uk">Institute of Sound Recording, University of Surrey, UK</a></p>
% </html>
