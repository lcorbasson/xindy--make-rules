#!/usr/bin/perl

$language = "Croatian";
$prefix = "hr";

$alphabet = [
['A',    ['a','A']],
[], # slot for a with ogonek (polish)
['B',    ['b','B']],
['C',    ['c','C']],
['È',    ['è','È']],
['Æ',    ['æ','Æ']],
[], # slot for c with circumflex (esperanto)
[], # slot for ch (spanish/traditional)
['D',    ['d','D']],
['D¾',   ['d¾','D¾','D®']],
['Ð',    ['ð','Ð']],
[], # slot for d with caron (slovak/large)
['E',    ['e','E']],
[], # slot for e with ogonek (polish)
['F',    ['f','F']],
['G',    ['g','G']],
[], # slot for g with circumflex (esperanto)
['H',    ['h','H']],
[], # slot for h with circumflex (esperanto)
[], # slot for ch (czech, slovak/small, slovak/large)
['I',    ['i','I']],
['J',    ['j','J']],
[], # slot for j with circumflex (esperanto)
['K',    ['k','K']],
['L',    ['l','L']],
[], # slot for l with stroke (polish)
[], # slot for l with caron (slovak/large)
['Lj',   ['lj','Lj','LJ']],
[], # slot for ll (spanish/tradional)
['M',    ['m','M']],
['N',    ['n','N']],
[], # slot for n with tilde (spanish/modern, spanish/tradional)
[], # slot for n with acute (polish)
[], # slot for n with caron (slovak/large)
['Nj',   ['nj','Nj','NJ']],
['O',    ['o','O']],
[], # slot for o with acute (polish)
['P',    ['p','P']],
[], # slot for q (many)
['R',    ['r','R']],
[], # slot for r with caron (czech, slovak/large)
['S',    ['s','S']],
['©',    ['¹','©']],
[], # slot for s with acute (polish)
[], # slot for s with circumflex (esperanto)
['T',    ['t','T']],
[], # slot for t with caron (slovak/large)
['U',    ['u','U']],
[], # slot for u with breve (esperanto)
['V',    ['v','V']],
[], # slot for w (many)
[], # slot for x (many)
[], # slot for y (many)
['Z',    ['z','Z']],
['®',    ['¾','®']],
[], # slot for z with acute (polish)
[], # slot for z with dot above (polish)
[], # slot for ligature ae (danish, norwegian)
[], # slot for o with stroke (danish, norwegian)
[], # slot for a with ring above (danish, norwegian, swedish)
[], # slot for a with diaeresis (finnish, swedish)
[]  # slot for o with diaeresis (finnish, swedish)
];

$ligatures = [
[['ß'], 'after', [['s','s']]],
];

@special = ('?', '!', '.', 'letters', '-', '\'');

$sortcase = "Aa";
#$sortcase = "aA";

do 'make-rules.pl';
