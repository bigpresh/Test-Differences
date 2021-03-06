use strict;
use warnings;
use ExtUtils::MakeMaker;

eval "use 5.006";
if ( my $error = $@ ) {
    warn $error;
    exit 0;
}

WriteMakefile(
    NAME          => 'Test::Differences',
    AUTHOR        => 'David Cantrell <david@cantrell.org.uk>',
    VERSION_FROM  => 'lib/Test/Differences.pm',
    ABSTRACT_FROM => 'lib/Test/Differences.pm',
    PL_FILES      => {},
    PREREQ_PM     => {
        'Test::More'    => 0,
        'Text::Diff'    => 0.35,
        'Data::Dumper'  => 2.126,
        'Capture::Tiny' => 0.24,
    },
    dist       => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean      => { FILES    => 'Test-Differences-*' },
    META_MERGE => {
        resources =>
          { repository => 'https://github.com/Ovid/Test-Differences' }
    },
);
