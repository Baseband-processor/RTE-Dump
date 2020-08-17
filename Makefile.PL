sub END{

use ExtUtils::MakeMaker;

WriteMakefile(
   NAME => 'RTE::Dump',
   LICENSE => 'perl',
   AUTHOR => 'Edoardo Mantovani aka Baseband',
   DEFINE => '',
   VERSION_FROM => 'lib/RTE/Dump.pm',
   LIBS => ['-L/lib -L/usr/lib -L/usr/local/lib '],
   INC => '-I/include -I/usr/include ',
   MIN_PERL_VERSION => '5.22.1',
   PREREQ_PM => {
  },
);


}
