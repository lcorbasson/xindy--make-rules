#!/usr/bin/perl

$language = "Belarusian";
$prefix = "be";
$script = "cyrillic";

$alphabet = [
['á',  ['Á','á']],
['â',  ['Â','â']],
['÷',  ['×','÷']],
['ç',  ['Ç','ç']],
                   [], # ghe with upturn (ukrainian)
['ä',  ['Ä','ä']],
                   [], # dje (serbian)
                   [], # gje (macedonian)
['å',  ['Å','å'],['£','³']],
                   [], # ukrainian ie
['ö',  ['Ö','ö']],
['ú',  ['Ú','ú']],
                   [], # dze (macedonian)
                   [], # i (many)
['¶',  ['¦','¶']],
                   [], # yi (ukrainian)
['ê',  ['Ê','ê']],
                   [], # je (macedonian, serbian)
['ë',  ['Ë','ë']],
['ì',  ['Ì','ì']],
                   [], # lje (macedonian, serbian)
['í',  ['Í','í']],
['î',  ['Î','î']],
                   [], # nje (macedonian, serbian)
['ï',  ['Ï','ï']],
['ð',  ['Ð','ð']],
['ò',  ['Ò','ò']],
['ó',  ['Ó','ó']],
['ô',  ['Ô','ô']],
                   [], # tshe (serbian)
                   [], # kje (macedonian)
['õ',  ['Õ','õ']],
['¾',  ['®','¾']],
['æ',  ['Æ','æ']],
['è',  ['È','è']],
['ã',  ['Ã','ã']],
['þ',  ['Þ','þ']],
                   [], # dzhe (macedonian, serbian)
['û',  ['Û','û']],
                   [], # shcha (many)
                   [], # hard sign (bulgarian, russian)
['ù',  ['Ù','ù']],
['ø',  ['Ø','ø']],
['ü',  ['Ü','ü']],
['à',  ['À','à']],
['ñ',  ['Ñ','ñ']],
                   []  # soft sign (ukrainian)
];

$sortcase = 'Aa';
#$sortcase = 'aA';

$ligatures = [
];

@special = ('?', '!', '.', 'letters', '-', '\'');

do 'make-rules.pl';
