%% Multichannel audio source separation evaluation framework (MASSEF)
% 
%% Overview
% 
% <<../MASSEF.png>>
% 
% The multichannel audio source separation evaluation framework is designed
% to facilitate the development and evaluation of audio source separation
% algorithms. The framework generates the mixture(s), provides the
% mixture(s) to the separation algorithm(s), and evaluates the outputs of
% the separation algorithm(s). The framework can also calculate and
% evaluate the ideal masks for the purposes of comparison.
% 
% Sources may have any number of channels; the framework evaluates each
% channel. The use of iosr.bss.mixture objects facilitate the evaluation of
% spatialised mixtures (e.g. binaural).
% 
% The framework comprises two main classes:
% 
% * <help_MASSEF.html MASSEF>&mdash;multichannel audio source separation
% evaluation framework class.
% * <help_MASSEFresults.html MASSEFresults>&mdash;the results class used by
% MASSEF.
% 
% <help_Example.html View an example of the use of these classes.>
% 
% MASSEF can be used to evaluate and compare binaural separation algorithms,
% provided that the algorithms conform to the <help_Separators.html
% required format>.
% 
%% Installation
% 
% Before using the framework, you need to download and install its
% dependencies. This can be done automatically using the
% <help_MASSEF_install.html MASSEF.install()> method. Before each session,
% MASSEF needs to be started using the <help_MASSEF_start.html
% MASSEF.start()> method.
% 
%% Usage 
% 
% The framework can be run in two ways:
% 
% # by providing |iosr.bss.mixture| objects and separation algorithms, or
% # by providing estimate and true source wav files.
%   
% If 1), the framework operates as described above. In addition, the
% framework can:
% 
% * evaluate localisation accuracy (if the algorithm performs localisation)
% of any azimuth/elevation estimates returned by the algorithm, and
% * evaluate time-frequency mask accuracy (if the algorithm calculates
% one).
% 
% Use the <help_MASSEF_execute.html MASSEF.execute()> method to operate in
% this mode.
% 
% If 2), the framework evaluates only the supplied estimate(s) using
% signal-related metrics. Use the <help_MASSEF_evaluate.html
% MASSEF.evaluate()> method to operate in this mode.
% 
% <html>
% <hr>
% <p>Copyright &copy; 2016 <a href="http://www.surrey.ac.uk">University of Surrey</a><br>
% <a href="http://iosr.uk">Institute of Sound Recording, University of Surrey, UK</a></p>
% </html>
