#!/usr/bin/perl

# a string describing the language (to be exact, the sorting order)
$language = "Test1";
$prefix = "xx";

# Technically speaking, $alphabet is (a reference to) an array of arrays of
# arrays. Sounds complicated? Don't worry! Explanation follows:

# Every line describes one letter of the alphabet (in all its variants).
# The first string is the name of the letter; this appears in the heading of
# letter groups (when defined with the proper markup). Currently the maximum
# number of letters is limited to 95. A future expansion up to 223 letters
# should be no problem.

# Next follows a sequence of arrays, delimited by commas. Each of these arrays
# describes one variant of the letter with different diacritical marks
# (accents). The order of those describes the sorting order if two words
# appear which differ only in the diacritical variant of this letter.
# Currently the maximum supported number of diacritical variants of one letter
# is 93.

# Each of these arrays contains first the lowercase variant of the letter,
# followed by uppercase variant(s). You might wonder: How can there be other
# than one uppercase variant? Consider the letter combination `ch': Uppercase
# variants here are: `Ch' and `CH'. Also, in some character sets there might
# not exist an uppercase variant of a letter, e.g. the letter `ÿ' in the
# ISO-8859-1 character set. In this case we just leave it out.

# The sum of the number of uppercase and lowercase variants of one diacritical
# version of a letter should be 10 or less. (In case of `ch' it is 3:
# `ch', `Ch' and `CH')

# There can be empty arrays [] which are called slots. They are used for
# mixing alphabets of different languages.

$alphabet = [
['A',    ['a','A'], ['á','Á']],
[], # slot for a with ogonek (polish)
['B',    ['b','B']],
['C',    ['c','C']],
[], # slot for c with caron (croatian, czech, slovak/large)
[], # slot for c with acute (croatian, polish)
[], # slot for c with circumflex (esperanto)
['Ch',   ['ch','Ch','CH']],
['D',    ['d','D']],
[], # slot for d+z with caron (croatian)
[], # slot for d with stroke (croatian)
[], # slot for d with caron (slovak/large)
['E',    ['e','E'], ['é','É']],
[], # slot for e with ogonek (polish)
['F',    ['f','F']],
['G',    ['g','G']],
[], # slot for g with circumflex (esperanto)
['H',    ['h','H']],
[], # slot for h with circumflex (esperanto)
[], # slot for ch (czech, slovak/small, slovak/large)
['I',    ['i','I'], ['í','Í']],
['J',    ['j','J']],
[], # slot for j with circumflex (esperanto)
['K',    ['k','K']],
['L',    ['l','L']],
[], # slot for l with stroke (polish)
[], # slot for l with caron (slovak/large)
[], # slot for lj (croatian)
['Ll',   ['ll','Ll','LL']],
['M',    ['m','M']],
['N',    ['n','N']],
['Ñ',    ['ñ','Ñ']],
[], # slot for n with acute (polish)
[], # slot for n with caron (slovak/large)
[], # slot for nj (croatian)
['O',    ['o','O'], ['ó','Ó']],
[], # slot for o with acute (polish)
['P',    ['p','P']],
['Q',    ['q','Q']],
['R',    ['r','R']],
[], # slot for r with caron (czech, slovak/large)
['S',    ['s','S']],
[], # slot for s with caron (croatian, czech, slovak/large)
[], # slot for s with acute (polish)
[], # slot for s with circumflex (esperanto)
['T',    ['t','T']],
[], # slot for t with caron (slovak/large)
['U',    ['u','U'], ['ú','Ú'], ['ü','Ü']],
[], # slot for u with breve (esperanto)
['V',    ['v','V']],
['W',    ['w','W']],
['X',    ['x','X']],
['Y',    ['y','Y']],
['Z',    ['z','Z']],
[], # slot for z with caron (croatian, czech, slovak/large)
[], # slot for z with acute (polish)
[], # slot for z with dot above (polish)
[], # slot for ligature ae (danish, norwegian)
[], # slot for o with stroke (danish, norwegian)
[], # slot for a with ring above (danish, norwegian, swedish)
[], # slot for a with diaeresis (finnish, swedish)
[]  # slot for o with diaeresis (finnish, swedish)
];

# The next should be pretty easy:
# It means: 'ß' is a ligature which is sorted like the letter sequence `ss'
# but in case two words differs only there, the word with 'ß' comes after the
# one with 'ss' (e.g. Masse, Maße.)

# The same with Ä/ä, only this time with uppercase/lowercase variants.
# The order of the lines in $ligatures does not matter.

$ligatures = [
[['ß'], 'after', [['s','s']]],
[['Ä','ä'], 'before', [['A','e'], ['a','e']]],
[['Ö','ö'], 'before', [['O','e'], ['o','e']]]
];

# `special' are those characters which are normally ignored in the sorting
# process, but e.g. to sort the words "coop" and "co-op" we must also define
# an order here.

@special = ('?', '!', '.', 'letters', '-', '\'', '\\/');

# first lower or upper case?

$sortcase = "Aa";
#$sortcase = "aA";

#@letter_group_names = ('A','B','C','Ch','D','E','F','G','H','I','J','K',
#'L','Ll','M','N','Ñ','O','P','Q','R','S','T','U','V','W','X','Y','Z');

do 'make-rules.pl';
