#!/usr/bin/perl

# TODO: It seems that "ssz" has to be sorted like "szs" (?)
# I don't know why, I don't know how...

$language = "Hungarian";
$prefix = "hu";
$script = "latin";

$alphabet = [
['A',  ['a','A'],['á','Á']],
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
                   [], # c with cedilla (albanian, turkish)
['D',  ['d','D'],['dz','Dz','DZ'],['dzs','Dzs','DZs','DZS']],
                   [], # dh (albanian)
                   [], # d+z with caron (croatian)
                   [], # d with stroke (croatian)
                   [], # d with caron (slovak/large)
                   [], # eth (icelandic)
['E',  ['e','E'],['é','É']],
                   [], # e with caron (lower sorbian)
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
['I',  ['i','I'],['í','Í']],
                   [], # i with circumflex (romanian)
['J',  ['j','J']],
                   [], # j with circumflex (esperanto)
['K',  ['k','K']],
                   [], # l with stroke (lower sorbian)
['L',  ['l','L'],['ly','Ly','LY']],
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
['O',  ['o','O'],['ó','Ó']],
                   [], # o with acute (polish)
['Ö',  ['ö','Ö'],['õ','Õ']],
['P',  ['p','P']],
                   [], # q (many)
['R',  ['r','R']],
                   [], # rr (albanian)
                   [], # r with caron (czech, slovak/large)
                   [], # r with acute (lower sorbian)
['S',  ['s','S']],
                   [], # sh (albanian)
['Sz', ['sz','Sz','SZ']],
                   [], # s with caron (many)
                   [], # s with acute (lower sorbian, polish)
                   [], # s with circumflex (esperanto)
                   [], # s with cedilla (romanian, turkish)
['T',  ['t','T'],['ty','Ty','TY']],
                   [], # th (albanian)
                   [], # t with caron (slovak/large)
                   [], # t with cedilla (romanian)
['U',  ['u','U'],['ú','Ú']],
                   [], # u with breve (esperanto)
['Ü',  ['ü','Ü'],['û','Û']],
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
                   [], # ligature ae (danish, norwegian)
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
