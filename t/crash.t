#!/usr/bin/env perl
#

use Apache::Test -withtestmore;
use Apache::TestUtil;
use Apache::TestRequest qw(GET);

plan tests => 2;

my $r = GET '/crashme';
is $r->code, 200;
is $r->content, 'OK';
