#!/usr/bin/perl

$language = "English";
$prefix = "en";

$alphabet = [
['A',  ['a','A']],
[], # slot for a with ogonek (polish)
['B',  ['b','B']],
['C',  ['c','C']],
[], # slot for c with caron (croatian, czech, slovak/large)
[], # slot for c with acute (croatian, polish)
[], # slot for c with circumflex (esperanto)
[], # slot for ch (spanish/traditional)
['D',  ['d','D']],
[], # slot for d+z with caron (croatian)
[], # slot for d with stroke (croatian)
[], # slot for d with caron (slovak/large)
['E',  ['e','E']],
[], # slot for e with ogonek (polish)
['F',  ['f','F']],
['G',  ['g','G']],
[], # slot for g with circumflex (esperanto)
['H',  ['h','H']],
[], # slot for h with circumflex (esperanto)
[], # slot for ch (czech, slovak/small, slovak/large)
['I',  ['i','I']],
['J',  ['j','J']],
[], # slot for j with circumflex (esperanto)
['K',  ['k','K']],
['L',  ['l','L']],
[], # slot for l with stroke (polish)
[], # slot for l with caron (slovak/large)
[], # slot for lj (croatian)
[], # slot for ll (spanish/tradional)
['M',  ['m','M']],
['N',  ['n','N']],
[], # slot for n with tilde (spanish/modern, spanish/tradional)
[], # slot for n with acute (polish)
[], # slot for n with caron (slovak/large)
[], # slot for nj (croatian)
['O',  ['o','O']],
[], # slot for o with acute (polish)
['P',  ['p','P']],
['Q',  ['q','Q']],
['R',  ['r','R']],
[], # slot for r with caron (czech, slovak/large)
['S',  ['s','S']],
[], # slot for s with caron (croatian, czech, slovak/large)
[], # slot for s with acute (polish)
[], # slot for s with circumflex (esperanto)
['T',  ['t','T']],
[], # slot for t with caron (slovak/large)
['U',  ['u','U']],
[], # slot for u with breve (esperanto)
['V',  ['v','V']],
['W',  ['w','W']],
['X',  ['x','X']],
['Y',  ['y','Y']],
['Z',  ['z','Z']],
[], # slot for z with caron (croatian, czech, slovak/large)
[], # slot for z with acute (polish)
[], # slot for z with dot above (polish)
[], # slot for ligature ae (danish, norwegian)
[], # slot for o with stroke (danish, norwegian)
[], # slot for a with ring above (danish, norwegian, swedish)
[], # slot for a with diaeresis (finnish, swedish)
[]  # slot for o with diaeresis (finnish, swedish)
];

$sortcase = 'Aa';
#$sortcase = 'aA';

$ligatures = [
];

@special = ('?', '!', '.', 'letters', '-', '\'');

do 'make-rules.pl';
