#!/usr/bin/perl

$language = "Croatian";
$prefix = "hr";
$script = "latin";

$alphabet = [
['A',    ['a','A']],
                   [], # a with ogonek (polish)
['B',    ['b','B']],
['C',    ['c','C']],
['È',    ['è','È']],
['Æ',    ['æ','Æ']],
                   [], # c with circumflex (esperanto)
                   [], # ch (spanish/traditional)
['D',    ['d','D']],
['D¾',   ['d¾','D¾','D®']],
['Ð',    ['ð','Ð']],
                   [], # d with caron (slovak/large)
['E',    ['e','E']],
                   [], # e with ogonek (polish)
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
                   [], # l with stroke (polish)
                   [], # l with caron (slovak/large)
['Lj',   ['lj','Lj','LJ']],
                   [], # ll (spanish/tradional)
['M',    ['m','M']],
['N',    ['n','N']],
                   [], # n with tilde (spanish/modern, spanish/tradional)
                   [], # n with acute (polish)
                   [], # n with caron (slovak/large)
['Nj',   ['nj','Nj','NJ']],
['O',    ['o','O']],
                   [], # o with acute (polish)
['P',    ['p','P']],
                   [], # q (many)
['R',    ['r','R']],
                   [], # r with caron (czech, slovak/large)
['S',    ['s','S']],
['©',    ['¹','©']],
                   [], # s with acute (polish)
                   [], # s with circumflex (esperanto)
['T',    ['t','T']],
                   [], # t with caron (slovak/large)
['U',    ['u','U']],
                   [], # u with breve (esperanto)
['V',    ['v','V']],
                   [], # w (many)
                   [], # x (many)
                   [], # y (many)
['Z',    ['z','Z']],
['®',    ['¾','®']],
                   [], # z with acute (polish)
                   [], # z with dot above (polish)
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
