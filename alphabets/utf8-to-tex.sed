# $Id$
# translate UTF-8 to something that TeX understands
# for russian transliteration:
s/č/\\v c/g;
s/Č/\\v C/g;
s/ė/\\.e/g;
s/Ė/\\.E/g;
s/è/\\`e/g;
s/È/\\`E/g;
s/ë/\\"e/g;
s/Ë/\\"E/g;
s/ï/\\"i/g;
s/Ï/\\"I/g;
s/š/\\v s/g;
s/Š/\\v S/g;
s/ž/\\v z/g;
s/Ž/\\v Z/g;
s/″/$\\\'\\\'$/g;
s/′/$\\\'$/g;
s/ŝ/\\^s/g;
s/Ŝ/\\^S/g;
s/û/\\^u/g;
s/Û/\\^U/g;
s/â/\\^a/g;
s/Â/\\^A/g;
# greek:
s/ē/\\=e/g;
s/Ē/\\=E/g;
s/ō/\\=o/g;
s/Ō/\\=O/g;
# turkish:
s/ç/\\c c/g;
s/Ç/\\c C/g;
s/ğ/\\u g/g;
s/Ğ/\\u G/g;
s/ı/\\i/g;
s/İ/\\.I/g;
s/ö/\\"o/g;
s/Ö/\\"O/g;
s/ş/\\c s/g;
s/Ş/\\c S/g;
s/ü/\\"u/g;
s/Ü/\\"U/g;
# esperanto:
s/ĉ/\\^c/g;
s/Ĉ/\\^C/g;
s/ĝ/\\^g/g;
s/Ĝ/\\^G/g;
s/ĥ/\\^h/g;
s/Ĥ/\\^H/g;
s/ĵ/\\^\\j/g;
s/Ĵ/\\^J/g;
s/ŭ/\\u u/g;
s/Ŭ/\\u U/g;
# german:
s/ä/\\"a/g;
s/Ä/\\"A/g;
s/ß/\\ss{}/g;
# romanian:
s/ș/\\ooalign{s\\crcr\\hidewidth\\raise-.3ex\\hbox{\\scriptsize,}\\hidewidth}/g;
s/Ș/\\ooalign{S\\crcr\\hidewidth\\raise-.3ex\\hbox{\\scriptsize,}\\hidewidth}/g;
s/ț/\\ooalign{t\\crcr\\hidewidth\\raise-.25ex\\hbox{\\scriptsize,}\\hidewidth}/g;
s/Ț/\\ooalign{T\\crcr\\hidewidth\\raise-.25ex\\hbox{\\scriptsize,}\\hidewidth}/g;
s/ă/\\u a/g;
s/Ă/\\u A/g;
s/î/\\^\\i/g;
s/Î/\\^I/g;
