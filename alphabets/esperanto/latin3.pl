#!/usr/bin/perl

$language = "Esperanto";
$prefix = "eo";
$script = "latin";

$alphabet = [
['A',  ['a','A']],
                   [], # a with breve (romanian)
                   [], # a with circumflex (romanian)
                   [], # a with ogonek (polish)
['B',  ['b','B']],
['C',  ['c','C']],
                   [], # ch (spanish/traditional)
                   [], # cs (hungarian)
                   [], # c with caron (many)
                   [], # c with acute (croatian, lower sorbian, polish)
['Æ',  ['æ','Æ']],
                   [], # c with cedilla (albanian, turkish)
['D',  ['d','D']],
                   [], # dh (albanian)
                   [], # d+z with caron (croatian)
                   [], # d with stroke (croatian)
                   [], # d with caron (slovak/large)
                   [], # eth (icelandic)
['E',  ['e','E']],
                   [], # e with caron (lower sorbian)
                   [], # e with diaeresis (albanian)
                   [], # e with ogonek (polish)
['F',  ['f','F']],
['G',  ['g','G']],
                   [], # gj (albanian)
['Ø',  ['ø','Ø']],
                   [], # g with breve (turkish)
['H',  ['h','H']],
['¦',  ['¶','¦']],
                   [], # ch (many)
                   [], # dotless i (turkish)
['I',  ['i','I']],
                   [], # i with circumflex (romanian)
['J',  ['j','J']],
['¬',  ['¼','¬']],
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
['O',  ['o','O']],
                   [], # o with acute (polish)
                   [], # o with diaeresis (hungarian, turkish)
['P',  ['p','P']],
                   [], # q (many)
['R',  ['r','R']],
                   [], # rr (albanian)
                   [], # r with caron (czech, slovak/large)
                   [], # r with acute (lower sorbian)
['S',  ['s','S']],
                   [], # sh (albanian)
                   [], # sz (hungarian)
                   [], # s with caron (many)
                   [], # s with acute (lower sorbian, polish)
['Þ',  ['þ','Þ']],
                   [], # s with cedilla (romanian, turkish)
['T',  ['t','T']],
                   [], # th (albanian)
                   [], # t with caron (slovak/large)
                   [], # t with cedilla (romanian)
['U',  ['u','U']],
['Ý',  ['ý','Ý']],
                   [], # u with diaeresis (hungarian, turkish)
['V',  ['v','V']],
                   [], # w (many)
                   [], # x (many)
                   [], # xh (albanian)
                   [], # y (many)
['Z',  ['z','Z']],
                   [], # zh (albanian)
                   [], # zs (hungarian)
                   [], # z with caron (many)
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
[['ß'], 'after', [['s','s']]]
];

@special = ('?', '!', '.', 'letters', '-', '\'');

do 'make-rules.pl';
