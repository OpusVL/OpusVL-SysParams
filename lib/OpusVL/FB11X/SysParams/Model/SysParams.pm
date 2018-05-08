
package OpusVL::FB11X::SysParams::Model::SysParams;

use strict;
use warnings;

use Moose;
use OpusVL::SysParams;
use OpusVL::SysParams::Schema;

extends 'Catalyst::Model';

has connect_info => (
    is => 'rw',
);

has _sysparams => (
    is => 'rw',
);

sub BUILD {
    my ($self, $args) = @_;

    my $schema = OpusVL::SysParams::Schema->connect( $self->connect_info->@* );
    $self->_sysparams(OpusVL::SysParams->new({ schema => $schema }));
}

=head1 COPYRIGHT and LICENSE

Copyright (C) 2011 OpusVL

This software is licensed according to the "IP Assignment Schedule" provided with the development project.

=cut

1;
