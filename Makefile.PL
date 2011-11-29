#!/usr/bin/env perl

use maint::Maker;

all_from 'lib/HTTP/AcceptHeader.pm';
requires 'Moose';
requires 'Email::MIME::ContentType';
test_requires 'Test::Most';

tests_recursive;

