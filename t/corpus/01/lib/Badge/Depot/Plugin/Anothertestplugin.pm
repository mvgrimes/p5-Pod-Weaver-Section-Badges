use 5.14.0;
use strict;
use warnings;
use Moops;

class Badge::Depot::Plugin::Anothertestplugin using Moose with Badge::Depot {

    has user => (
        is => 'ro',
        isa => Str,
    );
    has repo => (
        is => 'ro',
        isa => Str,
    );
    
    method BUILD {
        $self->link_url(sprintf 'https://example.org/%s/%s' => $self->user, $self->repo);
        $self->image_url(sprintf 'https://example.org/%s/%s.svg' => $self->user, $self->repo);
    }
}

1;