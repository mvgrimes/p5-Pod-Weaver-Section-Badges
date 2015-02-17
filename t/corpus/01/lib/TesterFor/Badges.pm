use 5.14.0;
use strict;
use warnings;
use Moops;

# ABSTRACT: A tester

class TesterFor::Badges using Moose with Pod::Weaver::Section::Badges::Utils {
    has badge_args => (
        is => 'ro',
        isa => HashRef[Str],
        default => sub { {} },
        traits => ['Hash'],
        handles => {
            badge_args_kv => 'kv',
        },
    );
}

1;
