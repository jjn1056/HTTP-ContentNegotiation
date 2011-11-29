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

John Napiorkowski, C<jjnapiork@cpan.org>

=head1 COPYRIGHT & LICENSE

Copyright 2011 John Napiorkowski

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=cut

