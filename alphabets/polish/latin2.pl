#!/usr/bin/perl

$language = "Polish";
$prefix = "pl";
$script = "latin";

$alphabet = [
['A',    ['a','A']],
                   [], # a with breve (romanian)
                   [], # a with circumflex (romanian)
['¡',    ['±','¡']],
['B',    ['b','B']],
['C',    ['c','C']],
                   [], # ch (spanish/traditional)
                   [], # cs (hungarian)
                   [], # c with caron (many)
['Æ',    ['æ','Æ']],
                   [], # c with circumflex (esperanto)
                   [], # c with cedilla (albanian, kurdish, turkish)
['D',    ['d','D']],
                   [], # dh (albanian)
                   [], # d+z with caron (croatian)
                   [], # d+z with acute (upper sorbian)
                   [], # d with caron (slovak/large)
                   [], # d with stroke (croatian)
                   [], # eth (icelandic)
['E',    ['e','E']],
                   [], # e with caron (lower/upper sorbian)
                   [], # e with circumflex (kurdish)
                   [], # e with diaeresis (albanian)
['Ê',    ['ê','Ê']],
['F',    ['f','F']],
['G',    ['g','G']],
                   [], # gj (albanian)
                   [], # g with circumflex (esperanto)
                   [], # g with breve (turkish)
['H',    ['h','H']],
                   [], # h with circumflex (esperanto)
                   [], # ch (many)
                   [], # dotless i (turkish)
['I',    ['i','I']],
                   [], # i with circumflex (kurdish, romanian)
['J',    ['j','J']],
                   [], # j with circumflex (esperanto)
['K',    ['k','K']],
                   [], # l with stroke (lower/upper sorbian)
['L',    ['l','L']],
                   [], # lj (croatian)
                   [], # ll (albanian, spanish/traditional)
['£',    ['³','£']],
                   [], # l with caron (slovak/large)
['M',    ['m','M']],
['N',    ['n','N']],
                   [], # nj (albanian, croatian)
                   [], # ny (hungarian)
                   [], # n with caron (slovak/large)
['Ñ',    ['ñ','Ñ']],
                   [], # n with tilde (spanish/modern, spanish/traditional)
['O',    ['o','O']],
['Ó',    ['ó','Ó']],
                   [], # o with diaeresis (hungarian, turkish)
['P',    ['p','P']],
                   [], # q (many)
['R',    ['r','R']],
                   [], # rr (albanian)
                   [], # r with caron (czech, slovak/large, upper sorbian)
                   [], # r with acute (lower sorbian)
['S',    ['s','S']],
                   [], # sh (albanian)
                   [], # sz (hungarian)
                   [], # s with caron (many)
['¦',    ['¶','¦']],
                   [], # s with circumflex (esperanto)
                   [], # s with comma below (romanian)
                   [], # s with cedilla (kurdish, turkish)
['T',    ['t','T']],
                   [], # th (albanian)
                   [], # t with caron (slovak/large)
                   [], # t with comma below (romanian)
                   [], # c with acute (upper sorbian)
['U',    ['u','U']],
                   [], # u with breve (esperanto)
                   [], # u with circumflex (kurdish)
                   [], # u with diaeresis (hungarian, turkish)
                   [], # v (many)
['W',    ['w','W']],
                   [], # x (many)
                   [], # xh (albanian)
['Y',    ['y','Y']],
['Z',    ['z','Z']],
                   [], # zh (albanian)
                   [], # zs (hungarian)
                   [], # z with caron (many)
['¬',    ['¼','¬']],
['¯',    ['¿','¯']],
                   [], # thorn (icelandic)
                   [], # ligature ae (danish, icelandic, norwegian)
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
