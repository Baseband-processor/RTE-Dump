#!/usr/bin/perl

#Made by Edoardo Mantovani,2020

use Test;
use strict;
no strict 'subs';
no warnings;
BEGIN{ plan tests => 1 }
use RTE::Dump qw( :dump_hex);

my $file = 'test.txt';
open(FILE, '>', $file);
RTE::Dump::rte_hexdump(\FILE, "test", \"0xFFFFF", 1024);


if(-e $file && ( -s $file != 0 ) ){ 
	print "test successfull!\n";	
	ok(1);
}else{
	return -1; # bad 	
}

