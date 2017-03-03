%% Example
% 
%% First steps 

MASSEF.install; % you only need to do this once!
MASSEF.start; % start MASSEF

%% Make mixtures
% Specify the source files:

target_fns = {'s1.wav','s2.wav'}; % target filenames
interferer_fns = {'s11.wav','s12.wav'}; % interferer filenames

%%
% Create some |iosr.bss.source| objects for targets and interferers:

t(length(target_fns),1) = iosr.bss.source;
i(length(interferer_fns),1) = iosr.bss.source;

%%
% Make sources from filenames:

for n = 1:length(target_fns)
    t(n,1) = iosr.bss.source(target_fns{n});
end
for n = 1:length(interferer_fns)
    i(n,1) = iosr.bss.source(interferer_fns{n});
end

% Specify source spatial parameters:

azimuths = [-5 5]; % target and interferer azimuths
tirs = [-10 0]; % target-to-interferer ratios
rooms = {'UniS_Room_A_BRIR_16k.sofa'}; % SOFA file for spatialisation

%%
% Generate the mixtures, in all combinations of the various mixture
% parameters, and render the mixtures to disk.

fs = 16000;

mixtures = iosr.bss.generateMixtures(t,i,...
    'sofa_paths',rooms,...
    'azimuths',azimuths,...
    'tirs',tirs,...
    'fs',fs,...
    'cache',true,...
    'folder','mixture_temp',...
    'combine','all',...
    'decomposition','gammatone',...
    'gammatone',struct(...
        'cfs',iosr.auditory.makeErbCFs(20,7500,32),...
        'frame',round(0.02*fs)...
    )...
);

%% Instantiate the separation algorithm

p = messl_massef(fs);

%% Choose MASSEF options
% Specify the parameters of the MASSEF object:

options = struct( ...
    'evalPEASS',false,... % don't run PEASS
    'evalSTOI',false);    % don't run STOI

%% Run MASSEF

massef = MASSEF(options);
massef.execute(mixtures,p);

%%
% Once |execute| is complete, |massef| will be saved to
% |Results/results.mat|. The performance data are stored in
% |massef.results|. The full dataset can be recalled as a |Table| object in
% the following way:

resultsTable = massef.results.data;

%% See also
% <help_MASSEF.html MASSEF>, <help_MASSEFresults.html MASSEFresults>.
% 
% <html>
% <hr>
% <p>Copyright &copy; 2016 <a href="http://www.surrey.ac.uk">University of Surrey</a><br>
% <a href="http://iosr.uk">Institute of Sound Recording, University of Surrey, UK</a></p>
% </html>
