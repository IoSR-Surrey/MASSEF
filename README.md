# Multichannel audio source separation evaluation framework (MASSEF)

[Chris Hummersone](mailto:c.hummersone@surrey.ac.uk), Martin Dewhirst, Joachim Fainberg

![MASSEF](/MASSEF.png?raw=true "MASSEF")

The multichannel audio source separation evaluation framework is designed to facilitate the development and evaluation of audio source separation algorithms. The framework generates the mixture(s), provides the mixture(s) to the separation algorithm(s), and evaluates the outputs of the separation algorithm(s). The framework can also calculate and evaluate the ideal masks for the purposes of comparison.

Sources may have any number of channels; the framework evaluates each channel. The use of [`iosr.bss.mixture`](https://github.com/IoSR-Surrey/MatlabToolbox) objects facilitate the evaluation of spatialised mixtures (e.g. binaural).

## Usage

The framework can be run in two ways:

1. by providing [`iosr.bss.mixture`](https://github.com/IoSR-Surrey/MatlabToolbox) objects and separation algorithms, or
2. by providing estimate and true source wav files.
 
If 1), the framework operates as described above. In addition, the framework can:
 * evaluate localisation accuracy (if the algorithm performs localisation) of any azimuth/elevation estimates returned by the algorithm, and
 * evaluate time-frequency mask accuracy (if the algorithm calculates one).
Use the `MASSEF.execute()` method to operate in this mode.

If 2), the framework evaluates only the supplied estimate(s) using signal-related metrics. Use the `MASSEF.evaluate()` method to operate in this mode.

The framework performs evaluations using a range of metrics, including SNR, [BSSeval and PEASS](http://bass-db.gforge.inria.fr/peass/), and [STOI](http://amtoolbox.sourceforge.net/amt-0.9.8/doc/models/taal2011.php).

## Requirements

1. A recent version of MATLAB (with the Signal Processing Toolbox) and a compatible C compiler. Tested on Mac OS X 10.10 and Ubuntu 14.04 using MATLAB R2014b and R2015a.
2. Additional toolboxes are required, which are downloaded and installed automatically by the framework (see below).

## Installation

1. Navigate Matlab to the installation directory and type
    ```
    MASSEF.install
    ```
on the Matlab command line. This function downloads and installs the required files.

2. Type
    ```
    MASSEF.start
    ```
at the start of each session to start the framework and its dependencies.

## Experiments

Experiments are conducted with the MASSEF class. For more information about the various framework options, type

```
MASSEF.doc
```

More information on implementing separation algorithms can be found in the help documentation.

## Cite Me

TBC

---

Copyright 2016 University of Surrey
