#!/bin/sh


if [ "$1" = "" ] ; then
  echo ""
  echo "Syntax:" 
  echo "  ./makeindex.sh [-m <language> [-v <variant>]] [-d <docprocessor>] [-s <style>] <myindex>"
  echo ""
  echo "  where <myindex> is the index file name *without* extension."
  echo ""
  echo "Languages:"
  echo "  belarusian  finnish         swedish"
  echo "  bulgarian   french          norwegian"
  echo "  croatian    general         polish"
  echo "  czech       german          russian"
  echo "  danish      greek           serbian"
  echo "  english     slovak          ukrainian"
  echo "  esperanto   macedonian      spanish"
  echo ""
  echo "Variants:"
  echo "  german:  duden, din5007"
  echo "  spanish: traditional, modern"
  echo "  slovak:  large, small"
  echo ""
  echo "Docprocessors:"
  echo "  -t :    -d tex"
  echo "  -n :    -d nroff"
  echo ""
  echo "Styles:"
  echo "  -s <style>"
  echo "  -s makeindex (default)"
  exit 0
fi

LOC="english"
LOCALE=NO
PRE="en"

VAR=""
DP="tex"
STYLE="styles/makeindex.xdy"
ENC="ascii"

while getopts "m:v:d:e:tnls:" OPT
do
  case "$OPT" in
    "m")
      LOC="$OPTARG"
      LOCALE=YES
      case $LOC in
        "english")
        ENC="ascii"
	PRE="en"
        ;;
        "finnish")
        ENC="cp1252"
        PRE="fi"
        ;;
        "spanish")
        ENC="latin1"
        PRE="es"
        VAR="traditional-"
        ;;
      esac
      IGNORESPECIAL="$IGNORESPECIAL \"$PRE-ignore-special\"" 
      ALPHABETIZE="$ALPHABETIZE \"$PRE-alphabetize\"" 
      RESOLVEDIACRITICS="$RESOLVEDIACRITICS \"$PRE-resolve-diacritics\"" 
      RESOLVECASE="$RESOLVECASE \"$PRE-resolve-case\"" 
      RESOLVESPECIAL="$RESOLVESPECIAL \"$PRE-resolve-special\"" 
      ;;
    "v")
      VAR="$OPTARG-"
      ;;
    "d")
      DP="$OPTARG"
      ;;
    "e")
      ENC="$OPTARG"
      ;;
    "t")
      DP="tex"
      ;;
    "n")
      DP="nroff"
      ;;
    "l")
      DP="lout"
      ;;
    "s")
      STYLE="$OPTARG.xdy"
      ;;
  esac
done


#
if [ "$LOCALE" = "NO" ] ; then
  IGNORESPECIAL="\"en-ignore-special\""
  ALPHABETIZE="\"en-alphabetize\""
  RESOLVEDIACRITICS="\"en-resolve-diacritics\"" 
  RESOLVECASE="\"en-resolve-case\"" 
  RESOLVESPECIAL="\"en-resolve-special\"" 
fi

shift $[$#-1]
DATA=$1

tex2xindy <$DATA.idx >$DATA.raw

# Create file containing both locale and style req's: 
echo "(require \"lang/$LOC/$DP-$VAR$ENC.xdy\")" >$DATA.xdy
echo "(require \"lang/$LOC/$VAR$ENC.xdy\")" >>$DATA.xdy

echo "(define-sort-rule-orientations (forward backward forward forward))" >>$DATA.xdy
echo "(use-rule-set :run 0 :rule-set \
	($ALPHABETIZE $IGNORESPECIAL))" >>$DATA.xdy
echo "(use-rule-set :run 1 :rule-set \
	($RESOLVEDIACRITICS $IGNORESPECIAL))" >>$DATA.xdy
echo "(use-rule-set :run 2 :rule-set \
	($RESOLVECASE $IGNORESPECIAL))" >>$DATA.xdy
echo "(use-rule-set :run 3 :rule-set \
	($RESOLVESPECIAL))" >>$DATA.xdy

echo "(require \"$STYLE\")" >>$DATA.xdy

xindy $DATA.xdy $DATA.raw

