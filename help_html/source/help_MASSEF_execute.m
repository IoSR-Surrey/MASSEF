%% MASSEF.execute
% Run MASSEF using input mixtures and separators.
% 
%% Syntax
% 
%   massef.execute(mixtures,separators)
%   massef.execute(mixtures)
% 
% |massef.execute(mixtures,separators)| runs the multichannel audio source
% separation evaluation framework (MASSEF) using the <help_MASSEF.html
% MASSEF> instance |massef|, the array of |iosr.bss.mixture| objects
% |mixtures| and the array (or cell array) of instances of separation
% algorithms contained in |separators|. Separation is performed for all
% combinations of separators and mixtures. The separation algorithm
% instances contained in |separators| should conform to the
% <help_Separators.html required format>.
% 
% The |execute| method performs evaluations of the algorithm according to
% the data returned by the algorithm, and the options provided to
% <help_MASSEF.html MASSEF>.
% 
% If the separation algorithm returns a signal, then |MASSEF.execute|
% evaluates:
% 
% * signal-to-noise ratio (SNR);
% * signal-to-ideal-noise ratio (SINR) (the SNR with respect to the signal
% reconstructed using the ideal binary and ratio masks).
% 
% In addition, if |evalPEASS| is true, then PEASS and BSSeval evaluation is
% performed. If |evalSTOI| is true, then STOI evaluation is performed.
% 
% If the separation algorithm returns a mask, and if the ideal mask
% dimensions match the estimated mask dimensions, then |MASSEF.execute|
% evaluates:
% 
% * ideal mask ratio (IMR) with respect to the ideal binary and ratio
% masks.
%
% If the separation algorithm returns a mask but no signals, then MASSEF
% attempts to calculate the estimate signal in order to calculate the
% signal-related metrics mentioned above.
% 
% The |execute| method also calculates and evaluates the ideal binary and
% ratio masks using the signal-related metrics utilised for the algorithm
% evaluation. The masks are calculated using the settings that are local to
% each |iosr.bss.mixture| object.
% 
% Lastly, the framework captures the estimated azimuth and elevation of the
% targets and interferer(s), if they are returned.
% 
% Once the evaluation is complete, the <help_MASSEF.html MASSEF> object,
% which contains the results data in |MASSEF.results| as a
% <help_MASSEFresults.html MASSEFresults> object, is saved to the file
% given by |MASSEF.results_filename|. The separation and mixture objects
% are also saved.
% 
% |massef.execute(mixtures)| evaluates only the ideal masks.
% 
%% See also
% <help_MASSEF.html MASSEF>, <help_MASSEF_evaluate.html MASSEF.evaluate>,
% <help_MASSEFresults.html MASSEFresults>,
% <matlab:doc('iosr.bss.generateMixtures') iosr.bss.generateMixtures>,
% <matlab:doc('iosr.bss.resynthesise') iosr.bss.resynthesise>.
% 
% <html>
% <hr>
% <p>Copyright &copy; 2017 <a href="http://www.surrey.ac.uk">University of Surrey</a><br>
% <a href="http://iosr.uk">Institute of Sound Recording, University of Surrey, UK</a></p>
% </html>
