#!/usr/bin/perl

$language = "Polish";
$prefix = "pl";
$script = "latin";

$alphabet = [
['A',    ['a','A']],
['¡',    ['±','¡']],
['B',    ['b','B']],
['C',    ['c','C']],
                   [], # c with caron (croatian, czech, slovak/large)
['Æ',    ['æ','Æ']],
                   [], # c with circumflex (esperanto)
                   [], # ch (spanish/traditional)
['D',    ['d','D']],
                   [], # d+z with caron (croatian)
                   [], # d with stroke (croatian)
                   [], # d with caron (slovak/large)
['E',    ['e','E']],
['Ê',    ['ê','Ê']],
['F',    ['f','F']],
['G',    ['g','G']],
                   [], # g with circumflex (esperanto)
['H',    ['h','H']],
                   [], # h with circumflex (esperanto)
                   [], # ch (czech, slovak/small, slovak/large)
['I',    ['i','I']],
['J',    ['j','J']],
                   [], # j with circumflex (esperanto)
['K',    ['k','K']],
['L',    ['l','L']],
['£',    ['³','£']],
                   [], # l with caron (slovak/large)
                   [], # lj (croatian)
                   [], # ll (spanish/tradional)
['M',    ['m','M']],
['N',    ['n','N']],
                   [], # n with tilde (spanish/modern, spanish/tradional)
['Ñ',    ['ñ','Ñ']],
                   [], # n with caron (slovak/large)
                   [], # nj (croatian)
['O',    ['o','O']],
['Ó',    ['ó','Ó']],
['P',    ['p','P']],
                   [], # q (many)
['R',    ['r','R']],
                   [], # r with caron (czech, slovak/large)
['S',    ['s','S']],
                   [], # s with caron (croatian, czech, slovak/large)
['¦',    ['¶','¦']],
                   [], # s with circumflex (esperanto)
['T',    ['t','T']],
                   [], # t with caron (slovak/large)
['U',    ['u','U']],
                   [], # u with breve (esperanto)
                   [], # v (many)
['W',    ['w','W']],
                   [], # x (many)
['Y',    ['y','Y']],
['Z',    ['z','Z']],
                   [], # z with caron (croatian, czech, slovak/large)
['¬',    ['¼','¬']],
['¯',    ['¿','¯']],
                   [], # ligature ae (danish, norwegian)
                   [], # o with stroke (danish, norwegian)
                   [], # a with ring above (danish, norwegian, swedish)
                   [], # a with diaeresis (finnish, swedish)
                   []  # o with diaeresis (finnish, swedish)
];

$ligatures = [
[['ß'], 'after', [['s','s']]],
];

@special = ('?', '!', '.', 'letters', '-', '\'');

$sortcase = "Aa";
#$sortcase = "aA";

do 'make-rules.pl';
