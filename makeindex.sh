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
VAR=""
DP="-tex"
STYLE="styles/makeindex.xdy"

while getopts "m:v:d:tnl" OPT
do
  case "$OPT" in
    "m")
      LOC="$OPTARG"
      ;;
    "v")
      VAR="-$OPTARG"
      ;;
    "d")
      DP="-$OPTARG"
      ;;
    "t")
      DP="-tex"
      ;;
    "n")
      DP="-nroff"
      ;;
    "l")
      DP="-lout"
      ;;
    "s")
      STYLE="$OPTARG.xdy"
      ;;
  esac
done

shift $[$#-1]
DATA=$1

tex2xindy <$DATA.idx >$DATA.raw

ROOTFILE="lang/$LOC/root$DP$VAR.xdy"

# Create file containing both locale and style req's: 
echo "(require \"$ROOTFILE\")" >$DATA.xdy
echo "(require \"$STYLE\")" >>$DATA.xdy

xindy $DATA.xdy $DATA.raw

