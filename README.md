**RTE::DUMP**
====================================================

![](./dump.gif)


**BASIC DOCUMENTATION**

while I was working on dpdk, I found a file named _rte_hexdump.h_ which had only two functions, the first had been implemented here, 

it main use is for dumping memory and printing to a file.

**SYNTAX**

As documented also on _rte_hexdump.h_ the functions parameters are 4:

* the pointer of the filehandle

* the "title" of the dump

* the buffer address to print out

* The number of bytes to dump out

**EXAMPLE**

this small example show the entire functionality of the library (for now):

```perl

#!/usr/bin/perl

no strict;
use RTE::Dump qw(:dump_hex);

my $file = 'dumper.txt';

open(FILE, '>', $file);

print RTE::Dump::rte_hexdump(\FILE, "", \"0xFFFFF", 4096);


```

and the format of the dumper.txt file is:

```
AAAAAA at [0x99c6fa0], len=22000
00000000: 30 78 39 39 39 39 39 39 39 39 39 00 00 00 00 00 | 0x999999999.....
00000010: F0 00 9A 09 31 00 00 00 00 00 00 00 00 00 00 00 | ....1...........
00000020: 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 | ................
00000030: 00 00 00 00 00 00 00 00 9C E4 9B 09 03 00 00 00 | ................
00000040: 24 B4 9B 09 19 00 00 00 01 00 00 00 98 12 9F 09 | $...............
00000050: 1E 00 00 00 0E 00 00 00 00 00 00 00 11 00 00 00 | ................
00000060: 50 B0 9C 09 F8 3B 9F 09 10 00 00 00 29 00 00 00 | P....;......)...
00000070: 06 B7 9D 09 A8 CA 9C 09 00 00 00 00 00 00 00 00 | ................
00000080: 00 00 00 00 01 00 00 00 00 00 00 00 09 11 00 00 | ................
00000090: 00 00 00 00 29 00 00 00 56 70 9C 09 00 00 00 00 | ....)...Vp......
000000A0: 00 00 00 00 70 00 00 00 7B 00 00 00 01 00 00 00 | ....p...{.......
000000B0: FF FF FF 7F 05 00 24 77 6F 72 64 00 29 00 00 00 | ......$word.)...
000000C0: 2F 75 73 72 2F 73 68 61 72 65 2F 70 65 72 6C 2F | /usr/share/perl/
000000D0: 35 2E 32 32 2F 77 61 72 6E 69 6E 67 73 2E 70 6D | 5.22/warnings.pm
000000E0: 00 00 00 00 29 00 00 00 2F 75 73 72 2F 73 68 61 | ....).../usr/sha
000000F0: 72 65 2F 70 65 72 6C 2F 35 2E 32 32 2F 77 61 72 | re/perl/5.22/war
00000100: 6E 69 6E 67 73 2E 70 6D 00 00 00 00 89 00 00 00 | nings.pm........
00000110: B4 00 9A 09 DC 00 9A 09 C8 00 9A 09 9C B0 A3 09 | ................
00000120: DC C3 9C 09 04 50 A3 09 2C 50 A3 09 B4 00 9A 09 | .....P..,P......
00000130: B4 00 9A 09 B4 00 9A 09 2C C9 9C 09 B4 00 9A 09 | ........,.......
00000140: B4 00 9A 09 00 00 00 00 00 00 00 00 00 00 00 00 | ................
00000150: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 | ................
00000160: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 | ................
00000170: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 | ................
00000180: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 | ................
00000190: 00 00 00 00 C1 07 00 00 4A 01 00 00 01 00 00 00 | ........J.......
000001A0: 80 04 9A 09 00 00 00 00 05 00 00 00 00 00 00 00 | ................
000001B0: 00 00 00 00 00 00 00 00 00 00 00 00 70 DE 9B 09 | ............p...
000001C0: 00 00 00 00 34 5A CC BF AB AB AB AB 28 01 00 01 | ....4Z......(...
000001D0: 00 00 00 00 80 04 9A 09 00 00 00 00 06 00 00 00 | ................

```

**REQUIREMENTS**

- [x] perl
- [x] gcc or another C compiler

**INSTALLATION**

for installing RTE::Dump simply execute:

```shell
sudo perl Makefile.PL
sudo make
sudo make test
sudo make install
```

**EXPORTED FUNCTIONS**

for now only one:

* rte_hexdump


**FUTURE DIRECTIONS**

This module won't die here, this is only the first starting point, hope to update monthly.


**Requests and collaborations**

Feel free to email me at <EdoardoMantovani@Lorcon2.com>
- [x] I am open for suggestions, code improvement, collaboration and other requests

**COPYRIGHT AND LICENCE**

Copyright (C) 2020 by *Edoardo Mantovani*, aka BASEBAND


This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.


![](./dump.gif)
