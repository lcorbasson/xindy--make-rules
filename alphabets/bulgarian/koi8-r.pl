#!/usr/bin/perl

$language = "Bulgarian";
$prefix = "bg";
$script = "cyrillic";

$alphabet = [
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
                   [], # ghe with upturn (ukrainian)
['�',  ['�','�']],
                   [], # dje (serbian)
                   [], # gje (macedonian)
['�',  ['�','�']],
                   [], # ukrainian ie
['�',  ['�','�']],
['�',  ['�','�']],
                   [], # dze (macedonian)
['�',  ['�','�']],
                   [], # belarusian-ukrainian i
                   [], # yi (ukrainian)
['�',  ['�','�']],
                   [], # je (macedonian, serbian)
['�',  ['�','�']],
['�',  ['�','�']],
                   [], # lje (macedonian, serbian)
['�',  ['�','�']],
['�',  ['�','�']],
                   [], # nje (macedonian, serbian)
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
                   [], # tshe (serbian)
                   [], # kje (macedonian)
['�',  ['�','�']],
                   [], # short u (belarusian)
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
                   [], # dzhe (macedonian, serbian)
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
                   [], # yeru (belarusian, russian)
['�',  ['�','�']],
                   [], # e (belarusian, russian)
['�',  ['�','�']],
['�',  ['�','�']],
                   []  # soft sign (ukrainian)
];

$sortcase = 'Aa';
#$sortcase = 'aA';

$ligatures = [
];

@special = ('?', '!', '.', 'letters', '-', '\'');

do 'make-rules.pl';
