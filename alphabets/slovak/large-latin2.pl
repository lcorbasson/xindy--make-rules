#!/usr/bin/perl

$language = "Slovak";
$variant = "large";
$prefix = "sk";
$script = "latin";

$alphabet = [
['A',    ['a','A'], ['á','Á'], ['ä','Ä']],
                   [], # a with breve (romanian)
                   [], # a with circumflex (romanian)
                   [], # a with ogonek (polish)
['B',    ['b','B']],
['C',    ['c','C']],
                   [], # ch (spanish/traditional)
                   [], # cs (hungarian)
['È',    ['è','È']],
                   [], # c with acute (croatian, lower sorbian, polish)
                   [], # c with circumflex (esperanto)
                   [], # c with cedilla (albanian, kurdish, turkish)
['D',    ['d','D']],
                   [], # dh (albanian)
                   [], # d+z with caron (croatian)
                   [], # d+z with acute (upper sorbian)
['Ï',    ['ï','Ï']],
                   [], # d with stroke (croatian)
                   [], # eth (icelandic)
['E',    ['e','E'], ['é','É']],
                   [], # e with caron (lower/upper sorbian)
                   [], # e with circumflex (kurdish)
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
['I',    ['i','I'], ['í','Í']],
                   [], # i with circumflex (kurdish, romanian)
['J',    ['j','J']],
                   [], # j with circumflex (esperanto)
['K',    ['k','K']],
                   [], # l with stroke (lower/upper sorbian)
['L',    ['l','L'], ['å','Å']],
                   [], # lj (croatian)
                   [], # ll (albanian, spanish/traditional)
                   [], # l with stroke (polish)
['¥',    ['µ','¥']],
['M',    ['m','M']],
['N',    ['n','N']],
                   [], # nj (albanian, croatian)
                   [], # ny (hungarian)
['Ò',    ['ò','Ò']],
                   [], # n with acute (lower/upper sorbian, polish)
                   [], # n with tilde (spanish/modern, spanish/traditional)
['O',    ['o','O'], ['ó','Ó'], ['ô','Ô']],
                   [], # o with acute (polish, upper sorbian)
                   [], # o with diaeresis (hungarian, turkish)
['P',    ['p','P']],
['Q',    ['q','Q']],
['R',    ['r','R'], ['à','À']],
                   [], # rr (albanian)
['Ø',    ['ø','Ø']],
                   [], # r with acute (lower sorbian)
['S',    ['s','S']],
                   [], # sh (albanian)
                   [], # sz (hungarian)
['©',    ['¹','©']],
                   [], # s with acute (lower sorbian, polish)
                   [], # s with circumflex (esperanto)
                   [], # s with comma below (romanian)
                   [], # s with cedilla (kurdish, turkish)
['T',    ['t','T']],
                   [], # th (albanian)
['«',    ['»','«']],
                   [], # t with comma below (romanian)
                   [], # c with acute (upper sorbian)
['U',    ['u','U'], ['ú','Ú']],
                   [], # u with breve (esperanto)
                   [], # u with circumflex (kurdish)
                   [], # u with diaeresis (hungarian, turkish)
['V',    ['v','V']],
['W',    ['w','W']],
['X',    ['x','X']],
                   [], # xh (albanian)
['Y',    ['y','Y'], ['ý','Ý']],
['Z',    ['z','Z']],
                   [], # zh (albanian)
                   [], # zs (hungarian)
['®',    ['¾','®']],
                   [], # z with acute (lower sorbian, polish)
                   [], # z with dot above (polish)
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
