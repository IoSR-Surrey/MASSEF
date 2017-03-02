function publishHelp

outdir = [MASSEF.dir filesep 'help_html' filesep];

options = struct(...
    'outputDir',outdir, ...
    'evalCode',false ...
);

publish('help_Index.m',options);
publish('help_MASSEF.m',options);
publish('help_MASSEF_evaluate.m',options);
publish('help_MASSEF_execute.m',options);
publish('help_MASSEF_install.m',options);
publish('help_MASSEF_save.m',options);
publish('help_MASSEF_start.m',options);
publish('help_MASSEFresults.m',options);
publish('help_MASSEFresults_algorithmInfo.m',options);
publish('help_MASSEFresults_filter.m',options);
publish('help_MASSEFresults_input.m',options);
publish('help_MASSEFresults_merge.m',options);
publish('help_MASSEFresults_mixtureInfo.m',options);
publish('help_Separators.m',options);
publish('help_Example.m',options);

builddocsearchdb(outdir)
