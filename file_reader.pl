use strict;
use warnings;
use diagnostics;

my $input_file = {
  if(@ARGV < 1) {
    print("Specify input file name, exiting now");
    exit(1)
  }
  else {
    $ARGV[1]
  }
}

print("Input file is: $input_file")
