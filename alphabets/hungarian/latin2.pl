#!/usr/bin/perl

# TODO: It seems that "ssz" has to be sorted like "szs" (?)
# I don't know why, I don't know how...

$language = "Hungarian";
$prefix = "hu";
$script = "latin";

$alphabet = [
['A',  ['a','A'],['�','�']],
                   [], # a with breve (romanian)
                   [], # a with circumflex (romanian)
                   [], # a with ogonek (polish)
['B',  ['b','B']],
['C',  ['c','C']],
                   [], # ch (spanish/traditional)
['Cs', ['cs','Cs','CS']],
                   [], # c with caron (many)
                   [], # c with acute (croatian, lower sorbian, polish)
                   [], # c with circumflex (esperanto)
                   [], # c with cedilla (albanian, kurdish, turkish)
['D',  ['d','D'],['dz','Dz','DZ'],['dzs','Dzs','DZs','DZS']],
                   [], # dh (albanian)
                   [], # d+z with caron (croatian)
                   [], # d+z with acute (upper sorbian)
                   [], # d with caron (slovak/large)
                   [], # d with stroke (croatian)
                   [], # eth (icelandic)
['E',  ['e','E'],['�','�']],
                   [], # e with caron (lower/upper sorbian)
                   [], # e with circumflex (kurdish)
                   [], # e with diaeresis (albanian)
                   [], # e with ogonek (polish)
['F',  ['f','F']],
['G',  ['g','G'],['gy','Gy','GY']],
                   [], # gj (albanian)
                   [], # g with circumflex (esperanto)
                   [], # g with breve (turkish)
['H',  ['h','H']],
                   [], # h with circumflex (esperanto)
                   [], # ch (many)
                   [], # dotless i (turkish)
['I',  ['i','I'],['�','�']],
                   [], # i with circumflex (kurdish, romanian)
['J',  ['j','J']],
                   [], # j with circumflex (esperanto)
['K',  ['k','K']],
                   [], # l with stroke (lower/upper sorbian)
['L',  ['l','L'],['ly','Ly','LY']],
                   [], # lj (croatian)
                   [], # ll (albanian, spanish/traditional)
                   [], # l with stroke (polish)
                   [], # l with caron (slovak/large)
['M',  ['m','M']],
['N',  ['n','N']],
                   [], # nj (albanian, croatian)
                   [], # ny (hungarian)
                   [], # n with caron (slovak/large)
                   [], # n with acute (lower/upper sorbian, polish)
                   [], # n with tilde (spanish/modern, spanish/traditional)
['O',  ['o','O'],['�','�']],
                   [], # o with acute (polish, upper sorbian)
['�',  ['�','�'],['�','�']],
['P',  ['p','P']],
                   [], # q (many)
['R',  ['r','R']],
                   [], # rr (albanian)
                   [], # r with caron (czech, slovak/large, upper sorbian)
                   [], # r with acute (lower sorbian)
['S',  ['s','S']],
                   [], # sh (albanian)
['Sz', ['sz','Sz','SZ']],
                   [], # s with caron (many)
                   [], # s with acute (lower sorbian, polish)
                   [], # s with circumflex (esperanto)
                   [], # s with comma below (romanian)
                   [], # s with cedilla (kurdish, turkish)
['T',  ['t','T'],['ty','Ty','TY']],
                   [], # th (albanian)
                   [], # t with caron (slovak/large)
                   [], # t with comma below (romanian)
                   [], # c with acute (upper sorbian)
['U',  ['u','U'],['�','�']],
                   [], # u with breve (esperanto)
                   [], # u with circumflex (kurdish)
['�',  ['�','�'],['�','�']],
['V',  ['v','V']],
                   [], # w (many)
                   [], # x (many)
                   [], # xh (albanian)
                   [], # y (many)
['Z',  ['z','Z']],
                   [], # zh (albanian)
['Zs', ['zs','Zs','ZS']],
                   [], # z with caron (many)
                   [], # z with acute (lower sorbian, polish)
                   [], # z with dot above (polish)
                   [], # thorn (icelandic)
                   [], # ligature ae (danish, icelandic, norwegian)
                   [], # o with stroke (danish, norwegian)
                   [], # a with ring above (danish, norwegian, swedish)
                   [], # a with diaeresis (finnish, swedish)
                   []  # o with diaeresis (finnish, swedish)
];

$sortcase = 'Aa';
#$sortcase = 'aA';

$ligatures = [
];

@special = ('?', '!', '.', 'letters', '-', '\'');

do 'make-rules.pl';
