package RTE::Dump;
require  v5.22.1;

#Made by Edoardo Mantovani,2020
# initial release

use strict;
use warnings;




our $VERSION = '0.03';
use base qw(Exporter DynaLoader);

our %EXPORT_TAGS = (
   dump_hex => [qw(
	rte_hexdump
      

   )],
);

our @EXPORT = (
   @{ $EXPORT_TAGS{dump_hex} },

);



__PACKAGE__->bootstrap($VERSION);


1;

__END__


