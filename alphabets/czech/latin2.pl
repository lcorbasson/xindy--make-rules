#!/usr/bin/perl

$language = "Czech";
$prefix = "cs";
$script = "latin";

$alphabet = [
['A',    ['a','A'], ['á','Á']],
                   [], # a with ogonek (polish)
['B',    ['b','B']],
['C',    ['c','C']],
['È',    ['è','È']],
                   [], # c with acute (croatian, polish)
                   [], # c with circumflex (esperanto)
                   [], # ch (spanish/traditional)
['D',    ['d','D'], ['ï','Ï']],
                   [], # d+z with caron (croatian)
                   [], # d with stroke (croatian)
                   [], # d with caron (slovak/large)
['E',    ['e','E'], ['é','É'], ['ì','Ì']],
                   [], # e with ogonek (polish)
['F',    ['f','F']],
['G',    ['g','G']],
                   [], # g with circumflex (esperanto)
['H',    ['h','H']],
                   [], # h with circumflex (esperanto)
['Ch',   ['ch','Ch','CH']],
['I',    ['i','I'], ['í','Í']],
['J',    ['j','J']],
                   [], # j with circumflex (esperanto)
['K',    ['k','K']],
['L',    ['l','L']],
                   [], # l with stroke (polish)
                   [], # l with caron (slovak/large)
                   [], # lj (croatian)
                   [], # ll (spanish/tradional)
['M',    ['m','M']],
['N',    ['n','N'], ['ò','Ò']],
                   [], # n with tilde (spanish/modern, spanish/tradional)
                   [], # n with acute (polish)
                   [], # n with caron (slovak/large)
                   [], # nj (croatian)
['O',    ['o','O'], ['ó','Ó']],
                   [], # o with acute (polish)
['P',    ['p','P']],
['Q',    ['q','Q']],
['R',    ['r','R']],
['Ø',    ['ø','Ø']],
['S',    ['s','S']],
['©',    ['¹','©']],
                   [], # s with acute (polish)
                   [], # s with circumflex (esperanto)
['T',    ['t','T'], ['»','«']],
                   [], # t with caron (slovak/large)
['U',    ['u','U'], ['ú','Ú'], ['ù','Ù']],
                   [], # u with breve (esperanto)
['V',    ['v','V']],
['W',    ['w','W']],
['X',    ['x','X']],
['Y',    ['y','Y'], ['ý','Ý']],
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
