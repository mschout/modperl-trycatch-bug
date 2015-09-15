package Apache::TryCatch;

use Apache2::Const -compile => qw(OK);
use TryCatch;
use CGI;

sub handler :method {
    my ($self, $r) = @_;

    $r->content_type('text/plain');

    print $self->crash($r);

    return Apache2::Const::OK;
}

sub crash {
    my $cgi = CGI->new;

    try { $cgi->param(x => 'x') }

    return "OK";
}

1;
