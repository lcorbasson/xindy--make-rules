#!/usr/bin/perl

$language = "Slovak";
$variant = "small";
$prefix = "sk";

$alphabet = [
['A',    ['a','A'], ['á','Á'], ['ä','Ä']],
[], # slot for a with ogonek (polish)
['B',    ['b','B']],
['C',    ['c','C'], ['è','È']],
[], # slot for c with caron (croatian, czech, slovak/large)
[], # slot for c with acute (croatian, polish)
[], # slot for c with circumflex (esperanto)
[], # slot for ch (spanish/traditional)
['D',    ['d','D'], ['ï','Ï']],
[], # slot for d+z with caron (croatian)
[], # slot for d with stroke (croatian)
[], # slot for d with caron (slovak/large)
['E',    ['e','E'], ['é','É']],
[], # slot for e with ogonek (polish)
['F',    ['f','F']],
['G',    ['g','G']],
[], # slot for g with circumflex (esperanto)
['H',    ['h','H']],
[], # slot for h with circumflex (esperanto)
['Ch',   ['ch','Ch','CH']],
['I',    ['i','I'], ['í','Í']],
['J',    ['j','J']],
[], # slot for j with circumflex (esperanto)
['K',    ['k','K']],
['L',    ['l','L'], ['å','Å'], ['µ','¥']],
[], # slot for l with stroke (polish)
[], # slot for l with caron (slovak/large)
[], # slot for lj (croatian)
[], # slot for ll (spanish/tradional)
['M',    ['m','M']],
['N',    ['n','N'], ['ò','Ò']],
[], # slot for n with tilde (spanish/modern, spanish/tradional)
[], # slot for n with acute (polish)
[], # slot for n with caron (slovak/large)
[], # slot for nj (croatian)
['O',    ['o','O'], ['ó','Ó'], ['ô','Ô']],
[], # slot for o with acute (polish)
['P',    ['p','P']],
['Q',    ['q','Q']],
['R',    ['r','R'], ['à','À'], ['ø','Ø']],
[], # slot for r with caron (czech, slovak/large)
['S',    ['s','S'], ['¹','©']],
[], # slot for s with caron (croatian, czech, slovak/large)
[], # slot for s with acute (polish)
[], # slot for s with circumflex (esperanto)
['T',    ['t','T'], ['»','«']],
[], # slot for t with caron (slovak/large)
['U',    ['u','U'], ['ú','Ú']],
[], # slot for u with breve (esperanto)
['V',    ['v','V']],
['W',    ['w','W']],
['X',    ['x','X']],
['Y',    ['y','Y'], ['ý','Ý']],
['Z',    ['z','Z'], ['¾','®']],
[], # slot for z with caron (croatian, czech, slovak/large)
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
