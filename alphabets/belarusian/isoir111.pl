#!/usr/bin/perl

$language = "Belarusian";
$prefix = "be";
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
['�',  ['�','�'],['�','�']],
                   [], # ukrainian ie
['�',  ['�','�']],
['�',  ['�','�']],
                   [], # dze (macedonian)
                   [], # i (many)
['�',  ['�','�']],
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
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
                   [], # dzhe (macedonian, serbian)
['�',  ['�','�']],
                   [], # shcha (many)
                   [], # hard sign (bulgarian, russian)
['�',  ['�','�']],
['�',  ['�','�']],
['�',  ['�','�']],
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
