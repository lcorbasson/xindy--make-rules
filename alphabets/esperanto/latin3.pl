#!/usr/bin/perl

$language = "Esperanto";
$prefix = "eo";
$script = "latin";

$alphabet = [
['A',  ['a','A']],
                   [], # a with ogonek (polish)
['B',  ['b','B']],
['C',  ['c','C']],
                   [], # c with caron (croatian, czech, slovak/large)
                   [], # c with acute (croatian, polish)
['Æ',  ['æ','Æ']],
                   [], # ch (spanish/traditional)
['D',  ['d','D']],
                   [], # d+z with caron (croatian)
                   [], # d with stroke (croatian)
                   [], # d with caron (slovak/large)
['E',  ['e','E']],
                   [], # e with ogonek (polish)
['F',  ['f','F']],
['G',  ['g','G']],
['Ø',  ['ø','Ø']],
['H',  ['h','H']],
['¦',  ['¶','¦']],
                   [], # ch (czech, slovak/small, slovak/large)
['I',  ['i','I']],
['J',  ['j','J']],
['¬',  ['¼','¬']],
['K',  ['k','K']],
['L',  ['l','L']],
                   [], # l with stroke (polish)
                   [], # l with caron (slovak/large)
                   [], # lj (croatian)
                   [], # ll (spanish/tradional)
['M',  ['m','M']],
['N',  ['n','N']],
                   [], # n with tilde (spanish/modern, spanish/tradional)
                   [], # n with acute (polish)
                   [], # n with caron (slovak/large)
                   [], # nj (croatian)
['O',  ['o','O']],
                   [], # o with acute (polish)
['P',  ['p','P']],
                   [], # q (many)
['R',  ['r','R']],
                   [], # r with caron (czech, slovak/large)
['S',  ['s','S']],
                   [], # s with caron (croatian, czech, slovak/large)
                   [], # s with acute (polish)
['Þ',  ['þ','Þ']],
['T',  ['t','T']],
                   [], # t with caron (slovak/large)
['U',  ['u','U']],
['Ý',  ['ý','Ý']],
['V',  ['v','V']],
                   [], # w (many)
                   [], # x (many)
                   [], # y (many)
['Z',  ['z','Z']],
                   [], # z with caron (croatian, czech, slovak/large)
                   [], # z with acute (polish)
                   [], # z with dot above (polish)
                   [], # ligature ae (danish, norwegian)
                   [], # o with stroke (danish, norwegian)
                   [], # a with ring above (danish, norwegian, swedish)
                   [], # a with diaeresis (finnish, swedish)
                   []  # o with diaeresis (finnish, swedish)
];

$sortcase = 'Aa';
#$sortcase = 'aA';

$ligatures = [
[['ß'], 'after', [['s','s']]]
];

@special = ('?', '!', '.', 'letters', '-', '\'');

do 'make-rules.pl';
