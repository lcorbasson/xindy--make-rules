#!/usr/bin/perl

$language = "Albanian";
$prefix = "sq";
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
['�',  ['�','�']],
['D',  ['d','D']],
['Dh', ['dh','Dh','DH']],
                   [], # d+z with caron (croatian)
                   [], # d with stroke (croatian)
                   [], # d with caron (slovak/large)
                   [], # eth (icelandic)
['E',  ['e','E']],
                   [], # e with caron (lower sorbian)
['�',  ['�','�']],
                   [], # e with ogonek (polish)
['F',  ['f','F']],
['G',  ['g','G']],
['Gj', ['gj','Gj','GJ']],
                   [], # g with circumflex (esperanto)
                   [], # g with breve (turkish)
['H',  ['h','H']],
                   [], # h with circumflex (esperanto)
                   [], # ch (many)
                   [], # dotless i (turkish)
['I',  ['i','I']],
                   [], # i with circumflex (romanian)
['J',  ['j','J']],
                   [], # j with circumflex (esperanto)
['K',  ['k','K']],
                   [], # l with stroke (lower sorbian)
['L',  ['l','L']],
                   [], # l with stroke (polish)
                   [], # l with caron (slovak/large)
                   [], # lj (croatian)
['Ll', ['ll','Ll','LL']],
['M',  ['m','M']],
['N',  ['n','N']],
['Nj', ['nj','Nj','NJ']],
                   [], # ny (hungarian)
                   [], # n with tilde (spanish/modern, spanish/traditional)
                   [], # n with acute (lower sorbian, polish)
                   [], # n with caron (slovak/large)
['O',  ['o','O']],
                   [], # o with acute (polish)
                   [], # o with diaeresis (hungarian, turkish)
['P',  ['p','P']],
['Q',  ['q','Q']],
['R',  ['r','R']],
['Rr', ['rr','Rr','RR']],
                   [], # r with caron (czech, slovak/large)
                   [], # r with acute (lower sorbian)
['S',  ['s','S']],
['Sh', ['sh','Sh','SH']],
                   [], # sz (hungarian)
                   [], # s with caron (many)
                   [], # s with acute (lower sorbian, polish)
                   [], # s with circumflex (esperanto)
                   [], # s with cedilla (romanian, turkish)
['T',  ['t','T']],
['Th', ['th','Th','TH']],
                   [], # t with caron (slovak/large)
                   [], # t with cedilla (romanian)
['U',  ['u','U']],
                   [], # u with breve (esperanto)
                   [], # u with diaeresis (hungarian, turkish)
['V',  ['v','V']],
                   [], # w (many)
['X',  ['x','X']],
['Xh', ['xh','Xh','XH']],
['Y',  ['y','Y']],
['Z',  ['z','Z']],
['Zh', ['zh','Zh','ZH']],
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
