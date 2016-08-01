use strict;
use warnings;

my $in_file = {
  if(@ARGV < 1) {
    print("Specify input file name, exiting now\n");
    exit(1)
  }
  else {
    $ARGV[1]
  }
}

print("Input file is: $in_file\n")

open(my $reader, "<", $in_file) || do {
  warn("Could not open file, reason: $!\n");
  exit(1);
}

println("File: $in_file is now open for reading\n");

while(my $line = <$reader>)) {
  print("Current line: $line");
}

println("Reading file $in_file is completed\n");
