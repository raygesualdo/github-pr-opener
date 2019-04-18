#!/usr/bin/perl

foreach my $line ( <STDIN> ) {
  print $line;
  if (index($line, "pull/new") != -1) {
    my ( $link ) = $line =~ m/(http.*)/;
    `open $link`;
  }
}
