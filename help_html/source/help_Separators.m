%% Separation Algorithms
% 
% Separation algorithms passed to the <help_MASSEF_execute.html
% MASSEF.execute> method have a small number of requirements. Specifically,
% the algorithm should be implemented as a class, with some required
% methods and properties, detailed below.
% 
%% Required Methods
% 
% There is only one required method for the separation algorithm:
% |separate|. The algorithm may have any number of additional methods,
% which may accept and return any number of arguments.
% 
% The |separate| method should have the following signature:
% 
%   [signals,masks,est_azis,est_eles] = obj.separate(mixture)
% 
% where |obj| is the separation algorithm object, |signals| are the
% estimated signals, |masks| are time-frequency masks, |est_azis| are the
% estimated azimuths, |est_eles| are the estimated elevations, and
% |mixture| is the time-domain mixture signal.
% 
% Time-domain signals may contain any number of channels, stored in the
% columns of their matrices. In addition, |signals| may have a third
% dimension, used to carry different estimations. Multiple estimations
% facilitate, for example, outputs due to binary and ratio masks. The masks
% in |masks| should have dimensions |[N F C E]| where |N| is the number of
% frames, |F| is the number of frequency bins/channels, |C| is the number
% of audio channels, and |E| is the number of estimations. |est_azis| and
% |est_eles| may be a vector, with an element for each  source; the first
% element is the target source, subsequent elements are interferers.
% 
% Although all outputs must be provided by the method, outputs that are not
% estimated may be specified as an empty array.
% 
%% Required Properties
% 
% There are two required properties for the separation algorithm:
% 
% * |label|&mdash;a label for the instance of the algorithm (char array);
%   and
% * |estTag|&mdash;tags for the estimated outputs (cell array of strings).
% 
% These properties are both reported in the results. The algorithm may have
% any number of additional properties.
% 
%% MASSEFseparator base class
% 
% The |MASSEFseparator| class is provided for use as a base class for
% separation algorithms. The |separate()| method is abstract and hence must
% be implemented in the derived class. See the <help_Example.html Example>
% page for an example of the use of |MASSEFseparator|.
% 
%% See also
% <help_MASSEF.html MASSEF>, <help_MASSEF_execute.html MASSEF.execute>.
% 
% <html>
% <hr>
% <p>Copyright &copy; 2016 <a href="http://www.surrey.ac.uk">University of Surrey</a><br>
% <a href="http://iosr.uk">Institute of Sound Recording, University of Surrey, UK</a></p>
% </html>
