#!perl

use strict;
use warnings FATAL => 'all';

use lib qw(t/lib blib/lib);

use Apache::TestRunPerl ();

Apache::TestRunPerl->new->run(@ARGV);
