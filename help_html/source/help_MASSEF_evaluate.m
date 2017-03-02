%% MASSEF.execute
% Run MASSEF using input audio files.
% 
%% Syntax
% 
%   massef.evaluate(originalFiles,estimateFile)
%   massef.evaluate(originalFiles,estimateFile,tag)
%   massef.evaluate(originalFiles,estimateFile,tag,mixNum)
%   massef.evaluate(originalFiles,estimateFile,tag,mixNum,sepNum)
%   massef.evaluate(originalFiles,estimateFile,tag,mixNum,sepNum,estNum)
% 
% |massef.evaluate(originalFiles,estimateFile)| runs the framework using
% the true sources provided in the wav files whose filenames are contained
% in the cell array |originalFiles| (the target source is the first one)
% and the estimate provided in the wav file with filename |estimateFile|.
% 
% The method may be called as many times as desired. Use |massef.save()|
% when finished to save the framework and its data to a file.
% 
% |massef.evaluate(originalFiles,estimateFile,tag)| writes the char array
% |tag| to the results data. Use the tag to identify different estimates in
% the results data.
% 
% |massef.evaluate(originalFiles,estimateFile,tag,mixNum)| uses the mixture
% number |mixNum| to identify the separation of a particular mixture.
% |mixNum| is a key that can be used with |MASSEFresults.mixtureInfo()| in
% order to add information about a particular mixture.
% 
% |massef.evaluate(originalFiles,estimateFile,tag,mixNum,sepNum)| uses the
% separator number |sepNum| to identify the separation from a particular
% algorithm. |sepNum| is a key that can be used with
% |MASSEFresults.algorithmInfo()| in order to add information about a
% particular algorithm.
% 
% |massef.evaluate(originalFiles,estimateFile,tag,mixNum,sepNum,estNum)|
% uses the estimate number |estNum| to identify different estimates
% from a given algorithm (e.g. a binary or soft mask output).
% 
%% See also
% <help_MASSEF.html MASSEF>,
% <help_MASSEFresults.html MASSEFresults>.
% 
% <html>
% <hr>
% <p>Copyright &copy; 2016 <a href="http://www.surrey.ac.uk">University of Surrey</a><br>
% <a href="http://iosr.uk">Institute of Sound Recording, University of Surrey, UK</a></p>
% </html>
