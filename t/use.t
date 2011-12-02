use Test::Most;

BEGIN {
  use_ok 'HTTP::ContentNegotiation';
  use_ok 'HTTP::AcceptHeader';
  use_ok 'HTTP::AcceptHeader::Entry';
  use_ok 'HTTP::AcceptHeader::Field';
}

done_testing(4);
