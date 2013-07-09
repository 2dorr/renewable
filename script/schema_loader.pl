#/usr/bin/perl

use strict;
use warnings;

use DBIx::Class::Schema::Loader qw/ make_schema_at /;

make_schema_at(
    'Models::Schema',
    { debug => 1,
      dump_directory => '../lib',
    },
    [
     'dbi:mysql:Renewable_Energy_Lab:localhost',
     'root',
     '',
    ],
);