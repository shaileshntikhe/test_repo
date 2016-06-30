use strict;
use warnings;

my $input_file = {
  if(@ARGV < 1) {
    print("Specify input file name, exiting now\n");
    exit(1)
  }
  else {
    $ARGV[1]
  }
}

print("Input file is: $input_file\n")

open(my $reader, "<", $input_file) || do {
  warn("Could not open file, reason: $!\n");
  exit(1);
}

println("File: $input_file is now open for reading\n");
