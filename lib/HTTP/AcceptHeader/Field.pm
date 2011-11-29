package HTTP::AcceptHeader::Field;

use Moose;

has 'fields',
  is => 'ro',
  isa => 'Array',
  required => 1;

sub parse_accept_field { }


__PACKAGE__->meta->make_immutable;

=head1 NAME

HTTP::AcceptHeader::Field - Utility object for HTTP Accept Header Field

=head1 VERSION

version 0.01

=head1 SYNOPSIS

    use HTTP::AcceptHeader::Field;

    ## TBD

=head1 DESCRIPTION

    ## TBD

=head1 SEE ALSO

L<HTTP::AcceptHeader::Entry>, L<HTTP::AcceptHeader>

=head1 AUTHOR

See L<HTTP::AcceptHeader> for author information

=head1 COPYRIGHT & LICENSE

See L<HTTP::AcceptHeader> for licensing and copyright information.

=cut


