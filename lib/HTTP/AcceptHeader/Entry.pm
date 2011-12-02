package HTTP::AcceptHeader::Entry;

use Moose;
use Email::MIME::ContentType;

has 'discrete',
  is => 'ro',
  isa => 'Str',
  required => 1;

has 'composite',
  is => 'ro',
  isa => 'Str',
  required => 1;

has 'attributes',
  is => 'ro',
  isa => 'HashRef',
  required => 1;

sub media_type { sprintf "%s/%s",  $_[0]->discrete, $_[0]->composite }
sub quality { shift->attributes->{q} || 1 }

sub parse_accept_entry {
  my ($class, $header_str) = @_;
  my $parsed = Email::MIME::ContentType::parse_content_type($header_str);
  return $class->new($parsed);
}

__PACKAGE__->meta->make_immutable;

=head1 NAME

HTTP::AcceptHeader::Entry - Utility object for HTTP Accept Header Entries

=head1 SYNOPSIS

    use HTTP::AcceptHeader::Entry;

    my $entry_string = 'text/html;charset="us-ascii";q=.85';
    my $entry = HTTP::AcceptHeader::Entry->parse_accept_entry($entry_string);

    say $entry->content_type; ## "text/html"

=head1 DESCRIPTION

Uses L<Email::MIME::ContentType> to parse a single entry from a string that
conforms to the HTTP Accept Header specification.  Provides some useful methods
for assisting you in writing RESTful applications, particularly during content
negotiation.

You probably won't use this standalone as your HTTP Header Accept is nearly
always a string composed of multiple entries.  See L<HTTP::AcceptHeader::Field>
and L<HTTP::AcceptHeader>.

=head1 SEE ALSO

L<Email::MIME::ContentType>, L<HTTP::AcceptHeader::Field>, L<HTTP::AcceptHeader>

=head1 AUTHOR

See L<HTTP::ContentNegotiation> for author information

=head1 COPYRIGHT & LICENSE

See L<HTTP::ContentNegotiation> for licensing and copyright information.

=cut



