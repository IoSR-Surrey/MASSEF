%% MASSEFresults
% A class for storing MASSEF results.
% 
%% Syntax
% 
%   r = MASSEFresults
% 
% |r = MASSEFresults| creates an empty MASSEFresult object. Use the
% <help_MASSEFresults_input.html MASSEFresults.input> method to add data.
% The instance has the properties described below.
%   
%% Properties
% <html>
% <table>
% <tr>
% <td><tt>data</tt></td>
% <td>The full results set returned as a Table object (read only). The
% Table has the following columns:
% <ul>
% <li>algorithmNum&mdash;the algorithm number;</li>
% <li>channel&mdash;the audio channel</li>
% <li>estimateNum&mdash;the estimate number;</li>
% <li>estTag&mdash;a tag for each estimate from a given algorithm;</li>
% <li>metric&mdash;the performance metric;</li>
% <li>mixNum&mdash;the mixture number; and</li>
% <li>value&mdash;the value of the performance metric</li>
% </ul>
% Additional mixture and algorithm information is also returned in the
% results set.
% </td>
% </tr>
% <tr>
% <td><tt>estTags</tt></td>
% <td>A list of the <tt>estTags</tt>, taken from the separators, that
% feature in the results set (read only).</td>
% </tr>
% <tr>
% <td><tt>metrics</tt></td>
% <td>The metrics that feature in the results set (read only).</td>
% </tr>
% <tr>
% <td><tt>numAlgorithms</tt></td>
% <td>The number of algorithms in the results set (read-only).</td>
% </tr>
% <tr>
% <td><tt>numEstimates</tt></td>
% <td>The (maximum) number of estimates in the results set (read-only).</td>
% </tr>
% <tr>
% <td><tt>numChannels</tt></td>
% <td>The (maximum) number of channels in the results set (read-only).</td>
% </tr>
% </table>
% </html>
%   
%% Methods
% 
% <html>
% <table>
% <tr>
% <td>MASSEFresults</td>
% <td>Create a MASSEFresults object.</td>
% </tr>
% <tr>
% <td><a href="help_MASSEFresults_algorithmInfo.html">algorithmInfo</a></td>
% <td>Add separation algorithm information.</td>
% </tr>
% <tr>
% <td><a href="help_MASSEFresults_filter.html">filter</a></td>
% <td>Filter the results set.</td>
% </tr>
% <tr>
% <td><a href="help_MASSEFresults_input.html">input</a></td>
% <td>Add performance data.</td>
% </tr>
% <tr>
% <td><a href="help_MASSEFresults_merge.html">merge</a></td>
% <td>Combine results array into singular object.</td>
% </tr>
% <tr>
% <td><a href="help_MASSEFresults_mixtureInfo.html">mixtureInfo</a></td>
% <td>Add mixture information.</td>
% </tr>
% </table>
% </html>
% 
%% See also
% <help_MASSEF.html MASSEF>.
% 
% <html>
% <hr>
% <p>Copyright &copy; 2016 <a href="http://www.surrey.ac.uk">University of Surrey</a><br>
% <a href="http://iosr.uk">Institute of Sound Recording, University of Surrey, UK</a></p>
% </html>
