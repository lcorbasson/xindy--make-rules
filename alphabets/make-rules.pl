#!/usr/bin/perl

open XDY,">$ARGV[0].xdy";
open DOC,">$ARGV[0]-doc.tex";
open TEST,">$ARGV[0].raw";
open TESTXDY,">$ARGV[0]-test.xdy";

print XDY ";; Rules for xindy; generated by make-rules.pl\n";
print XDY ";; language: $language\n\n";

if ($prefix) {
    $prefix = $prefix . '-';
}
$prefix = "";

print TESTXDY "(require \"lang/$ARGV[0].xdy\")\n";
print TESTXDY "(define-sort-rule-orientations (forward backward forward forward))\n";
print TESTXDY "(use-rule-set :run 0\n";
print TESTXDY "	      :rule-set (\"".$prefix."alphabetize\" \"".$prefix."ignore-special\"))\n";
print TESTXDY "(use-rule-set :run 1\n";
print TESTXDY "	      :rule-set (\"".$prefix."resolve-diacritics\" \"".$prefix."ignore-special\"))\n";
print TESTXDY "(use-rule-set :run 2\n";
print TESTXDY "	      :rule-set (\"".$prefix."resolve-case\" \"".$prefix."ignore-special\"))\n";
print TESTXDY "(use-rule-set :run 3\n";
print TESTXDY "	      :rule-set (\"".$prefix."resolve-special\"))\n";
close TESTXDY;
system("cat test.xdy >> $ARGV[0]-test.xdy");

$begin = 128;
# $begin =  97 if ($script eq "cyrillic");
# $begin = 150 if ($script eq "latin");
# $begin =  65 if ($script eq "greek");
  
if (!$begin) {
    $begin = 65;
}

print "Alphabet has " . @{$alphabet} . " elements.\n";

for ($i = 0; $i < @{$alphabet}; $i++) {
  if (defined($alphabet->[$i][0])) {  
    $letter = $alphabet->[$i][0];
    $lout = $letter;
    $lout =~ s/\~/~~/g;
    $lout =~ s/\"/~\"/g;
    $token = chr($i+$begin);
    $token =~ s/\~/~~/g;
    $token =~ s/\"/~\"/g;
    if ($after ne $letter) {
      print XDY "\"))\n" if ($i);
      print XDY "(define-letter-group \"$lout\"";
      print XDY " :after \"$after\"" if ($i);
      print XDY " :prefixes (\"";
    } else {
      print XDY "\" \"";
    }
    print XDY "$token";
    $after = $letter;
  }
}

print XDY "\"))\n\n";

$ref = \$i;
$offset = $begin;
$f = 1;
make_tokens();

# print test raw file
# alphabet
  $p = 1;
  foreach $letter (keys %tokens) {
    print TEST "(indexentry :key (\"$letter\") :locref \"$p\")\n";
    $p++;
  }
# end

process_ligatures();

print_tokens($prefix . "alphabetize");

$ref = \$j;
$offset = 161;
$f = 1;
make_tokens();

for ($i = 0; $i < @{$ligatures}; $i++) {
  if ($ligatures->[$i][1] eq "before") {
    $token = chr(161); 
  } else {
    $token = chr(255);
  }      
  foreach $ligature_variant (@{$ligatures->[$i][0]}) {
    $tokens{$ligature_variant} = $token;
  }
}

print_tokens($prefix . "resolve-diacritics");

$ref = \$k;
$offset = 48;
$f = 1;
if ($sortcase eq "Aa") {
  $offset = 57;
  $f = -1;
}

make_tokens();

process_ligatures();

print_tokens($prefix . "resolve-case");

foreach $character (@special) {
  $tokens{$character} = "" unless ($character eq "letters");
}

print_tokens($prefix . "ignore-special") if ($tokens);

$offset = 161;
$f = 1;

for ($l = 0; $l < @special; $l++) {
  if (@special[$l] eq "letters") {
    $lett = $l;
#    make_tokens();
#    process_ligatures();
  } else {
    $token = chr($l+$offset);
    $tokens{@special[$l]} = $token;
  }
}

print_tokens($prefix . "resolve-special") if ($tokens);

$ref = \$lett;
make_tokens();
process_ligatures();
print XDY "(define-rule-set \"".$prefix."position\"\n\n";
print XDY "  :inherit-from (\"position\")\n";
print XDY "  :rules ((\"";
print_tokens2("+\$\" \"\"  ");
print XDY "          (\"";
print_tokens2("\"   \"~e\"");
print XDY "))\n\n";

print_tokens($prefix . "resolve-letters");

# print doc:
# alphabet
  for ($i = 0; $i < @{$alphabet}; $i++) {
    for ($j = 1; $j < @{$alphabet->[$i]}; $j++) {
        push @l,join("\\,", (@{$alphabet->[$i][$j]}));
    }
    if ((@l)) {  
	push @m, join(" & ", (@l));
    }
#    push @m, "`".$alphabet->[$i][0]."':\\>".join(" -- ", (@l));
    @l = ();
  }
  print DOC "\\subsection{$language";
  print DOC " ($variant)" if ($variant);
  print DOC "}\n\n";
  print DOC "\\subsubsection{Alphabet}\n";
  print DOC "\\icod\\fcod\n";
  print DOC "\\begin{alphabet}\n";
  print DOC join("\\\\\n", (@m));
  print DOC "\n\\end{alphabet}\n";
  print DOC "\\idef\\fdef\n";

# ligatures
  print DOC "\n\\subsubsection{Ligatures}\n";
  print DOC "\\begin{flushleft}\n";
  print DOC "None.\n" unless @{$ligatures};
  @m = ();
  for ($i = 0; $i < @{$ligatures}; $i++) {
    for ($j = 0; $j < @{$ligatures->[$i][0]}; $j++) {
      push @m, "`$ligatures->[$i][0][$j]' is sorted like `" .
        join("\\,", (@{$ligatures->[$i][2][$j]})) .
        "', but \\emph{$ligatures->[$i][1]} it in otherwise equal words.";
    }
  }
  print DOC join("\\\\\n", (@m));
  print DOC "\n\\end{flushleft}\n";

# case
  print DOC "\n\\subsubsection{Upper-/lowercase words}\n";
  if ($sortcase eq "Aa") {
    print DOC "Capitalized or uppercase words are sorted \\emph{before} ";
    print DOC "otherwise equal lowercase words.\n";
  } else {
    print DOC "Capitalized or uppercase words are sorted \\emph{after} ";
    print DOC "otherwise equal lowercase words.\n";
  }
  
# special
print DOC "\n\\subsubsection{Special characters}\n";
print DOC "The order of special characters and letters is:\n";
print DOC "\\begin{flushleft}\n";
print DOC join("\\hspace{4mm}", (@special));
print DOC "\n\\end{flushleft}\n";
print DOC "\\newpage\n";

# end

# print test raw file

#  for ($i = 0; $i < @{$alphabet}; $i++) {
#    for ($j = 1; $j < @{$alphabet->[$i]}; $j++) {
#      foreach $letter (@{$alphabet->[$i][$j]}) {
#        print TEST "(indexentry :key (\"$letter\") :locref \"$p\")\n";
#	$p++;
#      }
#    }
#  }

# ligatures
  for ($i = 0; $i < @{$ligatures}; $i++) {
    for ($j = 0; $j < @{$ligatures->[$i][0]}; $j++) {
      print TEST
        "(indexentry :key (\"$ligatures->[$i][0][$j]\") :locref \"$p\")\n";
      $p++;
      print TEST "(indexentry :key (\"" .
        join("", (@{$ligatures->[$i][2][$j]})) . "\") :locref \"$p\")\n";
      $p++;
    }
  }

# special
foreach $letter (@special) {
  if ($letter ne "letters") {
    print TEST "(indexentry :key (\"$letter\") :locref \"$p\")\n";
    $p++;
  }
}

# end

sub make_tokens {
  for ($i = 0; $i < @{$alphabet}; $i++) {
    for ($j = 1; $j < @{$alphabet->[$i]}; $j++) {
      for ($k = 0; $k < @{$alphabet->[$i][$j]}; $k++) {
        $token = chr($f*$$ref+$offset);
	if ($alphabet->[$i][$j][$k]) {
	  $tokens{$alphabet->[$i][$j][$k]} = $token;
	}
      }
    }
  }
}

sub process_ligatures {
  for ($i = 0; $i < @{$ligatures}; $i++) {
    for ($j = 0; $j < @{$ligatures->[$i][0]}; $j++) {
      $token = "";
      foreach $ligature_component (@{$ligatures->[$i][2][$j]}) {
        $token = $token.$tokens{$ligature_component};
      }
      $tokens{$ligatures->[$i][0][$j]} = $token;
    }
  }
}

sub print_tokens {
  print XDY "(define-rule-set \"$_[0]\"\n\n  :inherit-from (\"$_[0]\")\n";
  print XDY "  :rules (";
  foreach $letter (sort {
    (length($b) <=> length($a)) || ($tokens{$a} cmp $tokens{$b})
  } (keys %tokens)) {
    $lout = $letter;
    $lout =~ s/\~/~~/g;
    $lout =~ s/\"/~\"/g;
    $tout = $tokens{$letter};
    $tout =~ s/\~/~~/g;
    $tout =~ s/\"/~\"/g;
    print XDY "(\"$lout\" \"$tout\" :string)\n          ";
  }
  print XDY "))\n\n";
  %tokens = ();
}

sub close_range {
    if (ord($_[0])-ord($range_beg) > 0) {
	if (ord($_[0])-ord($range_beg) > 1) {
	    $rule .= "-";
	}
	$rule .= $_[0];
    }
}

sub print_tokens2 {
  $rule = "";
  $rule_is_long = 0;
  $range_beg = "";
  $lold = "";
  foreach $letter (sort  {
    (length($b) <=> length($a)) || ($a cmp $b)
  } (keys %tokens)) {
    $lout = $letter;
    $lout =~ s/\~/~~/g;
    $lout =~ s/\"/~\"/g;
# form ranges, e.g. abc -> a-c, but only for characters! (length 1)
# for regexps, e.g. '([a-c]|ch|ll)+$'
    if (length($lout)>1 || ord($lout) != ord($lold)+1) {
	close_range($lold);
	$open_range = 0;
	$range_beg = $lout;
	if (length($lout)==1 && length($lold)!=1) {
	    $rule .= "|" if $rule;
	    $rule .= "[";
	} elsif (length($lout)!=1 && length($lold)==1) {
	    $rule .= "]";
	}
	if (length($lout)>1 && length($lold)>0) {
	    $rule .= "|";
	    $rule_is_long = 1;
	}
	$rule .= $lout;
    } else {
	$open_range = 1;
    }
    $lold = $lout;
  }
  close_range($lout) if ($open_range);
  if (length($lout)==1) {
      $rule .= "]";
  }
  print XDY "(" if $rule_is_long;
  print XDY $rule;
  print XDY ")" if $rule_is_long;
  print XDY "$_[0] :bregexp)\n";
}
