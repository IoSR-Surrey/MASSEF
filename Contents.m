% MASSEF
% 
%   Contents file for MASSEF and its subfolders.
%   
%   MASSEF
%   info.xml
%   LICENSE.txt
%   MASSEF                               - Multichannel audio source separation evaluation framework
%   MASSEFresults                        - A class for storing MASSEF results
%   MASSEFseparator                      - Abstract base class for MASSEF separation algorithms
%   README.md
%   
%   MASSEF/HELP_HTML
%   help_Example.html
%   help_Index.html
%   help_MASSEF.html
%   help_MASSEF_evaluate.html
%   help_MASSEF_execute.html
%   help_MASSEF_install.html
%   help_MASSEF_save.html
%   help_MASSEF_start.html
%   help_MASSEFresults.html
%   help_MASSEFresults_algorithmInfo.html
%   help_MASSEFresults_filter.html
%   help_MASSEFresults_input.html
%   help_MASSEFresults_merge.html
%   help_MASSEFresults_mixtureInfo.html
%   help_Separators.html
%   helptoc.xml
%   
%   MASSEF/HELP_HTML/HELPSEARCH-V3
%   _1s.cfe
%   _1s.cfs
%   _1s.si
%   segments.gen
%   segments_1t
%   
%   MASSEF/HELP_HTML/SOURCE
%   help_Example                         - Example
%   help_Index                           - Multichannel audio source separation evaluation framework (MASSEF)
%   help_MASSEF                          - MASSEF
%   help_MASSEF_evaluate                 - MASSEF.execute
%   help_MASSEF_execute                  - MASSEF.execute
%   help_MASSEF_install                  - MASSEF.install
%   help_MASSEF_save                     - MASSEF.save
%   help_MASSEF_start                    - MASSEF.start
%   help_MASSEFresults                   - MASSEFresults
%   help_MASSEFresults_algorithmInfo     - MASSEFresults.algorithmInfo
%   help_MASSEFresults_filter            - MASSEFresults.filter
%   help_MASSEFresults_input             - MASSEFresults.input
%   help_MASSEFresults_merge             - MASSEFresults.merge
%   help_MASSEFresults_mixtureInfo       - MASSEFresults.mixtureInfo
%   help_Separators                      - Separation Algorithms
%   publishHelp
%   
%   MASSEF/LIBRARY
%   classTemplate                        - Summary of this class goes on this H1 line
%   functionTemplate                     - Summary of this function goes on this H1 line
%   LICENSE
%   README.md
%   release-notes.md
%   
%   MASSEF/LIBRARY/+IOSR
%   iosr.install                         - Set search paths, and download and install dependencies
%   
%   MASSEF/LIBRARY/+IOSR/+ACOUSTICS
%   iosr.acoustics.irStats               - Calculate RT, DRR, Cte, and EDT for impulse response file
%   iosr.acoustics.rtEst                 - Estimate reverberation time based on room size and absorption
%   
%   MASSEF/LIBRARY/+IOSR/+AUDITORY
%   iosr.auditory.azimuth2itd            - Convert azimuth in degrees to ITD
%   iosr.auditory.binSearch              - Conduct a binary search
%   iosr.auditory.calcIld                - Calculate normalised interaural level difference
%   iosr.auditory.chXcorr                - Calculate cross-correlograms with a wide range of options
%   iosr.auditory.chXcorr2               - Calculate cross-correlograms with a range of options
%   chXcorr2_c.c
%   chXcorr_c.c
%   iosr.auditory.createWindow           - Create a Hann or exp. window with specified onsets/offsets
%   iosr.auditory.dupWeight              - Calculate duplex weighting coefficients for ITD and ILD
%   iosr.auditory.erbRate2hz             - Convert ERB rate to Hz
%   iosr.auditory.freqMulti              - Calculate frequency coefficient for ITD-azimuth warping
%   iosr.auditory.gammatoneFast          - Produce an array of responses from gammatone filters via FFT
%   iosr.auditory.hz2erbRate             - Convert Hz to ERB rate
%   iosr.auditory.instItd                - Calculate instantaneous ITD
%   iosr.auditory.iso226                 - ISO 226:2003 Normal equal-loudness-level contours
%   iosr.auditory.itd2azimuth            - Convert ITD to azimuth
%   iosr.auditory.lindemannInh           - Signal pre-processing for Lindemann's cross-correlation
%   iosr.auditory.loudWeight             - Calculate loudness weighting coefficients based on ISO 226
%   iosr.auditory.makeErbCFs             - Make a series of center frequencies equally spaced in ERB-rate
%   iosr.auditory.meddisHairCell         - Calculate Ray Meddis' hair cell model for a number of channels
%   iosr.auditory.perceptualCentroid     - Perceptual spectral centroid
%   iosr.auditory.xcorrLindemann         - Cross-correlation based on Lindemann's precedence model
%   xcorrLindemann_c.c
%   
%   MASSEF/LIBRARY/+IOSR/+BSS
%   iosr.bss.applyIdealMasks             - Calculate and apply ideal masks via STFT
%   iosr.bss.applyMask                   - Apply a time-frequency mask to an STFT
%   iosr.bss.calcImr                     - Calculates the Ideal Mask Ratio (IMR)
%   iosr.bss.calcSnr                     - Calculate the separation SNR
%   iosr.bss.cfs2fcs                     - Calculate gammatone crossover frequencies
%   iosr.bss.example                     - Determine STFT parameters
%   iosr.bss.generateMixtures            - Generate arrays of mixtures from targets and interferers
%   iosr.bss.getFullMask                 - Convert frame rate mask to a sample-by-sample mask
%   iosr.bss.idealMasks                  - Calculate ideal time-frequency masks from STFTs
%   iosr.bss.mixture                     - Class of sound source separation mixture
%   iosr.bss.resynthesise                - Resynthesise a target from a time-frequency mask
%   iosr.bss.source                      - Class of sound source separation source
%   
%   MASSEF/LIBRARY/+IOSR/+DSP
%   iosr.dsp.audio                       - Abstract superclass providing audio-related properties and methods
%   iosr.dsp.autocorr                    - Perform autocorrelation via FFT
%   iosr.dsp.convFft                     - Convolve two vectors using FFT multiplication
%   iosr.dsp.istft                       - Calculate the Inverse Short-Time Fourier Transform
%   iosr.dsp.lapwin                      - Laplace window
%   iosr.dsp.localpeaks                  - Find local peaks and troughs in a vector
%   iosr.dsp.ltas                        - Calculate the long-term average spectrum of a signal
%   iosr.dsp.matchEQ                     - Match the LTAS of a signal to an arbitrary spectral magnitude
%   iosr.dsp.rcoswin                     - Raised cosine window
%   iosr.dsp.rms                         - Calculate the rms of a vector or matrix
%   iosr.dsp.sincFilter                  - Apply a near-ideal low-pass or band-pass brickwall filter
%   iosr.dsp.smoothSpectrum              - Apply 1/N-octave smoothing to a frequency spectrum
%   iosr.dsp.stft                        - Calculate the short-time Fourier transform of a signal
%   iosr.dsp.vsmooth                     - Smooth a vector using mathematical functions
%   
%   MASSEF/LIBRARY/+IOSR/+FIGURES
%   iosr.figures.chMap                   - Create a monochrome-compatible colour map
%   iosr.figures.cmrMap                  - Create a monochrome-compatible colour map
%   iosr.figures.multiwaveplot           - Stacked line plots from a matrix or vectors
%   iosr.figures.subfigrid               - Create axis positions for subfigures
%   
%   MASSEF/LIBRARY/+IOSR/+GENERAL
%   iosr.general.cell2csv                - Output a cell array to a CSV file
%   iosr.general.checkMexCompiled        - Check if mex file is compiled for system
%   iosr.general.getContents             - Get the contents of a specified directory
%   iosr.general.updateContents          - Create a Contents.m file including subdirectories
%   iosr.general.urn                     - Generate random number sequence without duplicates
%   
%   MASSEF/LIBRARY/+IOSR/+STATISTICS
%   iosr.statistics.boxPlot              - Draw a box plot
%   iosr.statistics.functionalSpreadPlot - Draw a functional plot showing data spread
%   iosr.statistics.getRmse              - Calculate the root-mean-square error between input data
%   iosr.statistics.laprnd               - Pseudorandom numbers drawn from the Laplace distribution
%   iosr.statistics.qqPlot               - Quantile-quantile plot with patch option
%   iosr.statistics.quantile             - Quantiles of a sample via various methods
%   iosr.statistics.statsPlot            - An abstract superclass for classes that plot statistics
%   iosr.statistics.tab2box              - Prepare tabular data for boxPlot function
%   iosr.statistics.trirnd               - Pseudorandom numbers drawn from the triangular distribution
%   
%   MASSEF/LIBRARY/+IOSR/+SVN
%   iosr.svn.buildSvnProfile             - Read data from files tagged with SVN keywords
%   iosr.svn.headRev                     - Retrieve the head revision for specified files
%   iosr.svn.readSvnKeyword              - Read data from a file tagged with an SVN keyword
%   
%   MASSEF/LIBRARY/DEPS/SOFA_API
%   history.txt
%   readme.txt
%   SOFAaddVariable
%   SOFAappendText
%   SOFAarghelper                        - Parse arguments for SOFA
%   SOFAcalculateAPV
%   SOFAcheckFilename
%   SOFAcompact
%   SOFAcompare                          - SOFASOFAcompare
%   SOFAcompileConventions
%   SOFAconvertCoordinates
%   SOFAdbPath                           - DbPath=SOFAdbPath
%   SOFAdbURL                            - DbURL=SOFAdbURL
%   SOFAdefinitions
%   SOFAexpand
%   SOFAgetConventions
%   SOFAgetVersion
%   SOFAinfo                             - (Obj) gathers information about the SOFA object and display it
%   SOFAload
%   SOFAmerge
%   SOFAplotGeometry                     - (Obj) plots the geometry found in the Obj
%   SOFAplotHRTF                         - (OBJ, TYPE, CH) plots the CH channel of HRTFs given in OBJ
%   SOFAsave
%   SOFAspat
%   SOFAstart
%   SOFAupdateDimensions
%   SOFAupgradeConventions               - SOFAcompatibility
%   
%   MASSEF/LIBRARY/DEPS/SOFA_API/CONVENTIONS
%   GeneralFIR.csv
%   GeneralFIRE.csv
%   GeneralString.csv
%   GeneralTF.csv
%   MultiSpeakerBRIR.csv
%   SimpleFreeFieldHRIR.csv
%   SimpleFreeFieldSOS.csv
%   SimpleFreeFieldTF.csv
%   SimpleHeadphoneIR.csv
%   SingleRoomDRIR.csv
%   
%   MASSEF/LIBRARY/DEPS/SOFA_API/CONVERTERS
%   miro                                 - :: Measured Impulse Response Object
%   SOFAconvertARI2SOFA                  - OBJ=SOFAconvertARI2SOFA(hM,meta,stimPar) converts the HRTFs described in hM, meta, and
%   SOFAconvertBTDEI2SOFA                - OBJ=SOFAconvertBTDEI2SOFA(BTDEI) converts the HRTFs described in BT-DEI
%   SOFAconvertCIPIC2SOFA                - Obj=SOFAconvertCIPIC2SOFA(CIPIC) converts the HRTFs described in the structure CIPIC
%   SOFAconvertFHK2SOFA                  - OBJ=SOFAconvertFHK2SOFA(miroObj) converts the HRTFs described in miroObj
%   SOFAconvertLISTEN2SOFA               - Obj=SOFAconvertLISTEN2SOFA(LISTEN, subjectID) converts the HRTFs described in LISTEN
%   SOFAconvertMIT2SOFA                  - OBJ=SOFAconvertMIT2SOFA(root,pinna) loads the MIT HRTFs saved in a
%   SOFAconvertSCUT2SOFA                 - OBJ=SOFAconvertSCUT2SOFA(root,pinna) loads the SCUT HRTFs saved in a
%   SOFAconvertSOFA2ARI                  - OBJ=SOFAconvertSOFA2ARI(hM,meta,stimPar) converts the  HRTFs described in hM, meta, and
%   SOFAconvertTUBerlin2SOFA             - OBJ=SOFAconvertTUBerlin2SOFA(irs) converts the HRTFs described in irs
%   SOFAconvertTUBerlinBRIR2SOFA         - OBJ=SOFAconvertTUBerlin2SOFA(irs) converts the HRTFs described in irs
%   SOFAhrtf2dtf                         - Converts HRTFs to DTFs (and CTFs)
%   
%   MASSEF/LIBRARY/DEPS/SOFA_API/COORDINATES
%   hor2sph                              - Transform horizontal-polar to spherical coordinates
%   nav2sph                              - Coordinate Transform
%   sph2hor                              - Transform spherical to horizontal-polar coordinates
%   sph2nav                              - Coordinate Transform
%   
%   MASSEF/LIBRARY/DEPS/SOFA_API/DEMOS
%   demo_ARI2SOFA                        - SOFA API - demo script
%   demo_BTDEI2SOFA                      - SOFA API demo script
%   demo_CIPIC2SOFA                      - Copyright (C) 2012-2013 Acoustics Research Institute - Austrian Academy of Sciences;
%   demo_FHK2SOFA                        - SOFA API - demo script
%   demo_HpIR                            - SOFA API - demo script
%   demo_LISTEN2SOFA                     - SOFA API - demo script
%   demo_MIT2SOFA                        - SOFA API - demo script
%   demo_SCUT2SOFA                       - SOFA API - demo script
%   demo_SimpleFreeFieldHRIR2TF          - SOFA API - demo script
%   demo_SingleRoomDRIROldenburg         - Demo for SingleRoomDRIR: save DRIR data from Uni Oldenburg (Office II) as
%   demo_SOFA2ARI                        - SOFA API - demo script
%   demo_SOFAexpandcompact               - SOFA API - demo script
%   demo_SOFAHRTF2DTF                    - SOFA API - demo script
%   demo_SOFAload                        - SOFA API - demo script
%   demo_SOFAmerge                       - SOFA API - demo script
%   demo_SOFAplotHRTF                    - - script demonstrating the usage of SOFAplotHRTF
%   demo_SOFAsave
%   demo_SOFAspat                        - SOFA API - demo script
%   demo_SOFAstrings                     - Script for testing the string array feature of SOFA
%   demo_SOFAvariables                   - SOFA API - script demonstrating the usage of variables in the API
%   demo_TUBerlin2SOFA                   - SOFA API - demo script
%   
%   MASSEF/LIBRARY/DEPS/SOFA_API/HELPER
%   deg2rad                              - Returns the given angle in radians
%   isargchar                            - Tests if the given arg is a char and returns an error otherwise
%   isargfile                            - Tests if the given arg is a file and returns an error otherwise
%   isargstruct                          - Tests if the given arg is a struct and returns an error otherwise
%   isoctave                             - True if the operating environment is octave
%   rad2deg                              - Returns the given angle in degree
%   
%   MASSEF/LIBRARY/DEPS/SOFA_API/NETCDF
%   NETCDFdisplay
%   NETCDFload
%   NETCDFsave
%   
%   MASSEF/LIBRARY/DEPS/SOFA_API/TEST
%   test_SOFAall                         - SOFA API - test script
%   
%   MASSEF/UTILITIES
%   wavread                              - Read an audio file
%   wavwrite                             - Write an audio file
%   
%   MASSEF/UTILITIES/AMT
%   amtauxdatapath                       - Path of the auxiliary data
%   amtauxdataurl                        - URL of the auxiliary data
%   amtbasepath                          - The base path of the AMT installation
%   amtcache                             - Cache variables for later or retrieves variables from cache
%   amtdisp                              - AMT-specific overload of the function 'disp'
%   amtflags                             - Returns the start-up flags of the AMT
%   amthelp                              - Help on the AMToolbox
%   amtload                              - Load auxiliary data of a model
%   amtmex                               - Compile Mex/Oct interfaces
%   amtoolbox_version
%   amtredofile                          - Determine if file should be redone
%   amtstart                             - Start the Auditory Modeling Toolbox
%   CHANGES.txt
%   COPYING
%   gpl-3.0.txt
%   INSTALL
%   README-for-SF.txt
%   
%   MASSEF/UTILITIES/AMT/ARG
%   arg_absolutethreshold
%   arg_adaptloop
%   arg_amtcache
%   arg_amtdisp
%   arg_amtredofile
%   arg_auditoryfilterbank
%   arg_baumgartner2014                  - CP-Falgs:
%   arg_dietz2011filterbank              - Parameters for filtering the haircell output
%   arg_dietz2011interauralfunctions     - See Fig. 3c in Dietz (2011)
%   arg_drnl                             - Parameters according to Lopez-Poveda and Meddis 2001
%   arg_eicell                           - Temporal smoothing constant
%   arg_ihcenvelope
%   arg_langendijk2002comp
%   arg_lindemann1986bincorr
%   arginit
%   
%   MASSEF/UTILITIES/AMT/BINAURAL
%   binauralinit
%   breebaart2001preproc                 - Auditory model from Breebaart et. al. 2001
%   dietz2011                            - Dietz 2011 binaural model
%   enzner2008                           - Calculate HRIR set using the method of Enzner et al. (2008)
%   georganti2013                        - Binaural spectral-magnitude difference standard deviation according to Georganti et al., (2013)
%   lindemann1986                        - Calculates a binaural activation pattern
%   lindemann1986centroid                - Calculates the centroid for a cross-correlation
%   may2011                              - GMM-based estimation of azimuth direction for concurrent speakers
%   takanen2013                          - Binaural auditory model by Takanen, Santala, and Pulkki 2013
%   wierstorf2013                        - Estimate the localization within a WFS or stereo setup
%   ziegelwanger2013                     - Time of arrival estimates
%   ziegelwanger2013offaxis              - XXX
%   ziegelwanger2013onaxis               - XXX
%   ziegelwanger2014                     - Time of arrival estimates
%   ziegelwanger2014offaxis              - Off-axis time-of-arrival model
%   ziegelwanger2014onaxis               - On-axis time-of-arrival model
%   
%   MASSEF/UTILITIES/AMT/DEMOS
%   demo_absolutethreshold               - Standards for absolute threshold of hearing
%   demo_adaptloop                       - Show the effect of adaptation
%   demo_baumgartner2013                 - Demo for sagittal-plane localization model from Baumgartner et al. (2013)
%   demo_baumgartner2014                 - Demo for sagittal-plane localization model from Baumgartner et al. (2014)
%   demo_drnl                            - Widening of filters in the DRNL
%   demo_gammatone                       - Demo for gammatone.m
%   demo_herzke2007                      - Filterbank example
%   demo_hohmann2002                     - Filterbank example
%   demo_jelfs2011                       - Binaural speech intelligibility advantage
%   demo_joergensen2013                  - Demo for the multi-resolution speech-based envelope spectrum model
%   demo_lindemann1986                   - Demo of the Lindemann binaural model
%   demo_may2011                         - Demo of the model estimating the azimuths of concurrent speakers
%   demo_takanen2013                     - Demo of the binaural model by Takanen, Santala and Pulkki
%   demo_verhulst2012                    - Demo of the cochlear model calculating otoacoustic emissions
%   demo_zilany2014                      - Demo of the Zilany et al., (2014) model
%   demosinit
%   
%   MASSEF/UTILITIES/AMT/EXPERIMENTS
%   exp_baumgartner2013                  - Figures from Baumgartner et al. (2013)
%   exp_baumgartner2014                  - Figures from Baumgartner et al. (2014)
%   exp_dietz2011                        - Experiments from Dietz et al. 2011
%   exp_enzner2008                       - Creates figures like [Enzner2008, Fig. 2], [Enzner2009, Fig. 4]
%   exp_gammatone                        - Creates various figures related to the Gammatone filters
%   exp_georganti2013                    - Figures from Georganti et al. (2013)
%   exp_hohmann2002                      - Figures from Hohmann (2012)
%   exp_jelfs2011                        - Figures from Jelfs et al. (2011)
%   exp_joergensen2011                   - Figures from Jørgensen and Dau (2011)
%   exp_joergensen2013                   - Figures from Jørgensen, Ewert and Dau (2013)
%   exp_langendijk2002                   - Experiment from Langendijk & Bronkhorst (2002)
%   exp_lindemann1986                    - Figures from Lindemann (1986)
%   exp_lopezpoveda2001                  - Figures from Lopez-Poveda and Meddis (2001)
%   exp_roenne2012                       - Figures from Rønne et al. (2012)
%   exp_spille2013                       - Experiments from Spille et al 2013. Model: Dietz et al 2011
%   exp_takanen2013                      - Figures from Takanen, Santala, Pulkki (2013a,2013b)
%   exp_verhulst2012                     - Compute figurs from the Verhulst paper
%   exp_wierstorf2013                    - Figures from Wierstorf (2013)
%   exp_ziegelwanger2013                 - Figures from Ziegelwanger and Majdak (2013)
%   exp_ziegelwanger2014                 - Figures from Ziegelwanger and Majdak (2014)
%   experimentsinit
%   
%   MASSEF/UTILITIES/AMT/FILTERS
%   cqdft                                - FFT-based filter bank with constant relative bandwidth according
%   Example_Filter                       - This example creates a 4th order gammatone filter with a center
%   Example_Synthesis                    - This Example demonstrates how to create and how to use the combined
%   filterbank_block                     - Process signal block in a filterbank
%   filterbank_init                      - Wrapper around filter to multiple filters
%   filterbankz                          - Filter bank with zero boundary condition
%   filtersinit                          - P = mfilename('fullpath');
%   gammatone                            - Gammatone filter coefficients
%   gfb_analyzer_clear_state             - Reset filter states
%   gfb_analyzer_new                     - Construct new analyzer object
%   gfb_analyzer_process                 - Process input data
%   gfb_analyzer_zresponse               - Frequency response
%   gfb_delay_clear_state                - Clear delay lines
%   gfb_delay_new                        - Create new delay object
%   gfb_delay_process                    - Filterbank delay processing
%   gfb_filter_clear_state               - Clear filters
%   gfb_filter_new                       - Constructor of a cascaded gammatonefilter
%   gfb_filter_process                   - Filter input data
%   gfb_filter_zresponse                 - Filter response at freqenzy z
%   gfb_mixer_new                        - Create new mixer
%   gfb_mixer_process                    - [output, mixer] = gfb_mixer_process(mixer, input)
%   gfb_set_constants                    - This file defines global constants for the matlab gammatone filterbank
%   gfb_synthesizer_clear_state          - Synthesizer = gfb_synthesizer_clear_state(synthesizer)
%   gfb_synthesizer_new                  - Create new synthesizer
%   gfb_synthesizer_process              - [output, synthesizer] = gfb_synthesizer_process(synthesizer, input)
%   may2011gammatone                     - Gammatone   Auditory filterbank
%   may2011gammatoneinit                 - Initialize gammatone filterbank structure
%   thirdoctrmsanalysis24                - THIRDOCTRMSANALYSIS  XXX Description
%   ufilterbankz                         - Uniform Filter bank with zero boundary condition
%   weightedaveragefilter                - Compute the weighted or self-weighted average
%   
%   MASSEF/UTILITIES/AMT/GENERAL
%   audspecgram                          - Auditory spectrogram
%   dbspl                                - RMS value of signal (in dB)
%   extractsp                            - Sagittal plane (SP) HRTFs from measurement data
%   generalinit
%   itd2angle                            - Converts the given ITD to an angle using a lookup table
%   itd2anglelookuptable                 - Generates an ITD-azimuth lookup table for the given HRTF set
%   localizationerror                    - Compute psychoacoustic performance parameters for sound localization experiments
%   modspecgram                          - Modulation spectrogram
%   setdbspl                             - Set level of signal in dB
%   sph2horpolar                         - From spherical to horizontal-polar coordinate system
%   stmodspecgram                        - Spectro-Temporal Modulation spectrogram
%   
%   MASSEF/UTILITIES/AMT/HRTF
%   hrtfinit
%   
%   MASSEF/UTILITIES/AMT/HRTF/BAUMGARTNER2013
%   readme.txt
%   
%   MASSEF/UTILITIES/AMT/HRTF/BAUMGARTNER2014
%   readme.txt
%   
%   MASSEF/UTILITIES/AMT/HRTF/WIERSTORF2013
%   readme
%   
%   MASSEF/UTILITIES/AMT/HRTF/ZIEGELWANGER2013
%   readme.txt
%   
%   MASSEF/UTILITIES/AMT/HRTF/ZIEGELWANGER2014
%   readme.txt
%   
%   MASSEF/UTILITIES/AMT/HUMANDATA
%   absolutethreshold                    - Absolute threshold at specified frequencies
%   data_baumgartner2013                 - Data from Baumgartner et al. (2013)
%   data_baumgartner2014                 - Data from Baumgartner et al. (2014)
%   data_best2005                        - Listener averages of absolute polar angle error and SCC
%   data_elberling2010                   - ABR wave V data as functon of level and sweeping rate
%   data_glasberg1990                    - Notched-noise data for the ERB scale
%   data_goode1994                       - Returns data points from the Goode et al. (1994) paper
%   data_goupell2010                     - Localization performance in sagittal planes
%   data_harte2009                       - Tone burst stimuli from Harte et al. (2009)
%   data_joergensen2011                  - XXX
%   data_langendijk2002                  - Data from Langendijk & Bronkhorst (2002)
%   data_lindemann1986                   - Data points from the Lindemann (1986a) paper
%   data_lopezpoveda2001                 - Data from Lopez-Poveda & Meddis (2001)
%   data_macpherson2003                  - Listener averages of polar error rates
%   data_majdak2010                      - Listener specific localization performance
%   data_majdak2013                      - Listener specific localization in saggital planes
%   data_majdak2013ctc                   - Listener-specific localization in sagittal planes
%   data_middlebrooks1999                - Statistics about non-individualized HRTFs
%   data_neely1988                       - ABR wave V data as functon of level and sweeping rate
%   data_pralong1996                     - Head phone data from Pralong & Carlile (1996)
%   data_roenne2012                      - Unitary response
%   data_takanen2013                     - Data applied in the model by Takanen, Santala and Pulkki
%   data_wierstorf2013                   - Data points from the Wierstorf (2013) book chapter
%   data_ziegelwanger2013                - Data from Ziegelwanger and Majdak (2013)
%   data_ziegelwanger2014                - Data from Ziegelwanger and Majdak (2014)
%   data_zwicker1961                     - Data for the Bark scale
%   humandatainit
%   siiweightings                        - Compute the SII weightings
%   speechpercentcorrect                 - Converts the overall SNRenv to percent correct
%   
%   MASSEF/UTILITIES/AMT/MEX
%   comp_adaptloop.c
%   comp_adaptloop                       - Computation of adaptation loops
%   comp_karjalainen1996.c
%   comp_may2011frameData.cpp
%   comp_may2011frameData                - Private method, which is normally shadowed by the
%   comp_may2011gammatone.cpp
%   comp_may2011gammatone                - Comp_gammatone   Private method, which is normally shadowed by the
%   comp_may2011xcorrNorm.cpp
%   comp_may2011xcorrNorm                - Comp_xcorrNorm   Private method, which is normally shadowed by the
%   comp_meddishaircell.c
%   comp_zilany2007humanized.c
%   comp_zilany2014_model_IHC.c
%   comp_zilany2014_model_Synapse.c
%   mexinit
%   
%   MASSEF/UTILITIES/AMT/MODELSTAGES
%   adaptloop                            - Adaptation loops
%   adaptloop_init                       - ADAPTLOOP   Adaptation loops
%   adaptloop_run                        - COMP_ADAPTLOOP   Computation of adaptation loops
%   auditoryfilterbank                   - Linear auditory filterbank
%   baumgartner2013calibration           - Calibration of listener-specific sensitivity
%   baumgartner2013pmv2ppp               - PMV to PPP conversion
%   baumgartner2014calibration           - Calibration of listener-specific sensitivity thresholds to experimental performance
%   baumgartner2014likelistat            - Likelihood estimation for evaluating model performance
%   baumgartner2014parametrization       - - Joint optimization of model parameters
%   baumgartner2014pmv2ppp               - PMV to PPP conversion
%   baumgartner2014virtualexp            - Response patterns of virtual localization experiments
%   culling2005bmld                      - Binaural Masking Level Difference
%   dietz2011filterbank                  - Filterbank of Dietz 2011 binaural model
%   dietz2011interauralfunctions         - Interaural stages of Dietz 2011
%   dietz2011unwrapitd                   - Unwraps the given itd using the sign of the corresponding ild
%   drnl                                 - Dual Resonance Nonlinear Filterbank
%   eicell                               - Excitation-inhibition cell computation for the Breebaart model
%   ffGn                                 - Fast (exact) fractional Gaussian noise and Brownian motion generator
%   headphonefilter                      - Combined headphone and outer ear filter
%   ihcenvelope                          - Inner hair cell envelope extration
%   karjalainen1996                      - Non-linear adapation network
%   langendijk2002comp                   - Comparison process according to Langendijk et al. (2002)
%   lindemann1986bincorr                 - Cross-correlation between two input signals a la Lindemann
%   may2011cbarlabel                     - Name   Short description..
%   may2011classifyGMM                   - *********************  CHECK INPUT ARGUMENTS  ***********************
%   may2011estAzimuth_GMM                - Select method for integrating localization information across time
%   may2011findLocalPeaks                - FINDPEAKS finds peaks with optional quadratic interpolation [K,V]=(X,M,W)
%   may2011fireprint                     - FIREPRINT Colormap that increases linearly in lightness (with colors)
%   may2011frameData                     - FrameData   Frame data
%   may2011interpolateParabolic          - InterpolateParabolic   Multi-channel parabolic interpolation
%   may2011neuraltransduction            - Developed with Matlab 7.5.0.342 (R2007b). Please send bug reports to:
%   may2011xcorrNorm                     - XcorrNorm   Normalized time-domain cross-correlation function
%   mfc                                  - OLDFORMAT
%   mfc2                                 - Generate all possible modulation frequencies
%   middleearfilter                      - Middle ear filter
%   modelstagesinit
%   modfilterbank                        - Modulation filter bank
%   modfilterbankepsm                    - Modulation filterbank, EPSM version
%   optimaldetector                      - Generic optimal detector for the CASP and Breebaart models
%   takanen2013contracomparison          - Enhanance the contrast between the hemispheres
%   takanen2013cueconsistency            - Check the consistency before the cues are combined
%   takanen2013directionmapping          - Map the directional cues to directions
%   takanen2013formbinauralactivitymap   - Steer the "what" cues on a topographic map using the "where" cues
%   takanen2013lso                       - Model of the lateral superior olive
%   takanen2013mso                       - Model of the medial superior olive
%   takanen2013onsetenhancement          - Emphasize the onsets on direction analysis
%   takanen2013periphery                 - Process the input through the model of periphery
%   takanen2013wbmso                     - Wideband MSO model
%   wierstorf2013estimateazimuth         - Estimate the perceived azimuth using a binaural model
%   
%   MASSEF/UTILITIES/AMT/MONAURAL
%   baumgartner2013                      - Model for sound localization in saggital planes
%   baumgartner2014                      - Model for localization in saggital planes
%   dau1996preproc                       - Auditory model from Dau et. al. 1996
%   dau1997preproc                       - Auditory model from Dau et. al. 1997
%   jepsen2008preproc                    - Auditory model from Jepsen et. al. 2008
%   langendijk2002                       - Localization model according to Langendijk et al. (2002)
%   langendijk2002likelihood             - Likelihood estimation for evaluating model performance
%   monauralinit
%   roenne2012                           - Simulates an ABR to any given stimulus
%   roenne2012chirp                      - Simulate chirp evoked ABRs
%   roenne2012click                      - Simulate ABR respone to click
%   roenne2012tonebursts                 - Simulate tone burst evoked ABR wave V latencies
%   verhulst2012                         - Process a signal with the cochlear model by Verhulst et. al. 2012
%   viemeister1979                       - The Viemeister (1979) leaky-integrator model
%   zilany2007humanized                  - Humanized auditory nerve model
%   zilany2014                           - Auditory nerve (AN) model
%   
%   MASSEF/UTILITIES/AMT/OCT
%   comp_adaptloop.cc
%   comp_adaptloop_run.cc
%   comp_meddishaircell.cc
%   Makefile
%   octinit
%   
%   MASSEF/UTILITIES/AMT/PLOT
%   plot_baumgartner2013                 - Plot probabilistic prediction matrixes
%   plot_baumgartner2014                 - Plot probabilistic prediction matrixes
%   plot_baumgartner2014likelistat       - Plots likelihood statistics according to Langendijk et al. (2002)
%   plot_joergensen2011                  - Plot Fig. 5 or 6 of Jørgensen and Dau (2011)
%   plot_joergensen2013                  - Plot SRTs in the style of Fig. 2 from Joergensen et al., (2013)
%   plot_langendijk2002                  - Plots pdf-matrixes with gray colormap according to Langendijk et al. (2002)
%   plot_langendijk2002likelihood        - Likelihood statistics according to Langendijk et al. (2002)
%   plot_lindemann1986                   - Plots the binaural output pattern of the lindemann model
%   plot_roenne2012                      - Plot the output from the Roenne 2012 model
%   plot_roenne2012chirp                 - Plot Fig. 6 or 7 of Rønne et al. (2012)
%   plot_roenne2012tonebursts            - Plots Rønne et al. (2012) Fig. 5
%   plot_ziegelwanger2013                - XXX Headline missing
%   plot_ziegelwanger2014                - Plot time-of-arrival
%   plotinit
%   
%   MASSEF/UTILITIES/AMT/SIGNALS
%   bincorrnoise                         - Binaurally correlated noise
%   bmsin                                - Generate a binaural modulated sinus
%   competingtalkers                     - Load one of several test signals
%   ildsin                               - Sinusoid with a interaural level difference (ILD)
%   irns                                 - Generate iterated rippled noise
%   itdildsin                            - Generate a sinusoid with a interaural time difference
%   itdsin                               - Generate a sinusoid with a interaural time difference
%   notchednoise                         - Generates a notched-noise-type masker
%   perfectsweep                         - Create a sweep with constant magnitude spectrum
%   signalsinit
%   simulatedimpulseresponses            - Return a simulated impulse response
%   transposedtone                       - Transposed tone test stimuli
%   whitenoiseburst                      - Generate the noise signal used for the binaural model to predict the perceived
%   
%   MASSEF/UTILITIES/AMT/SPEECH
%   jelfs2011                            - Predicted binaural advantage for speech in reverberant conditions
%   joergensen2011                       - The speech-based envelope power spectrum model
%   joergensen2011combineinformation     - Combine information
%   joergensen2011multchansnrenv
%   joergensen2011overlapadd3            - Y=OverlapAdd(X,A,W,S);
%   joergensen2011PCtodSRT               - : calculates the SRT and change in SRT from the simulated percent correct
%   joergensen2011sim                    - Simulate the experiments shown in figure 5 and 6 of Jørgensen and Dau (2011)
%   joergensen2011specsub                - Usage: [output Nzeros] = joergensen2011sepsub(input,noise,W,padz,SP,factor,fs)
%   joergensen2013                       - The multi-resolution sEPSM
%   joergensen2013sim                    - Simulate the experiments shown in figure 2 of Jørgensen, Ewert and Dau (2013)
%   speechinit
%   taal2011                             - The Short-time objective intelligibility measure (STOI)
%   
%   MASSEF/UTILITIES/AMT/SRC
%   adaptloop.c
%   amtoolbox.h
%   Makefile
%   meddishaircell.c
%   
%   MASSEF/UTILITIES/AMT/SRC/VERHULST
%   cochlea_utils.c
%   cochlear_model.py
%   make.bat
%   makefile
%   README.txt
%   run_cochlear_model.py
%   
%   MASSEF/UTILITIES/AMT/SRC/VERHULST/OUT
%   init
%   
%   MASSEF/UTILITIES/AMT/SRC/ZILANY5
%   ANmodel                              - AN model - [Zilany, Bruce, Ibrahim and Carney] Auditory Nerve Model
%   complex.c
%   complex.h
%   complex.hpp
%   ffGn                                 - Fast (exact) fractional Gaussian noise and Brownian motion generator
%   fitaudiogram2                        - Gives values of Cohc and Cihc that produce a desired
%   mexANmodel
%   model_IHC.c
%   model_Synapse.c
%   readme.txt
%   testANModel                          - Model fiber parameters
%   THRESHOLD_ALL_CAT.mat
%   THRESHOLD_ALL_HUMAN.mat
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY
%   deleteoutliers                       - [B, IDX, OUTLIERS] = DELETEOUTLIERS(A, ALPHA, REP)
%   thirdpartyinit
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT
%   AMTreadme.txt
%   AUTHORS
%   ChangeLog
%   CITATION
%   COPYING
%   INSTALL
%   INSTALL-Matlab
%   INSTALL-Octave
%   isoctave                             - True if the operating environment is octave
%   ltfat_version
%   ltfatarghelper                       - Parse arguments for LTFAT
%   ltfatbasepath                        - The base path of the LTFAT installation
%   ltfatgetdefaults                     - Get default parameters of function
%   ltfathelp                            - Help on the LTFAT toolbox
%   ltfatmex                             - Compile Mex/Oct interfaces
%   ltfatsetdefaults                     - Set default parameters of function
%   ltfatstart                           - Start the LTFAT toolbox
%   ltfatstop                            - Stops the LTFAT toolbox
%   mulaclab                             - Graphical interface for audio processing using frame multipliers
%   NEWS
%   README
%   scalardistribute                     - Copy scalar to array shape for parameter handling
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/AUDITORY
%   audfiltbw                            - Bandwidth of auditory filter
%   auditoryinit
%   audspace                             - Equidistantly spaced points on auditory scale
%   audspacebw                           - Auditory scale points specified by bandwidth
%   audtofreq                            - Converts auditory units to frequency (Hz)
%   erbspace                             - Equidistantly spaced points on erbscale
%   erbspacebw                           - Erbscale points specified by bandwidth
%   erbtofreq                            - Converts erb units to frequency (Hz)
%   freqtoaud                            - Converts frequencies (Hz) to auditory scale units
%   freqtoerb                            - Converts frequencies (Hz) to erbs
%   gammatonefir                         - Gammatone filter coefficients
%   rangecompress                        - Compress the dynamic range of a signal
%   rangeexpand                          - Expand the dynamic range of a signal
%   semiaudplot                          - 2D plot on auditory scale
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/BLOCKPROC
%   block                                - Initialize block stream
%   blockana                             - Blockwise analysis interface
%   blockdevices                         - Lists audio devices
%   blockdone                            - Destroy the current blockstream
%   blockfigure                          - Block figure object
%   blockframeaccel                      - Precompute structures for block processing
%   blockframepairaccel                  - Precompute structures for block processing
%   blockpanel                           - Control panel
%   blockpanelget                        - Get parameters from GUI
%   blockplay                            - Schedules block to be played
%   blockplot                            - Plot block coefficients
%   blockprocinit                        - Add entry to the dynamic classpath if JVM is present
%   blockread                            - Read one block from input
%   blocksyn                             - Blockwise synthesis interface
%   blockwrite                           - Append block to an existing file
%   ltfatplay                            - Play data samples or a wav file
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/BLOCKPROC/JAVA
%   blockproc.jar
%   Makefile
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/BLOCKPROC/JAVA/NET/SOURCEFORGE/LTFAT
%   ContFrame.java
%   SpectFrame.java
%   Utils.java
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/BLOCKPROC/JAVA/NET/SOURCEFORGE/LTFAT/THIRDPARTY
%   JRangeSlider.java
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/BLOCKPROC/PRIVATE
%   block_fwt                            - FWT func. wrapper for a block processing
%   block_ifwt                           - IFWT wrapper for blockstream processing
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/COMP
%   arg_filterbankdual
%   arg_firwin
%   arg_freqtoaud
%   arg_fwt                              - Definput.flags.ext=  {'per','zpd','sym','symw','asym','asymw','ppd','sp0'};
%   arg_fwt2
%   arg_fwtcommon                        - Definput.flags.ansy = {'syn','ana'};
%   arg_fwtext                           - Definput.flags.ext=  {'per','zpd','sym','symw','asym','asymw','ppd','sp0'};
%   arg_groupthresh
%   arg_ltfattranslate
%   arg_normalize                        - Both 'null' and 'empty' do no scaling when normalize is called
%   arg_pfilt
%   arg_plotfilterbank
%   arg_plotfwt
%   arg_tfplot
%   arg_thresh
%   arg_uwfbtcommon                      - Filter scaling
%   arg_wfbtcommon                       - Definput.keyvals.J = 1;
%   assert_classname
%   assert_groworder                     - Grow the order parameter
%   assert_L                             - Validate lattice and window size
%   assert_sigreshape_post               - Restore the original, permuted shape
%   assert_sigreshape_pre                - Preprocess and handle dimension input
%   assert_squarelat                     - Validate lattice and window size
%   block_interface                      - Common block processing backend
%   comp_atrousfilterbank_td             - Uniform filterbank by conv2
%   comp_cellcoef2tf                     - Cell to a tf-layout
%   comp_chirpzt                         - Use the decimation scheme
%   comp_col2diag                        - Transforms columns to diagonals (in a special way)
%   comp_constructphasereal              - Build the phase
%   comp_dct                             - Calculates DCT
%   comp_dgt                             - Compute a DGT
%   comp_dgt_fb                          - Filter bank DGT
%   comp_dgt_long                        - Gabor transform using long windows
%   comp_dgt_ola
%   comp_dgt_walnut                      - First step of full-window factorization of a Gabor matrix
%   comp_dgtreal                         - Compute a DGTREAL
%   comp_dgtreal_fb                      - Filter bank DGT
%   comp_dgtreal_long                    - Full-window factorization of a Gabor matrix
%   comp_dgtreal_ola
%   comp_downs                           - Downsampling
%   comp_dst                             - Calculates DST
%   comp_dtwfb                           - First tree
%   comp_dwilt                           - Compute Discrete Wilson transform
%   comp_dwiltii                         - COMP_DWILT  Compute Discrete Wilson transform
%   comp_dwiltiii                        - Compute Discrete Wilson transform type III
%   comp_dwiltiv                         - Compute Discrete Wilson transform type IV
%   comp_edgt6                           - Compute Even DGT type 6
%   comp_extBoundary                     - EXTENDBOUNDARY Extends collumns
%   comp_fftanalytic                     - Compute analytic representation
%   comp_fftreal                         - Compute an FFTREAL
%   comp_filterbank                      - Compute filtering
%   comp_filterbank_a                    - Return sanitized a
%   comp_filterbank_fft                  - Compute filtering in FD
%   comp_filterbank_fftbl                - Compute filtering in FD
%   comp_filterbank_pre                  - Return sanitized filterbank
%   comp_filterbank_td                   - Non-uniform filterbank by conv2
%   comp_filterbankphasegrad
%   comp_filterbankreassign              - Compute reassigned frequencies and times
%   comp_filterbankresponse              - G1 is done this way just so that we can determine the data type
%   comp_filterbankscale                 - Do nothing
%   comp_fourierwindow                   - Compute the window from numeric, text or cell array
%   comp_framelength_fusion              - This is highly tricky: Get the minimal transform length for each
%   comp_framelength_tensor              - Helper function for the Tensor frame
%   comp_frana_fusion                    - All frames must use the same length signal
%   comp_frana_tensor
%   comp_frsyn_fusion
%   comp_frsyn_tensor
%   comp_fwt                             - Compute DWT using FWT
%   comp_fwtpack2cell                    - Change FWT coef. format from pack to cell
%   comp_gabdual_long                    - Compute dual window
%   comp_gabmixdual_fac                  - Computes factorization of mix-dual
%   comp_gabreassign                     - Reassign time-frequency distribution
%   comp_gabtight_long                   - Compute tight window
%   comp_gdgt                            - Compute generalized DGT
%   comp_gfeigs                          - _SEP
%   comp_gga                             - Generalized Goertzel Algorithm
%   comp_hermite                         - Compute sampling of continuous Hermite function
%   comp_hermite_all                     - Compute all Hermite functions up to an order
%   comp_iatrousfilterbank_td            - Synthesis Uniform filterbank by conv2
%   comp_idgt                            - Compute IDGT
%   comp_idgt_fac                        - Full-window factorization of a Gabor matrix
%   comp_idgt_fb                         - Filter bank IDGT
%   comp_idgt_long                       - COMP_IDGT_FAC  Full-window factorization of a Gabor matrix
%   comp_idgtreal                        - Compute IDGTREAL
%   comp_idgtreal_fac                    - Full-window factorization of a Gabor matrix assuming
%   comp_idgtreal_fb                     - COMP_IDGT_FB  Filter bank IDGT
%   comp_idgtreal_long                   - COMP_IDGTREAL_FAC  Full-window factorization of a Gabor matrix assuming
%   comp_idtwfb                          - Split the coefficients
%   comp_idwilt                          - Compute Inverse discrete Wilson transform
%   comp_idwiltii                        - Compute Inverse discrete Wilson transform type II
%   comp_idwiltiii                       - Compute Inverse discrete Wilson transform type III
%   comp_idwiltiv                        - Compute Inverse discrete Wilson transform type IV
%   comp_iedgt6                          - Compute inverse even DGT type 6
%   comp_ifftreal                        - Compute an IFFTREAL
%   comp_ifilterbank                     - Compute inverse filterbank
%   comp_ifilterbank_fft                 - Compute filtering in FD
%   comp_ifilterbank_fftbl               - Compute filtering in FD
%   comp_ifilterbank_td                  - Synthesis filterbank by conv2
%   comp_ifwt                            - Compute Inverse DWT
%   comp_igdgt                           - Compute IGDGT
%   comp_inonsepdgt                      - Compute Inverse discrete Gabor transform
%   comp_inonsepdgt_shear                - Compute IDGT
%   comp_inonsepdgtreal_quinqux          - Compute Inverse discrete Gabor transform
%   comp_insdgfb                         - Non-stationary Gabor filterbank synthesis
%   comp_instcorrmat                     - Compute instantaneous correlation matrix
%   comp_irdgt                           - Compute inverse real DGT
%   comp_irdgtii                         - Compute inverse real DGT type II
%   comp_irdgtiii                        - Compute inverse real DGT type III
%   comp_isepdgt                         - Separable IDGT
%   comp_isepdgtreal                     - Separable IDGT
%   comp_iufilterbank_td                 - Synthesis Uniform filterbank by conv2
%   comp_iufwt                           - Compute Inverse Undecimated DWT
%   comp_iuwfbt                          - Compute Inverse Undecimated Wavelet Filter-Bank Tree
%   comp_iuwpfbt                         - Compute Inverse Undecimated Wavelet Packet Filter-Bank Tree
%   comp_iwfac                           - Compute inverse window factorization
%   comp_iwfbt                           - Compute Inverse Wavelet Filter-Bank Tree
%   comp_iwpfbt                          - COMP_IWFBT Compute Inverse Wavelet Packet Filter-Bank Tree
%   comp_nonsepdgt_multi                 - Compute Non-separable Discrete Gabor transform
%   comp_nonsepdgt_shear                 - Compute Non-separable Discrete Gabor transform
%   comp_nonsepdgtreal_quinqux           - Compute Non-separable Discrete Gabor transform
%   comp_nonsepwin2multi                 - Create multiwindow from non-sep win
%   comp_nyquistfilt                     - High-pass filter for warped filter banks
%   comp_painlessfilterbank
%   comp_pchirp                          - Compute periodic chirp
%   comp_pgauss                          - Sampled, periodized Gaussian
%   comp_phasegradfilters                - Number of filters
%   comp_quadtfdist                      - Compute quadratic time-frequency distribution
%   comp_sepdgt                          - Separable DGT
%   comp_sepdgtreal                      - Filter bank DGT
%   comp_sigreshape_post
%   comp_sigreshape_pre
%   comp_transferfunction                - Compute the transfer function
%   comp_ufilterbank_fft                 - Classic filtering by FFT
%   comp_ufilterbank_td                  - Uniform filterbank by conv2
%   comp_ufwt                            - Compute Undecimated DWT
%   comp_ups                             - Upsampling
%   comp_uwfbt                           - Compute Undecimated Wavelet Filterbank Tree
%   comp_uwpfbt                          - Compute Undecimated Wavelet Packet Filterbank Tree
%   comp_warpedfoff                      - Foff for warped filters
%   comp_warpedfreqresponse              - Transfer function of warped filter
%   comp_wfac                            - Compute window factorization
%   comp_wfbt                            - Compute Wavelet Filterbank Tree
%   comp_window                          - Compute the window from numeric, text or cell array
%   comp_wpfbt                           - Compute Wavelet Packet Filterbank Tree
%   comp_wpfbtscale                      - Scale filters in the filterbank tree
%   comp_zerofilt                        - Low-pass filter for warped filter banks
%   compinit
%   complainif_isjavaheadless
%   complainif_notenoughargs             - S: Not enough input arguments.',upper(callfun));
%   complainif_notposint                 - S: %s should be a positive integer.',upper(callfun),varname);
%   complainif_notvalidframeobj          - S: Agument F must be a frame definition structure.',..
%   complainif_toomanyargs               - S: Too many input arguments.',upper(callfun));
%   demo_blockproc_header                - S:\nTo run the demo, use one of the following:\n\n',..
%   gabpars_from_window                  - Compute g and L from window
%   gabpars_from_windowsignal            - Compute g and L from window and signal
%   nonsepgabpars_from_window            - Compute g and L from window
%   vect2cell                            - Vector to cell
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/DEMOS
%   demo_audiocompression                - Audio compression using N-term approx
%   demo_audiodenoise                    - Audio denoising using thresholding
%   demo_audioshrink                     - Decomposition into tonal and transient parts
%   demo_auditoryfilterbank              - Construct an auditory filterbank
%   demo_audscales                       - Plot of the different auditory scales
%   demo_blockproc_basicloop             - Basic real-time audio manipulation
%   demo_blockproc_denoising             - Variable coefficients thresholding
%   demo_blockproc_dgtequalizer          - Real-time audio manipulation in the transform domain
%   demo_blockproc_effects               - Various vocoder effects using DGT
%   demo_blockproc_paramequalizer        - Real-time equalizer demonstration
%   demo_blockproc_slidingcqt            - Basic real-time rolling CQT-spectrogram visualization
%   demo_blockproc_slidingerblets        - Basic real-time rolling erblet-spectrogram visualization
%   demo_blockproc_slidingsgram          - Basic real-time rolling spectrogram visualization
%   demo_bpframemul                      - Frame multiplier acting as a time-varying bandpass filter
%   demo_dgt                             - Basic introduction to DGT analysis/synthesis
%   demo_filterbanks                     - CQT, ERBLET and AUDLET filterbanks
%   demo_filterbanksynchrosqueeze        - Filterbank synchrosqueezing and inversion
%   demo_firwin
%   demo_framemul                        - Time-frequency localization by a Gabor multiplier
%   demo_frsynabs                        - Construction of a signal with a given spectrogram
%   demo_gabfir                          - Working with FIR windows
%   demo_gabmixdual                      - How to use GABMIXDUAL
%   demo_gabmulappr                      - Approximate a slowly time variant system by a Gabor multiplier
%   demo_imagecompression                - Image compression using N-term approximation
%   demo_nextfastfft                     - Next fast FFT number
%   demo_nsdgt                           - Non-stationary Gabor transform demo
%   demo_ofdm                            - Demo of Gabor systems used for OFDM
%   demo_pbspline                        - How to use PBSPLINE
%   demo_pgauss                          - How to use PGAUSS
%   demo_phaseplot                       - Give demos of nice phaseplots
%   demo_phaseret                        - Phase retrieval and phase difference
%   demo_wavelets                        - Wavelet filter banks
%   demo_wfbt                            - Auditory filterbanks built using filterbank tree structures
%   demosinit
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/DEPRECATED
%   convolve                             - Convolution
%   demo_gablasso                        - Sparse regression by Lasso method
%   deprecatedinit
%   framematrix                          - Frame synthesis operator matrix
%   gabelitistlasso                      - Elitist LASSO regression in Gabor domain
%   gabgrouplasso                        - Group LASSO regression in Gabor domain
%   gablasso                             - LASSO regression in Gabor domain
%   gabmul                               - Apply Gabor multiplier
%   gabmuleigs                           - Eigenpairs of Gabor multiplier
%   iufilterbank                         - Filter bank inversion, DEPRECATED
%   iunsdgt                              - Inverse uniform non-stationary discrete Gabor transform
%   iunsdgtreal                          - Inverse uniform non-stationary discrete Gabor transform
%   tfmat                                - Matrix of transform / operator
%   uwfbtbounds                          - Frame bounds of Undecimated WFBT
%   uwpfbtbounds                         - Frame bounds of Undecimated WPFBT
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/FILTERBANK
%   audfilters                           - Generates AUD-spaced filters
%   cent_freqs                           - Determine relative center frequencies
%   cqt                                  - Constant-Q non-stationary Gabor filterbank
%   cqtfilters                           - CQT-spaced filters
%   erbfilters                           - ERB-spaced filters
%   erblett                              - ERBlet non-stationary Gabor filterbank
%   filterbank                           - Apply filterbank
%   filterbankbounds                     - Frame bounds of a filterbank
%   filterbankdual                       - Dual filters
%   filterbankfreqz                      - Filterbank frequency responses
%   filterbankinit
%   filterbanklength                     - Filterbank length from signal
%   filterbanklengthcoef                 - Filterbank length from coefficients
%   filterbankphasegrad                  - Phase gradient of a filterbank representation
%   filterbankrealbounds                 - Frame bounds of filter bank for real signals only
%   filterbankrealdual                   - Dual filters of filterbank for real signals only
%   filterbankrealtight                  - Tight filters of filterbank for real signals only
%   filterbankreassign                   - Reassign filterbank spectrogram
%   filterbankresponse                   - Response of filterbank as function of frequency
%   filterbanksynchrosqueeze             - Synchrosqueeze filterbank spectrogram
%   filterbanktight                      - Tight filterbank
%   filterbankwin                        - Compute set of filter bank windows from text or cell array
%   icqt                                 - Constant-Q non-stationary Gabor synthesis
%   ierblett                             - ERBlet non-stationary Gabor synthesis
%   ifilterbank                          - Filter bank inversion
%   nonu2ucfmt                           - Non-uniform to uniform filterbank coefficient format
%   nonu2ufilterbank                     - Non-uniform to uniform filterbank transform
%   plotfilterbank                       - Plot filterbank and ufilterbank coefficients
%   u2nonucfmt                           - Uniform to non-uniform filterbank coefficient format
%   ufilterbank                          - Apply Uniform filterbank
%   warpedfilters                        - Frequency-warped band-limited filters
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/FOURIER
%   ceil23                               - Next number with only 2,3 factors
%   ceil235                              - Next number with only 2,3 and 5 factors
%   chirpzt                              - Chirped Z-transform
%   dcti                                 - Discrete Cosine Transform type I
%   dctii                                - Discrete Consine Transform type II
%   dctiii                               - Discrete Consine Transform type III
%   dctiv                                - Discrete Consine Transform type IV
%   dctresample                          - Resample signal using Fourier interpolation
%   dfracft                              - Discrete Fractional Fourier transform
%   dft                                  - Normalized Discrete Fourier Transform
%   dsti                                 - Discrete Sine Transform type I
%   dstii                                - Discrete Sine Transform type II
%   dstiii                               - Discrete sine transform type III
%   dstiv                                - Discrete Sine Transform type IV
%   expwave                              - Complex exponential wave
%   ffracft                              - Approximate fast fractional Fourier transform
%   fftanalytic                          - Compute analytic representation
%   fftgram                              - Plot the energy of the discrete Fourier transform
%   fftindex                             - Frequency index of FFT modulations
%   fftreal                              - FFT for real valued input data
%   fftresample                          - Resample signal using Fourier interpolation
%   floor23                              - Previous number with only 2,3 factors
%   floor235                             - Previous number with only 2,3 and 5 factors
%   fourierinit
%   gga                                  - Generalized Goertzel algorithm
%   hermbasis                            - Orthonormal basis of discrete Hermite functions
%   idft                                 - Inverse normalized Discrete Fourier Transform
%   ifftreal                             - Inverse FFT for real valued signals
%   involute                             - Involution
%   isevenfunction                       - True if function is even
%   lconv                                - Linear convolution
%   lxcorr                               - Linear crosscorrelation
%   middlepad                            - Symmetrically zero-extends or cuts a function
%   modcent                              - Centered modulo
%   nextfastfft                          - Next higher number with a fast FFT
%   pbspline                             - Periodized B-spline
%   pchirp                               - Periodic chirp
%   pconv                                - Periodic convolution
%   pderiv                               - Derivative of smooth periodic function
%   peven                                - Even part of periodic function
%   pgauss                               - Sampled, periodized Gaussian
%   pheaviside                           - Periodic Heaviside function
%   pherm                                - Periodized Hermite function
%   plotfft                              - Plot the output from FFT
%   plotfftreal                          - Plot the output from FFTREAL
%   podd                                 - Odd part of periodic function
%   prect                                - Periodic rectangle
%   psech                                - Sampled, periodized hyperbolic secant
%   psinc                                - Periodic Sinc function (Dirichlet function)
%   pxcorr                               - Periodic cross correlation
%   shah                                 - Discrete Shah-distribution
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/FRAMES
%   frame                                - Construct a new frame
%   frameaccel                           - Precompute structures
%   framebounds                          - Frame bounds
%   frameclength                         - Number of coefficients from length of signal
%   framecoef2native                     - Convert coefficients to native format
%   framecoef2tf                         - Convert coefficients to time-frequency plane
%   framecoef2tfplot                     - Convert coefficients to time-frequency plane matrix
%   framediag                            - Compute the diagonal of the frame operator
%   framedual                            - Construct the canonical dual frame
%   framegram                            - Easy visualization of energy in transform domain
%   framelength                          - Frame length from signal
%   framelengthcoef                      - Frame length from coefficients
%   framenative2coef                     - Convert coefficient from native format
%   frameoperator                        - Frame Operator
%   framepair                            - Construct a new frame
%   framered                             - Redundancy of a frame
%   framesinit
%   frametf2coef                         - Convert coefficients from TF-plane format
%   frametight                           - Construct the canonical tight frame
%   frana                                - Frame analysis operator
%   franabp                              - Frame Analysis Basis Pursuit
%   franagrouplasso                      - Group LASSO regression in the TF-domain
%   franaiter                            - Iterative analysis
%   franalasso                           - Frame LASSO regression
%   frgramian                            - Frame Gramian operator
%   frsyn                                - Frame synthesis operator
%   frsynabs                             - Reconstruction from magnitude of coefficients
%   frsyniter                            - Iterative synthesis
%   frsynmatrix                          - Frame synthesis operator matrix
%   plotframe                            - Plot frame coefficients
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/GABOR
%   col2diag                             - Move columns of a matrix to diagonals
%   constructphase                       - Construct phase for DGT
%   constructphasereal                   - Construct phase for DGTREAL
%   dgt                                  - Discrete Gabor transform
%   dgt2                                 - 2-D Discrete Gabor transform
%   dgtlength                            - DGT length from signal
%   dgtreal                              - Discrete Gabor transform for real-valued signals
%   dsft                                 - Discrete Symplectic Fourier Transform
%   dwilt                                - Discrete Wilson transform
%   dwilt2                               - 2D Discrete Wilson transform
%   dwiltlength                          - DWILT/WMDCT length from signal
%   gabconvexopt                         - Compute a window using convex optimization
%   gabdual                              - Canonical dual window of Gabor frame
%   gabdualnorm                          - Measure of how close a window is to being a dual window
%   gabfirdual                           - Compute FIR dual window
%   gabfirtight                          - Compute FIR tight window
%   gabframebounds                       - Calculate frame bounds of Gabor frame
%   gabframediag                         - Diagonal of Gabor frame operator
%   gabimagepars                         - Find Gabor parameters to generate image
%   gabmixdual                           - Computes the mixdual of g1
%   gaboptdual                           - Compute dual window
%   gabopttight                          - Compute a optimized tight window
%   gaborinit
%   gabphasederiv                        - DGT phase derivatives
%   gabphasegrad                         - Phase gradient of the DGT
%   gabprojdual                          - Gabor Dual window by projection
%   gabreassign                          - Reassign time-frequency distribution
%   gabreassignadjust                    - Adjustable reassignment of a time-frequency distribution
%   gabrieszbounds                       - Calculate Riesz sequence/basis bounds of Gabor frame
%   gabtight                             - Canonical tight window of Gabor frame
%   gabwin                               - Compute a Gabor window from text or cell array
%   idgt                                 - Inverse discrete Gabor transform
%   idgt2                                - 2D Inverse discrete Gabor transform
%   idgtreal                             - Inverse discrete Gabor transform for real-valued signals
%   idwilt                               - Inverse discrete Wilson transform
%   idwilt2                              - 2D Inverse Discrete Wilson transform
%   instfreqplot                         - Plot of instantaneous frequency
%   isgram                               - Spectrogram inversion
%   isgramreal                           - Spectrogram inversion (real signal)
%   iwmdct                               - Inverse MDCT
%   iwmdct2                              - 2D Inverse windowed MDCT transform
%   izak                                 - Inverse Zak transform
%   latticetype2matrix                   - Convert lattice description to matrix form
%   longpar                              - Parameters for LONG windows
%   matrix2latticetype                   - Convert matrix form to standard lattice description
%   noshearlength                        - Transform length that does not require a frequency shear
%   phaselock                            - Phaselock Gabor coefficients
%   phaselockreal                        - Phaselock Gabor coefficients
%   phaseplot                            - Phase plot
%   phaseunlock                          - Undo phase lock of Gabor coefficients
%   phaseunlockreal                      - Undo phase lock of Gabor coefficients
%   plotdgt                              - Plot DGT coefficients
%   plotdgtreal                          - Plot DGTREAL coefficients
%   plotdwilt                            - Plot DWILT coefficients
%   plotwmdct                            - Plot WMDCT coefficients
%   proj_dual                            - Projection onto the dual windows space
%   projkern                             - Projection onto generating kernel space
%   rect2wil                             - Inverse of WIL2RECT
%   resgram                              - Reassigned spectrogram plot
%   s0norm                               - S0-norm of signal
%   sgram                                - Spectrogram
%   shearfind                            - Shears for transformation of a general lattice to separable
%   symphase                             - Change Gabor coefficients to symmetric phase
%   tconv                                - Twisted convolution
%   tfplot                               - Plot coefficient matrix on the TF plane
%   wil2rect                             - Arrange Wilson coefficients in a rectangular layout
%   wilbounds                            - Calculate frame bounds of Wilson basis
%   wildual                              - Wilson dual window
%   wilframediag                         - Diagonal of Wilson and WMDCT frame operator
%   wilorth                              - Wilson orthonormal window
%   wilwin                               - Compute a Wilson/WMDCT window from text or cell array
%   wmdct                                - Windowed MDCT transform
%   wmdct2                               - 2D Discrete windowed MDCT transform
%   zak                                  - Zak transform
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/LIBLTFAT
%   comptarget.mk
%   filedefs.mk
%   Makefile
%   ostools.mk
%   README.md
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/LIBLTFAT/DOC
%   doxyconfig
%   doxymain.md
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/LIBLTFAT/DOC/HTMLTEMPLATE
%   customdoxygen.css
%   footer.html
%   header.html
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/LIBLTFAT/DOC/MATHJAXINCLUDE
%   macros.js
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/LIBLTFAT/DOC/TEXINCLUDE
%   macros.tex
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/LIBLTFAT/EXAMPLES
%   example_gabanasyn.c
%   Makefile
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/LIBLTFAT/INCLUDE
%   ltfat.h
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/LIBLTFAT/INCLUDE/LTFAT
%   ciutils.h
%   config.h
%   dgt_long.h
%   dgt_multi.h
%   dgt_shear.h
%   goertzel.h
%   heapint.h
%   ltfat_blaslapack.h
%   ltfat_typecomplexindependent.h
%   ltfat_typeconstant.h
%   ltfat_typeindependent.h
%   ltfat_types.h
%   reassign_typeconstant.h
%   wavelets.h
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/LIBLTFAT/LTFATCOMPAT
%   bootstrap
%   configure.ac
%   Makefile_crossmingw
%   Makefile_mac
%   Makefile_mingw
%   Makefile_octpkg.in
%   Makefile_unix
%   README
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/LIBLTFAT/LTFATCOMPAT/M4
%   ax_blas.m4
%   ax_lapack.m4
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/LIBLTFAT/LTFATCOMPAT/UTILS
%   dbg.h
%   lcthw_List.h
%   list.c
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/LIBLTFAT/SRC
%   c-safe-memalloc.c
%   ciutils.c
%   dct.c
%   dgt.c
%   dgt_fac.c
%   dgt_fb.c
%   dgt_multi.c
%   dgt_ola.c
%   dgt_shear.c
%   dgt_shearola.c
%   dgt_walnut.c
%   dgtreal_fac.c
%   drivers.c
%   dst.c
%   dwilt.c
%   fftreal.c
%   filterbank.c
%   gabdual.c
%   gabdual_fac.c
%   gabtight.c
%   gabtight_fac.c
%   goertzel.c
%   heapint.c
%   idgt.c
%   idgt_fac.c
%   idgt_fb.c
%   idwilt.c
%   ifilterbank.c
%   integer_manip.c
%   iwfac.c
%   iwmdct.c
%   ltfat_blaslapack.c
%   ltfat_complexindependent.c
%   ltfat_complexindependent_bl.c
%   pfilt.c
%   reassign.c
%   reassign_ti.c
%   reassign_typeconstant.c
%   spread.c
%   wavelets.c
%   wfac.c
%   windows.c
%   winmanip.c
%   wmdct.c
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/LIBLTFAT/THIRDPARTY
%   cblas.h
%   f77-fcn.h
%   fftw3.h
%   portaudio.h
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/MEX
%   block_interface.c
%   block_interface.h
%   comp_atrousfilterbank_td.c
%   comp_cellcoef2tf.c
%   comp_chirpzt.c
%   comp_col2diag.c
%   comp_dct.c
%   comp_dgt_ola.c
%   comp_dgtreal_ola.c
%   comp_dst.c
%   comp_dwilt.c
%   comp_dwiltiii.c
%   comp_fftreal.c
%   comp_filterbank.c
%   comp_filterbank_fft.c
%   comp_filterbank_fftbl.c
%   comp_filterbank_td.c
%   comp_filterbankphasegrad.c
%   comp_filterbankreassign.c
%   comp_gabdual_long.c
%   comp_gabreassign.c
%   comp_gabtight_long.c
%   comp_gga.c
%   comp_heapint.c
%   comp_heapintreal.c
%   comp_iatrousfilterbank_td.c
%   comp_idwilt.c
%   comp_idwiltiii.c
%   comp_ifftreal.c
%   comp_ifilterbank.c
%   comp_ifilterbank_fft.c
%   comp_ifilterbank_fftbl.c
%   comp_ifilterbank_td.c
%   comp_isepdgt.c
%   comp_isepdgtreal.c
%   comp_iwfac.c
%   comp_maskedheapint.c
%   comp_maskedheapintreal.c
%   comp_nonsepdgt_multi.c
%   comp_nonsepdgt_shear.c
%   comp_nonsepdgt_shearola.c
%   comp_nonsepwin2multi.c
%   comp_pchirp.c
%   comp_pgauss.c
%   comp_sepdgt.c
%   comp_sepdgtreal.c
%   comp_ufilterbank_fft.c
%   comp_wfac.c
%   config.h
%   filedefs.mk
%   ltfat_mex_template_helper.h
%   ltfat_mex_typecomplexindependent.h
%   ltfat_mex_typeindependent.h
%   ltfatarghelper.c
%   ltfatarghelper.h
%   Makefile_mac
%   Makefile_mingw
%   Makefile_unix
%   mex-memalloc.c
%   mexinit
%   postpad                              - Pads or truncates a vector x to a specified length L
%   vect2cell.c
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/MULACLAB/ICONS
%   apply.png
%   colormap.png
%   difference.png
%   freehand.png
%   intersection.png
%   loop.png
%   magicwand.png
%   pan.png
%   play.png
%   resizebutton.png
%   showsymbol.png
%   stop.png
%   subbandsel.png
%   union.png
%   zoomin.png
%   zoomout.png
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/NONSTATGAB
%   insdgt                               - Inverse non-stationary discrete Gabor transform
%   insdgtreal                           - Inverse NSDGT for real-valued signals
%   nonstatgabinit
%   nsdgt                                - Non-stationary Discrete Gabor transform
%   nsdgtlength                          - NSDGT length from signal
%   nsdgtreal                            - Non-stationary Discrete Gabor transform for real valued signals
%   nsgabdual                            - Canonical dual window for non-stationary Gabor frames
%   nsgabframebounds                     - Frame bounds of non-stationary Gabor frame
%   nsgabframediag                       - Diagonal of Gabor frame operator
%   nsgabtight                           - Canonical tight window for non-stationary Gabor frames
%   nsgabwin                             - Compute a set of non-stationary Gabor windows from text or cell array
%   plotnsdgt                            - Plot non-stationary Gabor coefficients
%   plotnsdgtreal                        - Plot NSDGTREAL coefficients
%   unsdgt                               - Uniform Non-stationary Discrete Gabor transform
%   unsdgtreal                           - Uniform non-stationary Discrete Gabor transform
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/OCT
%   comp_atrousfilterbank_td.cc
%   comp_cellcoef2tf.cc
%   comp_chirpzt.cc
%   comp_col2diag.cc
%   comp_dct.cc
%   comp_dgt_ola.cc
%   comp_dgtreal_ola.cc
%   comp_dst.cc
%   comp_dwilt.cc
%   comp_dwiltiii.cc
%   comp_filterbank_fft.cc
%   comp_filterbank_fftbl.cc
%   comp_filterbank_td.cc
%   comp_filterbankreassign.cc
%   comp_gabdual_long.cc
%   comp_gabreassign.cc
%   comp_gabtight_long.cc
%   comp_gga.cc
%   comp_heapint.cc
%   comp_heapintreal.cc
%   comp_iatrousfilterbank_td.cc
%   comp_idwilt.cc
%   comp_idwiltiii.cc
%   comp_ifilterbank_fft.cc
%   comp_ifilterbank_fftbl.cc
%   comp_ifilterbank_td.cc
%   comp_isepdgt.cc
%   comp_isepdgtreal.cc
%   comp_iwfac.cc
%   comp_maskedheapint.cc
%   comp_maskedheapintreal.cc
%   comp_nonsepdgt_multi.cc
%   comp_nonsepdgt_shear.cc
%   comp_nonsepwin2multi.cc
%   comp_pchirp.cc
%   comp_pgauss.cc
%   comp_sepdgt.cc
%   comp_sepdgtreal.cc
%   comp_ufilterbank_fft.cc
%   comp_wfac.cc
%   config.h
%   ltfat_oct_template_helper.h
%   Makefile_mac
%   Makefile_mingwoct
%   Makefile_unix
%   oct-memalloc.c
%   octinit
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/OCT/MEXHELP
%   block_interface
%   comp_filterbank
%   comp_ifilterbank
%   ltfatarghelper
%   playrec
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/OPERATORS
%   framemul                             - Frame multiplier
%   framemuladj                          - Adjoint operator of frame multiplier
%   framemulappr                         - Best Approximation of a matrix by a frame multiplier
%   framemuleigs                         - Eigenpairs of frame multiplier
%   gabmulappr                           - Best Approximation by a Gabor multiplier
%   iframemul                            - Inverse of frame multiplier
%   ioperator                            - Apply inverse of operator
%   operator                             - Apply operator
%   operatoradj                          - Apply the adjoint of an operator
%   operatorappr                         - Best approximation by operator
%   operatoreigs                         - Apply the adjoint of an operator
%   operatormatrix                       - Matrix representation of an operator
%   operatornew                          - Construct a new operator
%   operatorsinit
%   spreadadj                            - Symbol of adjoint spreading function
%   spreadeigs                           - Eigenpairs of Spreading operator
%   spreadfun                            - Spreading function of a matrix
%   spreadinv                            - Apply inverse spreading operator
%   spreadop                             - Spreading operator
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/QUADRATIC
%   ambiguityfunction                    - Ambiguity function
%   drihaczekdist                        - Discrete Rihaczek distribution
%   plotquadtfdist                       - Plot quadratic time-frequency distribution
%   quadraticinit
%   quadtfdist                           - Quadratic time-frequency distribution
%   wignervilledist                      - Wigner-Ville distribution
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/SIGNALS
%   bat.asc
%   bat                                  - Load the 'bat' test signal
%   batmask.asc
%   batmask                              - Load a Gabor multiplier symbol for the 'bat' test signal
%   cameraman                            - Load the 'cameraman' test image
%   cameraman.png
%   Clar.wav
%   cocktailparty                        - Load the 'cocktailparty' test signal
%   cocktailparty.wav
%   ctestfun                             - Complex 1-D test function
%   expchirp                             - Exponential chirp
%   greasy                               - Load the 'greasy' test signal
%   greasy.wav
%   gspi                                 - Load the 'glockenspiel' test signal
%   gspi.wav
%   lichtenstein                         - Load the 'lichtenstein' test image
%   lichtenstein.png
%   linus                                - Load the 'linus' test signal
%   linus.wav
%   ltfatlogo                            - Load the 'ltfatlogo' test signal
%   ltfatlogo.wav
%   ltfattext                            - Load the 'ltfattext' test image
%   ltfattext.png
%   noise                                - Stochastic noise generator
%   otoclick.asc
%   otoclick                             - Load the 'otoclick' test signal
%   Piano2.wav
%   pinknoise                            - Generates a pink noise signal
%   signalsinit
%   traindoppler                         - Load the 'traindoppler' test signal
%   traindoppler.wav
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/SIGPROC
%   blfilter                             - Construct a band-limited filter
%   crestfactor                          - Crest factor of input signal in dB
%   dynlimit                             - Limit the dynamical range of the input
%   elitistthresh                        - Elitist (hard/soft) thresholding
%   fir2long                             - Extend FIR window to LONG
%   firfilter                            - Construct an FIR filter
%   firkaiser                            - Kaiser-Bessel window
%   firwin                               - FIR window
%   gaindb                               - Increase/decrease level of signal
%   groupthresh                          - Group thresholding
%   iqam4                                - Inverse QAM of order 4
%   jpeg2rgb                             - Coverts from RGB format to YCbCr format
%   largestn                             - Keep N largest coefficients
%   largestr                             - Keep fixed ratio of largest coefficients
%   long2fir                             - Cut LONG window to FIR
%   magresp                              - Magnitude response plot of window
%   normalize                            - Normalize input signal by specified norm
%   pfilt                                - Apply filter with periodic boundary conditions
%   pgrpdelay                            - Group delay of a filter with periodic boundaries
%   qam4                                 - Quadrature amplitude modulation of order 4
%   rampdown                             - Falling ramp function
%   rampsignal                           - Ramp signal
%   rampup                               - Rising ramp function
%   rgb2jpeg                             - Coverts from RGB format to the YCbCr format used by JPEG
%   rms                                  - RMS value of signal
%   sigprocinit
%   thresh                               - Coefficient thresholding
%   transferfunction                     - The transferfunction of a filter
%   uquant                               - Simulate uniform quantization
%   warpedblfilter                       - Construct a warped band-limited filter
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/THIRDPARTY/GPC
%   GPC-README.pdf
%   gpc.c
%   gpc.h
%   VERSIONS.TXT
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/THIRDPARTY/PLAYREC
%   config.h
%   filtcoefs.h
%   genfiltcoefs                         - Generate half-band IIR filter
%   license_playrec.txt
%   ltfatresample.c
%   ltfatresample.h
%   Makefile_mac
%   Makefile_macoct
%   Makefile_mingw
%   Makefile_mingwoct
%   Makefile_unix
%   Makefile_unixoct
%   mex_dll_core.c
%   mex_dll_core.h
%   pa_dll_playrec.c
%   pa_dll_playrec.h
%   playrecinit
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/THIRDPARTY/POLYGONCLIP
%   license.txt
%   Makefile_mac
%   Makefile_mingw
%   Makefile_unix
%   PolygonClip.c
%   PolygonClip.h
%   polygonclipinit
%   ReadMe.txt
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/THIRDPARTY/VOICEBOX
%   voicebox_ditherq                     - DITHERQ  add dither and quantize [Y,ZF]=(X,M,ZI)
%   voicebox_pcma2lin                    - PCMU2LIN Convert A-law PCM to linear X=(P,M,S)
%   voicebox_pcmu2lin                    - PCMU2LIN Convert Mu-law PCM to linear X=(P,S)
%   voiceboxinit
%   wavload                              - Read a .WAV format sound file [Y,FS,WMODE,FIDX]=(FILENAME,MODE,NMAX,NSKIP)
%   wavsave                              - Creates .WAV format sound files FIDX=(D,FS,FILENAME,MODE,NSKIP,MASK)
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/WAVELETS
%   dtwfb                                - Dual-Tree Wavelet Filter Bank
%   dtwfb2filterbank                     - DTWFB equivalent non-iterated filterbank
%   dtwfbbounds                          - Frame bounds of DTWFB
%   dtwfbinit                            - Dual-Tree Wavelet Filterbank Initialization
%   dtwfbreal                            - Dual-Tree Wavelet FilterBank for real-valued signals
%   fwt                                  - Fast Wavelet Transform
%   fwt2                                 - Fast Wavelet Transform 2D
%   fwtclength                           - FWT subbands lengths from a signal length
%   fwtinit                              - Wavelet Filterbank Structure Initialization
%   fwtlength                            - FWT length from signal
%   idtwfb                               - Inverse Dual-tree Filterbank
%   idtwfbreal                           - Inverse Dual-tree Filterbank for real-valued signals
%   ifwt                                 - Inverse Fast Wavelet Transform
%   ifwt2                                - Inverse Fast Wavelet Transform
%   iufwt                                - Inverse Undecimated Fast Wavelet Transform
%   iuwfbt                               - Inverse Undecimated Wavelet Filterbank Tree
%   iuwpfbt                              - Inverse Undecimated Wavelet Packet Filterbank Tree
%   iwfbt                                - Inverse Wavelet Filterbank Tree
%   iwpfbt                               - Inverse Wavelet Packet Filterbank Tree
%   plotwavelets                         - Plot wavelet coefficients
%   ufwt                                 - Undecimated Fast Wavelet Transform
%   uwfbt                                - Undecimated Wavelet FilterBank Tree
%   uwpfbt                               - Undecimated Wavelet Packet FilterBank Tree
%   wavcell2pack                         - Changes wavelet coefficients storing format
%   waveletsinit
%   wavfun                               - Wavelet Function
%   wavpack2cell                         - Changes wavelet coefficients storing format
%   wfbt                                 - Wavelet FilterBank Tree
%   wfbt2filterbank                      - WFBT equivalent non-iterated filterbank
%   wfbtbounds                           - Frame bounds of WFBT
%   wfbtclength                          - WFBT subband lengths from a signal length
%   wfbtinit                             - Initialize Filterbank Tree
%   wfbtlength                           - WFBT length from signal
%   wfbtput                              - Put node to the filterbank tree
%   wfbtremove                           - Remove node(s) from the filterbank tree
%   wfilt_algmband                       - An ALGebraic construction of orthonormal M-BAND wavelets with perfect reconstruction
%   wfilt_cmband                         - Generates M-Band cosine modulated wavelet filters
%   wfilt_coif                           - Coiflets
%   wfilt_db                             - Daubechies FIR filterbank
%   wfilt_dden                           - Double-DENsity DWT filters (tight frame)
%   wfilt_ddena                          - Double-Density Dual-Tree DWT filters
%   wfilt_ddenb                          - Double-Density Dual-Tree DWT filters
%   wfilt_dgrid                          - Dense GRID framelets (tight frame, symmetric)
%   wfilt_hden                           - Higher DENsity dwt filters (tight frame, frame)
%   wfilt_lemarie                        - Battle and Lemarie filters
%   wfilt_matlabwrapper                  - Wrapper of the Matlab Wavelet Toolbox wfilters function
%   wfilt_mband                          - Generates 4-band coder
%   wfilt_oddevena                       - Kingsbury's symmetric even filters
%   wfilt_oddevenb                       - Kingsbury's symmetric odd filters
%   wfilt_optsyma                        - Optimizatized Symmetric Self-Hilbertian Filters
%   wfilt_optsymb                        - Optimizatized Symmetric Self-Hilbertian Filters
%   wfilt_qshifta                        - Improved Orthogonality and Symmetry properties
%   wfilt_qshiftb                        - Improved Orthogonality and Symmetry properties
%   wfilt_remez                          - Filters designed using Remez exchange algorithm
%   wfilt_spline                         - Biorthogonal spline wavelets
%   wfilt_sym                            - Symlet filters
%   wfilt_symdden                        - Symmetric Double-Density DWT filters (tight frame)
%   wfilt_symds                          - Symmetric wavelets dyadic sibling
%   wfilt_symorth                        - Symmetric nearly-orthogonal and orthogonal nearly-symmetric
%   wfilt_symtight                       - Symmetric Nearly Shift-Invariant Tight Frame Wavelets
%   wfiltdt_dden                         - Double-Density Dual-Tree DWT filters
%   wfiltdt_oddeven                      - Kingsbury's symmetric odd and even filters
%   wfiltdt_optsym                       - Optimizatized Symmetric Self-Hilbertian Filters
%   wfiltdt_qshift                       - Improved Orthogonality and Symmetry properties
%   wfiltdtinfo                          - Plots dual-tree filters info
%   wfiltinfo                            - Plots filters info
%   wpbest                               - Best Tree selection
%   wpfbt                                - Wavelet Packet FilterBank Tree
%   wpfbt2filterbank                     - WPFBT equivalent non-iterated filterbank
%   wpfbtbounds                          - Frame bounds of WPFBT
%   wpfbtclength                         - WPFBT subband length from a signal length
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/LTFAT/WAVELETS/WFBTMANIP
%   depthIndex2NodeNo                    - Get node from depth and index in the tree
%   nat2freqOrder                        - Natural To Frequency Ordering
%   nodeBForder                          - Nodes in the Breadth-First search order
%   nodesFiltUps                         - NODEFILTUPS  Node upsamplig factor
%   nodesInLen                           - Length of the node input signal
%   nodesLocOutRange                     - Node output index range of the terminal outputs
%   nodesMultid                          - Filter tree multirate identity filterbank
%   nodesOutLen                          - Length of the node output
%   nodesOutputsNo                       - Number of node Outputs
%   nodesSub                             - S: Invalid node index range. Number of nodes is %d.\n',upper(mfilename),numel(wt.nodes));
%   nodeSubtreeDelete                    - DELETESUBTREE Removes subtree with root node
%   treeBFranges                         - Tree nodes output ranges in BF order
%   treeOutLen                           - Lengths of tree subbands
%   treeOutRange                         - Index range of the outputs
%   treeSub                              - Identical subsampling factors
%   treeWpBFrange                        - Wavelet packet tree output ranges in BF order
%   wfbtmanipinit
%   
%   MASSEF/UTILITIES/AMT/THIRDPARTY/SFS
%   AMTreadme.txt
%   
%   MASSEF/UTILITIES/PEASS
%   adapt.c
%   adapt.dll
%   adapt.h
%   adapt_m.c
%   adapt_m.dll
%   audioQualityFeatures                 - Computes the qTarget, qInterf, qArtif, qGlobal features from the output
%   compile
%   erbBW
%   example                              - Run this file to see an example
%   extractDistortionComponents          - Decomposition of an estimated source (or source image) into
%   extractTSIA                          - Decompose each multichannel estimate sEst(:,:,nEst) into TSIA
%   haircell.c
%   haircell.dll
%   ISR_SIR_SAR_fromNewDecomposition     - Computes the ISR, SIR and SAR (and the SDR optionaly) from the output of
%   license.txt
%   LSDecompose                          - SPROJ Weighted least-squares projection of each channel of se on the subspace
%   LSDecompose_tv                       - SPROJ Least-squares projection of each channel of se on the subspace
%   map2SubjScale                        - Non-linear mapping to subjective scale
%   myMapping                            - Single-output two-layer perceptron with one hidden layer
%   myPemoAnalysisFilterBank
%   myPemoSynthesisFilterBank
%   paramTask1.mat
%   paramTask2.mat
%   paramTask3.mat
%   paramTask4.mat
%   PEASS_ObjectiveMeasure               - Main function
%   pemo_internal                        - Example implementation of the PEMO internal representation
%   pemo_metric                          - Example implementation of the PEMO-Q objective quality
%   readme.txt
%   toeplitzC.c
%   
%   MASSEF/UTILITIES/PEASS/EXAMPLE
%   interfSrc1.wav
%   interfSrc2.wav
%   license.txt
%   targetEstimate.wav
%   targetEstimate_eArtif.wav
%   targetEstimate_eInterf.wav
%   targetEstimate_eTarget.wav
%   targetEstimate_true.wav
%   targetSrc.wav
%   
%   MASSEF/UTILITIES/PEASS/GAMMATONE
%   Example_Filter                       - This example creates a 4th order gammatone filter with a center
%   Example_Filterbank                   - This example program demonstrates how to create and use an analysis
%   Example_Synthesis                    - This Example demonstrates how to create and how to use the combined
%   Gfb_analyze.c
%   Gfb_analyze.h
%   Gfb_Analyzer_clear_state             - Analyzer = Gfb_Analyzer_clear_state(analyzer)
%   Gfb_Analyzer_fprocess.c
%   Gfb_Analyzer_new                     - Analyzer = Gfb_Analyzer_new(sampling_frequency_hz,         ..
%   Gfb_Analyzer_process                 - [output, analyzer] = Gfb_Analyzer_process(analyzer, input)
%   Gfb_Analyzer_zresponse               - Zresponse = Gfb_Analyzer_zresponse(analyzer, z)
%   Gfb_center_frequencies               - Function frequencies_hz =                                   ..
%   Gfb_Delay_clear_state                - Delay = Gfb_Delay_clear_state(delay)
%   Gfb_Delay_new                        - Delay = Gfb_Delay_new(analyzer, delay_samples)
%   Gfb_Delay_process                    - [output, delay] = Gfb_Delay_process(delay, input)
%   Gfb_erbscale2hz                      - Hz = Gfb_erbscale2hz(ERBscale)
%   Gfb_Filter_clear_state               - Filter = Gfb_Filter_clear_state(filter)
%   Gfb_Filter_new                       - Is the constructor of a cascaded gammatonefilter
%   Gfb_Filter_process                   - [output, filter] = Gfb_Filter_process(filter, input)
%   Gfb_Filter_zresponse                 - Zresponse = Gfb_Filter_zresponse(filter, z)
%   Gfb_hz2erbscale                      - ERBscale = Gfb_hz2erbscale(Hz)
%   Gfb_Mixer_new                        - Mixer = Gfb_Mixer_new(analyzer, delay, iterations)
%   Gfb_Mixer_process                    - [output, mixer] = Gfb_Mixer_process(mixer, input)
%   Gfb_plot                             - Function Gfb_plot(figure_number, axis_vector, title_string, ..
%   Gfb_set_constants                    - This file defines global constants for the matlab gammatone filterbank
%   Gfb_Synthesizer_clear_state          - Synthesizer = Gfb_Synthesizer_clear_state(synthesizer)
%   Gfb_Synthesizer_new                  - Synthesizer = Gfb_Synthesizer_new(analyzer, desired_delay_in_seconds)
%   Gfb_Synthesizer_process              - [output, synthesizer] = Gfb_Synthesizer_process(synthesizer, input)
%   README.txt
%   README_examples.txt
%   README_implementation.txt
%    
%   This file was generated by updateContents.m on 01 Mar 2017 at 11:47:55.
