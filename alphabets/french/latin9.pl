#!/usr/bin/perl

$language = "French";
$prefix = "fr";
$script = "latin";

$alphabet = [
['A',  ['a','A'],          ['à','À'],['â','Â'],['ä','Ä']],
                   [], # a with breve (romanian)
                   [], # a with circumflex (romanian)
                   [], # a with ogonek (polish)
['B',  ['b','B']],
['C',  ['c','C'],['ç','Ç']],
                   [], # ch (spanish/traditional)
                   [], # cs (hungarian)
                   [], # c with caron (many)
                   [], # c with acute (croatian, lower sorbian, polish)
                   [], # c with circumflex (esperanto)
                   [], # c with cedilla (albanian, turkish)
['D',  ['d','D']],
                   [], # dh (albanian)
                   [], # d+z with caron (croatian)
                   [], # d with stroke (croatian)
                   [], # d with caron (slovak/large)
                   [], # eth (icelandic)
['E',  ['e','E'],['é','É'],['è','È'],['ê','Ê'],['ë','Ë']],
                   [], # e with caron (lower sorbian)
                   [], # e with diaeresis (albanian)
                   [], # e with ogonek (polish)
['F',  ['f','F']],
['G',  ['g','G']],
                   [], # gj (albanian)
                   [], # g with circumflex (esperanto)
                   [], # g with breve (turkish)
['H',  ['h','H']],
                   [], # h with circumflex (esperanto)
                   [], # ch (many)
                   [], # dotless i (turkish)
['I',  ['i','I'],                    ['î','Î'],['ï','Ï']],
                   [], # i with circumflex (romanian)
['J',  ['j','J']],
                   [], # j with circumflex (esperanto)
['K',  ['k','K']],
                   [], # l with stroke (lower sorbian)
['L',  ['l','L']],
                   [], # l with stroke (polish)
                   [], # l with caron (slovak/large)
                   [], # lj (croatian)
                   [], # ll (albanian, spanish/traditional)
['M',  ['m','M']],
['N',  ['n','N']],
                   [], # nj (albanian, croatian)
                   [], # ny (hungarian)
                   [], # n with tilde (spanish/modern, spanish/traditional)
                   [], # n with acute (lower sorbian, polish)
                   [], # n with caron (slovak/large)
['O',  ['o','O'],                    ['ô','Ô'],['ö','Ö']],
                   [], # o with acute (polish)
                   [], # o with diaeresis (hungarian, turkish)
['P',  ['p','P']],
['Q',  ['q','Q']],
['R',  ['r','R']],
                   [], # rr (albanian)
                   [], # r with caron (czech, slovak/large)
                   [], # r with acute (lower sorbian)
['S',  ['s','S']],
                   [], # sh (albanian)
                   [], # sz (hungarian)
                   [], # s with caron (many)
                   [], # s with acute (lower sorbian, polish)
                   [], # s with circumflex (esperanto)
                   [], # s with cedilla (romanian, turkish)
['T',  ['t','T']],
                   [], # th (albanian)
                   [], # t with caron (slovak/large)
                   [], # t with cedilla (romanian)
['U',  ['u','U'],          ['ù','Ù'],['û','Û'],['ü','Ü']],
                   [], # u with breve (esperanto)
                   [], # u with diaeresis (hungarian, turkish)
['V',  ['v','V']],
['W',  ['w','W']],
['X',  ['x','X']],
                   [], # xh (albanian)
['Y',  ['y','Y'],                              ['ÿ','¾']],
['Z',  ['z','Z']],
                   [], # z with caron (many)
                   [], # zs (hungarian)
                   [], # zh (albanian)
                   [], # z with acute (lower sorbian, polish)
                   [], # z with dot above (polish)
                   [], # thorn (icelandic)
                   [], # ligature ae (danish, norwegian)
                   [], # o with stroke (danish, norwegian)
                   [], # a with ring above (danish, norwegian, swedish)
                   [], # a with diaeresis (finnish, swedish)
                   []  # o with diaeresis (hungarian, turkish)
];

$sortcase = 'Aa';
#$sortcase = 'aA';

$ligatures = [
[['ß'], 'after', [['s','s']]],
[['½','¼'], 'after', [['o','e'], ['O','e']]]
];

@special = ('?', '!', '.', 'letters', '-', '\'');

do 'make-rules.pl';
