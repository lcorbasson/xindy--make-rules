#!/usr/bin/perl

$language = "Macedonian";
$prefix = "mk";
$script = "cyrillic";

$alphabet = [
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
                   [], # ghe with upturn (ukrainian)
['�',  ['�','�']],
                   [], # dje (serbian)
['�',  ['�','�']],
['�',  ['�','�']],
                   [], # ukrainian ie
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
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
                   [], # tshe (serbian)
['�',  ['�','�']],
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
