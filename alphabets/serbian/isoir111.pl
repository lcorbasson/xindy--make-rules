#!/usr/bin/perl

$language = "Serbian";
$prefix = "sr";
$script = "cyrillic";

$alphabet = [
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
                   [], # ghe with upturn (ukrainian)
['�',  ['�','�']],
['�',  ['�','�']],
                   [], # gje (macedonian)
['�',  ['�','�']],
                   [], # ukrainian ie
['�',  ['�','�']],
['�',  ['�','�']],
                   [], # dze (macedonian)
['�',  ['�','�']],
                   [], # belarusian-ukrainian i
                   [], # yi (ukrainian)
                   [], # short i (many)
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
                   [], # kje (macedonian)
['�',  ['�','�']],
                   [], # short u (belarusian)
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
                   [], # shcha (many)
                   [], # hard sign (bulgarian, russian)
                   [], # yeru (belarusian, russian)
                   [], # soft sign (many)
                   [], # e (belarusian, russian)
                   [], # yu (many)
                   [], # ya (many)
                   []  # soft sign (ukrainian)
];

$sortcase = 'Aa';
#$sortcase = 'aA';

$ligatures = [
];

@special = ('?', '!', '.', 'letters', '-', '\'');

do 'make-rules.pl';
