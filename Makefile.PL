use 5.016003;
use ExtUtils::MakeMaker;

use Apache::TestMM qw(test clean);


Apache::TestMM::filter_args();
Apache::TestMM::generate_script('t/TEST');

my @clean = qw(t/TEST);

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Apache::TryCatch',
    VERSION_FROM      => 'lib/Apache/TryCatch.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    clean => { FILES => "@clean" },
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Apache/TryCatch.pm', # retrieve abstract from module
       AUTHOR         => 'Michael J Schout <mschout@macports.org>') : ()),
);
