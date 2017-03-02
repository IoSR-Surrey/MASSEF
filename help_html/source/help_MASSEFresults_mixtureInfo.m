%% MASSEFresults.mixtureInfo
% Add mixture information.
% 
%% Syntax
% 
%   r.mixtureInfo(mixtureNum,'name','value')
% 
% |r.mixtureInfo(mixtureNum,'name','value')| adds algorithm information for
% the mixture with number |mixtureNum| to the results set contained in the
% <help_MASSEFresults.html MASSEFresults> object |r| using the variable
% names and values contained in the |'name'| / |'value'| pair arguments.
% The following information can be stored about each mixture:
% 
% * |'azi_sep'|&mdash;azimuthal separation of widest sources (numeric);
% * |'elevation'|&mdash;median elevation of sources (numeric);
% * |'filename_t'|&mdash;target filename (char array);
% * |'filename_i'|&mdash;interferer filename (char array);
% * |'sofa_path'|&mdash;SOFA filename (char array);
% * |'target_azi'|&mdash;the target azimuth (numeric);
% * |'target_ele'|&mdash;the target elevation (numeric); and
% * |'tir'|&mdash;target-to-interferer ratio (dB) (numeric).
% 
% <html>
% <hr>
% <p>Copyright &copy; 2016 <a href="http://www.surrey.ac.uk">University of Surrey</a><br>
% <a href="http://iosr.uk">Institute of Sound Recording, University of Surrey, UK</a></p>
% </html>
