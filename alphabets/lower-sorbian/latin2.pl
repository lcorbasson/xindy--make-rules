#!/usr/bin/perl

$language = "Lower Sorbian";
$prefix = "s1";
$script = "latin";

$alphabet = [
['A',    ['a','A']],
                   [], # a with breve (romanian)
                   [], # a with circumflex (romanian)
                   [], # a with ogonek (polish)
['B',    ['b','B']],
['C',    ['c','C']],
                   [], # ch (many)
                   [], # cs (hungarian)
['È',    ['è','È']],
['Æ',    ['æ','Æ']],
                   [], # c with circumflex (esperanto)
                   [], # c with cedilla (albanian, turkish)
['D',    ['d','D']],
                   [], # dh (albanian)
                   [], # d+z with caron (croatian)
                   [], # d with stroke (croatian)
                   [], # d with caron (slovak/large)
                   [], # eth (icelandic)
['E',    ['e','E']],
['Ì',    ['ì','Ì']],
                   [], # e with diaeresis (albanian)
                   [], # e with ogonek (polish)
['F',    ['f','F']],
['G',    ['g','G']],
                   [], # gj (albanian)
                   [], # g with circumflex (esperanto)
                   [], # g with breve (turkish)
['H',    ['h','H']],
                   [], # h with circumflex (esperanto)
['Ch',   ['ch','Ch','CH']],
                   [], # dotless i (turkish)
['I',    ['i','I']],
                   [], # i with circumflex (romanian)
['J',    ['j','J']],
                   [], # j with circumflex (esperanto)
['K',    ['k','K']],
['£',    ['³','£']],
['L',    ['l','L']],
                   [], # l with stroke (polish)
                   [], # l with caron (slovak/large)
                   [], # lj (croatian)
                   [], # ll (albanian, spanish/traditional)
['M',    ['m','M']],
['N',    ['n','N']],
                   [], # nj (albanian, croatian)
                   [], # ny (hungarian)
                   [], # n with tilde (spanish/modern, spanish/traditional)
['Ñ',    ['ñ','Ñ']],
                   [], # n with caron (slovak/large)
['O',    ['o','O']],
                   [], # o with acute (polish)
                   [], # o with diaeresis (hungarian, turkish)
['P',    ['p','P']],
                   [], # q (many)
['R',    ['r','R']],
                   [], # rr (albanian)
                   [], # r with caron (czech, slovak/large)
['À',    ['à','À']],
['S',    ['s','S']],
                   [], # sh (albanian)
                   [], # sz (hungarian)
['©',    ['¹','©']],
['¦',    ['¶','¦']],
                   [], # s with circumflex (esperanto)
                   [], # s with cedilla (romanian, turkish)
['T',    ['t','T']],
                   [], # th (albanian)
                   [], # t with caron (slovak/large)
                   [], # t with cedilla (romanian)
['U',    ['u','U']],
                   [], # u with breve (esperanto)
                   [], # u with diaeresis (hungarian, turkish)
                   [], # v (many)
['W',    ['w','W']],
                   [], # x (many)
                   [], # xh (albanian)
['Y',    ['y','Y']],
['Z',    ['z','Z']],
                   [], # zh (albanian)
                   [], # zs (hungarian)
['®',    ['¾','®']],
['¬',    ['¼','¬']],
                   [], # z with dot above (polish)
                   [], # thorn (icelandic)
                   [], # ligature ae (danish, norwegian)
                   [], # o with stroke (danish, norwegian)
                   [], # a with ring above (danish, norwegian, swedish)
                   [], # a with diaeresis (finnish, swedish)
                   []  # o with diaeresis (hungarian, turkish)
];

$ligatures = [
[['ß'], 'after', [['s','s']]],
];

@special = ('?', '!', '.', 'letters', '-', '\'');

$sortcase = "Aa";
#$sortcase = "aA";

do 'make-rules.pl';
