# $Id$
# translate some UTF-8 codes omega still doesn't understand
s/ș/\\ooalign{s\\crcr\\hidewidth\\hbox{̦}\\hidewidth}/g;
s/Ș/\\ooalign{S\\crcr\\hidewidth\\hbox{̦}\\hidewidth}/g;
s/ț/\\ooalign{t\\crcr\\hidewidth\\hbox{̦}\\hidewidth}/g;
s/Ț/\\ooalign{T\\crcr\\hidewidth\\hbox{̦}\\hidewidth}/g;
s/ǳ/d\\kern-0.02em z/g;
s/ǲ/D\\kern-0.02em z/g;
s/Ǳ/D\\kern-0.03em Z/g;
s/ǆ/d\\kern-0.02em ž/g;
s/ǅ/D\\kern-0.02em ž/g;
s/Ǆ/D\\kern-0.03em Ž/g;
s/ǉ/l\\kern-0.04em j/g;
s/ǈ/L\\kern-0.04em j/g;
s/Ǉ/L\\kern-0.02em J/g;
s/ǌ/n\\kern-0.04em j/g;
s/ǋ/N\\kern-0.04em j/g;
s/Ǌ/N\\kern-0.03em J/g;
