#!/usr/bin/perl

$language = "English";

$alphabet = [
['A',  ['a','A']],
['B',  ['b','B']],
['C',  ['c','C']],
['D',  ['d','D']],
['E',  ['e','E']],
['F',  ['f','F']],
['G',  ['g','G']],
['H',  ['h','H']],
['I',  ['i','I']],
['J',  ['j','J']],
['K',  ['k','K']],
['L',  ['l','L']],
['M',  ['m','M']],
['N',  ['n','N']],
['O',  ['o','O']],
['P',  ['p','P']],
['Q',  ['q','Q']],
['R',  ['r','R']],
['S',  ['s','S']],
['T',  ['t','T']],
['U',  ['u','U']],
['V',  ['v','V']],
['W',  ['w','W']],
['X',  ['x','X']],
['Y',  ['y','Y']],
['Z',  ['z','Z']]
];

$sortcase = 'Aa';
#$sortcase = 'aA';

$ligatures = [
];

@special = ('?', '!', '.', 'letters', '-', '\'');

do 'make-rules.pl';
