package HTTP::AcceptHeader;

our $VERSION = '0.01';

use 5.008008;
use Moose;
use HTTP::AcceptHeader::Entry;
use HTTP::AcceptHeader::Field;

__PACKAGE__->meta->make_immutable;

=head1 NAME

HTTP::AcceptHeader - Utility objects for HTTP Accept Headers

=head1 SYNOPSIS

=head1 DESCRIPTION

Given a string or a list of strings that conforms to the specification for the
HTTP Accept Header, return an object that provides useful tools for inspecting
that header.  This is primarily useful for writing tools that perform content
negotiation

=head1 SEE ALSO

L<HTTP::AcceptHeader::Entry>, L<HTTP::AcceptHeader::Field>

=head1 AUTHOR

See L<HTTP::ContentNegotiation> for author information

=head1 COPYRIGHT & LICENSE

See L<HTTP::ContentNegotiation> for licensing and copyright information.

=cut

