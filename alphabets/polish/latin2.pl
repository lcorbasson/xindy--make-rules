#!/usr/bin/perl

$language = "Polish";
$prefix = "pl";

$alphabet = [
['A',    ['a','A']],
['¡',    ['±','¡']],
['B',    ['b','B']],
['C',    ['c','C']],
[], # slot for c with caron (croatian, czech, slovak/large)
['Æ',    ['æ','Æ']],
[], # slot for c with circumflex (esperanto)
[], # slot for ch (spanish/traditional)
['D',    ['d','D']],
[], # slot for d+z with caron (croatian)
[], # slot for d with stroke (croatian)
[], # slot for d with caron (slovak/large)
['E',    ['e','E']],
['Ê',    ['ê','Ê']],
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
['£',    ['³','£']],
[], # slot for l with caron (slovak/large)
[], # slot for lj (croatian)
[], # slot for ll (spanish/tradional)
['M',    ['m','M']],
['N',    ['n','N']],
[], # slot for n with tilde (spanish/modern, spanish/tradional)
['Ñ',    ['ñ','Ñ']],
[], # slot for n with caron (slovak/large)
[], # slot for nj (croatian)
['O',    ['o','O']],
['Ó',    ['ó','Ó']],
['P',    ['p','P']],
[], # slot for q (many)
['R',    ['r','R']],
[], # slot for r with caron (czech, slovak/large)
['S',    ['s','S']],
[], # slot for s with caron (croatian, czech, slovak/large)
['¦',    ['¶','¦']],
[], # slot for s with circumflex (esperanto)
['T',    ['t','T']],
[], # slot for t with caron (slovak/large)
['U',    ['u','U']],
[], # slot for u with breve (esperanto)
[], # slot for v (many)
['W',    ['w','W']],
[], # slot for x (many)
['Y',    ['y','Y']],
['Z',    ['z','Z']],
[], # slot for z with caron (croatian, czech, slovak/large)
['¬',    ['¼','¬']],
['¯',    ['¿','¯']],
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
