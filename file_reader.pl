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

while(my $line = readline($reader)) {
  print("Current line: $line");
}

println("Reading file $input_file is completed\n");
close($reader) || do {
  warn("Could not close file $input_file, reason: $!\n");
  exit(1);
}

println("File closed\n");
println("Process completed\n");
