#!/usr/bin/perl

$language = "Template";
$prefix = "??";
$script = "latin";

# preferred order of diacritics of not specified otherwise:
# go from little to big, from non-touching to touching

# caron acute grave dot-above breve circumflex tilde
# ring-above diaeresis comma-below cedilla ogonek stroke

$alphabet = [
                   [], # a (many)
                   [], # a with breve (romanian)
                   [], # a with circumflex (romanian)
                   [], # a with ogonek (polish)
                   [], # b (many)
                   [], # c (many)
                   [], # ch (spanish/traditional)
                   [], # cs (hungarian)
                   [], # c with caron (many)
                   [], # c with acute (croatian, lower sorbian, polish)
                   [], # c with circumflex (esperanto)
                   [], # c with cedilla (albanian, kurdish, turkish)
                   [], # d (many)
                   [], # dh (albanian)
                   [], # d+z with caron (croatian)
                   [], # d+z with acute (upper sorbian)
                   [], # d with caron (slovak/large)
                   [], # d with stroke (croatian)
                   [], # eth (icelandic)
                   [], # e (many)
                   [], # e with caron (lower/upper sorbian)
                   [], # e with circumflex (kurdish)
                   [], # e with diaeresis (albanian)
                   [], # e with ogonek (polish)
                   [], # f (many)
                   [], # g (many)
                   [], # gj (albanian)
                   [], # g with circumflex (esperanto)
                   [], # g with breve (turkish)
                   [], # h (many)
                   [], # h with circumflex (esperanto)
                   [], # ch (many)
                   [], # dotless i (turkish)
                   [], # i (many)
                   [], # i with circumflex (kurdish, romanian)
                   [], # j (many)
                   [], # j with circumflex (esperanto)
                   [], # k (many)
                   [], # l with stroke (lower/upper sorbian)
                   [], # l (many)
                   [], # lj (croatian)
                   [], # ll (albanian, spanish/traditional)
                   [], # l with stroke (polish)
                   [], # l with caron (slovak/large)
                   [], # m (many)
                   [], # n (many)
                   [], # nj (albanian, croatian)
                   [], # ny (hungarian)
                   [], # n with caron (slovak/large)
                   [], # n with acute (lower/upper sorbian, polish)
                   [], # n with tilde (spanish/modern, spanish/traditional)
                   [], # o (many)
                   [], # o with acute (polish, upper sorbian)
                   [], # o with diaeresis (hungarian, turkish)
                   [], # p (many)
                   [], # q (many)
                   [], # r (many)
                   [], # rr (albanian)
                   [], # r with caron (czech, slovak/large, upper sorbian)
                   [], # r with acute (lower sorbian)
                   [], # s (many)
                   [], # sh (albanian)
                   [], # sz (hungarian)
                   [], # s with caron (many)
                   [], # s with acute (lower sorbian, polish)
                   [], # s with circumflex (esperanto)
                   [], # s with comma below (romanian)
                   [], # s with cedilla (kurdish, turkish)
                   [], # t (many)
                   [], # th (albanian)
                   [], # t with caron (slovak/large)
                   [], # t with comma below (romanian)
                   [], # c with acute (upper sorbian)
                   [], # u (many)
                   [], # u with breve (esperanto)
                   [], # u with circumflex (kurdish)
                   [], # u with diaeresis (hungarian, turkish)
                   [], # v (many)
                   [], # w (many)
                   [], # x (many)
                   [], # xh (albanian)
                   [], # y (many)
                   [], # z (many)
                   [], # zh (albanian)
                   [], # zs (hungarian)
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
