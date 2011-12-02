use Test::Most;
use HTTP::AcceptHeader::Entry;

ok my @examples = (
  'application/json',
  'text/html;q=0.5;charset="us-ascii"',
  'text/richtext',
  'application/vnd.app.purchase+xml;version=1',
);

for(my $example = shift @examples) {
  ok my $entry = HTTP::AcceptHeader::Entry->parse_accept_entry($example);
  is $entry->media_type, 'application/json';
  is $entry->quality, 1;
}

for(my $example = shift @examples) {
  ok my $entry = HTTP::AcceptHeader::Entry->parse_accept_entry($example);
  is $entry->media_type, 'text/html';
  is $entry->quality, 0.5;
  is $entry->attributes->{charset}, 'us-ascii';
}

done_testing;

