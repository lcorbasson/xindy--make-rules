# $Id$
# translate UTF-8 to something that TeX understands
s/č/\\v c/g;
s/Č/\\v C/g;
s/ė/\\.e/g;
s/Ė/\\.E/g;
s/ë/\\"e/g;
s/Ë/\\"E/g;
s/ï/\\"i/g;
s/Ï/\\"I/g;
s/đ/\\v s/g;
s/Đ/\\v S/g;
s/ū/\\v z/g;
s/Ū/\\v Z/g;
s/″/$\\\'\\\'$/g;
s/′/$\\\'$/g;
s/ŝ/\\^s/g;
s/Ŝ/\\^S/g;
s/û/\\^u/g;
s/Û/\\^U/g;
s/â/\\^a/g;
s/Â/\\^A/g;
s/ē/\\=e/g;
s/Ē/\\=E/g;
s/ō/\\=o/g;
s/Ō/\\=O/g;
