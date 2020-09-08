#!/usr/bin/perl

sub BEGIN{

no strict;
no warnings;
use RTE::Dump qw(:dump_hex);

my $file = 'dumper.txt';

open(FILE, '>', $file);

print RTE::Dump::rte_hexdump(\FILE, "AAAAAA", "0x999999999", 22000);

}
