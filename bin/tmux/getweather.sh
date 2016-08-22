#!/usr/bin/env bash

CACHE="/Volumes/RAM Disk/weather"

# https://apidev.accuweather.com/developers/weatherIcons
_geticon() {
  local result
  case $1 in
    01|02|03|04)
      result="☼" ;; # u+263c
    05|06|07|08|11)
      result="☁" ;; # u+2601
    12|13|14)
      result="☂" ;; # u+2602
    15|16|17|18)
      result="↯" ;; # u+21af
    19|20|21|22|23)
      result="❄" ;; # u+2744
    24|25|26|29)
      result="☄" ;; # u+2604
    30)
      result="♨" ;; # u+2668
    31)
      result="☃" ;; # u+2603
    32)
      result="♒" ;; # u+2652
    33|34)
      result="❍" ;; # u+274d
    35|36)
      result="☽" ;; # u+263d
    37|38)
      result="☁" ;; # u+2601
    39|40)
      result="☂" ;; # u+2602
    41|42)
      result="↯" ;; # u+21af
    43|44)
      result="❄" ;; # u+2744
    *)
      result="°"    # u+00b0
  esac
  echo -n "$result"
}

# main
if [[ -f $CACHE ]]; then
  _IFS=$IFS
  IFS=$'\n'
  new=( $(<"$CACHE") )
  IFS=$_IFS
  cond=${new[0]}
  temp=${new[1]}
  feel=${new[2]}
else
  cond=""
  temp=?
  feel=?
fi

printf "%s%s,%s" $(_geticon $cond) $temp $feel

# vim:ts=2 sw=2 et
