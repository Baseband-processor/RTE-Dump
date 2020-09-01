package RTE::Dump;
require  v5.22.1;

# Made by Edoardo Mantovani,2020
# initial release

use strict;
use warnings;

our $VERSION = '0.20';
use base qw(Exporter DynaLoader);

our %EXPORT_TAGS = (
   dump_hex => [qw(
	rte_hexdump
        rte_memdump

   )],
);

our @EXPORT = (
   @{ $EXPORT_TAGS{dump_hex} },

);



__PACKAGE__->bootstrap($VERSION);


1;

__END__

=head1 NAME
RTE::Dump A practical way for dumping data  in a stylish way

=head1 SYNOPSIS

#!/usr/bin/perl

no strict;
use RTE::Dump qw(:dump_hex);

my $file = 'dumper.txt';

open(FILE, '>', $file);

print RTE::Dump::rte_hexdump(\FILE, "", \"0xFFFFF", 4096);
print RTE::Dump::rte_memdump(\FILE, undef, \"0xFFFF", 220);

=head1 FUNCTIONS

the supported functions are 2:

* rte_hexdump
* rte_memdump


=head1 DESCRIPTION

for both functions the parameters are 4.
As documented also on "rte_hexdump.h" from the dpdk package, the function's parameters:

* the pointer of the filehandle

* the "title" of the dump

* the buffer address to print out

* The number of bytes to dump out

For more info check the official Github repo:

	https://github.com/Baseband-processor/RTE-Dump


=head1 AUTHOR
 
<lt>Edoardo Mantovani<gt> 
  
=head1 COPYRIGHT AND LICENSE


Copyright (C) 2020 by Edoardo Mantovani, aka BASEBAND

This library is free software; you can redistribute it and/or modify it under the same terms as Perl itself, either Perl version 5.8.8 or, at your option, any later version of Perl 5 you may have available.
