#!/usr/bin/perl

$language = "Turkish";
$prefix = "tr";
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
                   [], # c with circumflex (esperanto)
['Ç',  ['ç','Ç']],
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
                   [], # g with circumflex (esperanto)
['Ð',  ['ð','Ð']],
['H',  ['h','H']],
                   [], # h with circumflex (esperanto)
                   [], # ch (many)
['I',  ['ý','I']],
['Ý',  ['i','Ý']],
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
['O',  ['o','O']],
                   [], # o with acute (polish)
['Ö',  ['ö','Ö']],
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
                   [], # s with circumflex (esperanto)
['Þ',  ['þ','Þ']],
['T',  ['t','T']],
                   [], # th (albanian)
                   [], # t with caron (slovak/large)
                   [], # t with cedilla (romanian)
['U',  ['u','U']],
                   [], # u with breve (esperanto)
['Ü',  ['ü','Ü']],
['V',  ['v','V']],
                   [], # w (many)
                   [], # x (many)
                   [], # xh (albanian)
['Y',  ['y','Y']],
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
];

@special = ('?', '!', '.', 'letters', '-', '\'');

do 'make-rules.pl';
