#!/usr/bin/perl

$language = "Danish";
$prefix = "da";
$script = "latin";

$alphabet = [
['A',  ['a','A']],
                   [], # a with ogonek (polish)
['B',  ['b','B']],
['C',  ['c','C']],
                   [], # c with caron (croatian, czech, slovak/large)
                   [], # c with acute (croatian, polish)
                   [], # c with circumflex (esperanto)
                   [], # ch (spanish/traditional)
['D',  ['d','D']],
                   [], # d+z with caron (croatian)
                   [], # d with stroke (croatian)
                   [], # d with caron (slovak/large)
['E',  ['e','E']],
                   [], # e with ogonek (polish)
['F',  ['f','F']],
['G',  ['g','G']],
                   [], # g with circumflex (esperanto)
['H',  ['h','H']],
                   [], # h with circumflex (esperanto)
                   [], # ch (czech, slovak/small, slovak/large)
['I',  ['i','I']],
['J',  ['j','J']],
                   [], # j with circumflex (esperanto)
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
['Q',  ['q','Q']],
['R',  ['r','R']],
                   [], # r with caron (czech, slovak/large)
['S',  ['s','S']],
                   [], # s with caron (croatian, czech, slovak/large)
                   [], # s with acute (polish)
                   [], # s with circumflex (esperanto)
['T',  ['t','T']],
                   [], # t with caron (slovak/large)
['U',  ['u','U']],
                   [], # u with breve (esperanto)
['V',  ['v','V']],
['W',  ['w','W']],
['X',  ['x','X']],
['Y',  ['y','Y']],
['Z',  ['z','Z']],
                   [], # z with caron (croatian, czech, slovak/large)
                   [], # z with acute (polish)
                   [], # z with dot above (polish)
['Æ',  ['æ','Æ']],
['Ø',  ['ø','Ø']],
['Å',  ['å','Å']],
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
