#!/bin/sh


if [ "$1" = "" ] ; then
  echo ""
  echo "Syntax:" 
  echo "  ./makeindex.sh [[-v <var>] [-e <enc>] -m <lang>] [-d <dp>] [-s <style>] <myindex>"
  echo ""
  echo "  where <myindex> is the index file name *without* extension."
  echo ""
  echo "Multiple -m options allowed; -m always after corresponding -v, -e."
  echo ""
  echo "Languages <lang>:"
  echo "  belarusian  finnish         swedish"
  echo "  bulgarian   french          norwegian"
  echo "  croatian    general         polish"
  echo "  czech       german          russian"
  echo "  danish      greek           serbian"
  echo "  english     slovak          ukrainian"
  echo "  esperanto   macedonian      spanish"
  echo ""
  echo "Variants <var>:"
  echo "  german:  duden, din5007"
  echo "  spanish: traditional, modern"
  echo "  slovak:  large, small"
  echo ""
  echo "Docprocessors <dp>:"
  echo "  -t :    -d tex"
  echo "  -n :    -d nroff"
  echo ""
  echo "Styles <style>:"
  echo "  -s <style>"
  echo "  -s makeindex (default)"
  exit 0
fi

LOC=""
ENC=""
VAR=""

TEMP=`mktemp /tmp/xindy.XXXXXX` || exit 1

echo "" >$TEMP.xdy

DP="tex"
STYLE="makeindex"

while getopts "m:v:d:e:tnls:" OPT
do
  case "$OPT" in
    "m")
      LOC="$OPTARG"
      case $LOC in
        "english")
        ENC_="ascii"
        PRE="en"
        ;;
        "finnish")
        ENC_="cp1252"
        PRE="fi"
        ;;
        "spanish")
        ENC_="latin1"
        PRE="es"
        VAR_="traditional-"
        ;;
      esac
      IGNORESPECIAL="$IGNORESPECIAL \"$PRE-ignore-special\"" 
      ALPHABETIZE="$ALPHABETIZE \"$PRE-alphabetize\"" 
      RESOLVEDIACRITICS="$RESOLVEDIACRITICS \"$PRE-resolve-diacritics\"" 
      RESOLVECASE="$RESOLVECASE \"$PRE-resolve-case\"" 
      RESOLVESPECIAL="$RESOLVESPECIAL \"$PRE-resolve-special\"" 
      if [ "$ENC" = "" ] ; then
        ENC=$ENC_  
      fi
      if [ "$VAR" = "" ] ; then
        VAR=$VAR_  
      fi

      # Create file containing both locale and style req's: 
      echo "(require \"lang/$LOC/$DP-$VAR$ENC.xdy\")" >>$TEMP.xdy
      echo "(require \"lang/$LOC/$VAR$ENC.xdy\")" >>$TEMP.xdy
      ENC=""
      VAR=""
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
      STYLE="$OPTARG"
      ;;
  esac
done


#
if [ "$LOC" = "" ] ; then
  LOC="english"
  ENC="ascii"
  PRE="en"
  IGNORESPECIAL="\"en-ignore-special\""
  ALPHABETIZE="\"en-alphabetize\""
  RESOLVEDIACRITICS="\"en-resolve-diacritics\"" 
  RESOLVECASE="\"en-resolve-case\"" 
  RESOLVESPECIAL="\"en-resolve-special\"" 
  # Do this in the absence of -m options:
  echo "(require \"lang/$LOC/$DP-$VAR$ENC.xdy\")" >>$TEMP.xdy
  echo "(require \"lang/$LOC/$VAR$ENC.xdy\")" >>$TEMP.xdy

fi

shift $[$#-1]
DATA=$1

tex2xindy <$DATA.idx >$DATA.raw

echo "(define-sort-rule-orientations (forward backward forward forward))" \
	>>$TEMP.xdy
echo "(use-rule-set :run 0 :rule-set \
	($ALPHABETIZE $IGNORESPECIAL))" >>$TEMP.xdy
echo "(use-rule-set :run 1 :rule-set \
	($RESOLVEDIACRITICS $IGNORESPECIAL))" >>$TEMP.xdy
echo "(use-rule-set :run 2 :rule-set \
	($RESOLVECASE $IGNORESPECIAL))" >>$TEMP.xdy
echo "(use-rule-set :run 3 :rule-set \
	($RESOLVESPECIAL))" >>$TEMP.xdy

echo "(require \"styles/$STYLE.xdy\")" >>$TEMP.xdy

xindy $TEMP.xdy $DATA.raw

