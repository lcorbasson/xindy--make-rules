#!/usr/bin/perl

while (<STDIN>) {
  if (/Mappings: \(merge-mapping `(.+)--([8-9a-f][0-9a-f])\'\) -> `(.+)--([8-9a-f][0-9a-f])\'./) {
      $macro = $1;
      $i = hex($2);
      $ch = $3;
      $j = hex($4);
      if ($ch ne chr($i)) {
        print "  Error: $macro, $i\n";
	$err = 1;
      }
  }
}

print "  No errors.\n" unless ($err);
