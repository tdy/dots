#!/usr/bin/env bash

INTERVAL=${1:-5}
CACHE="/Volumes/RAM Disk/netstats"

mapfile -t new < <(netstat -bIen0 | awk '
  NR==2 { printf "%s\n%s", $7, $10 }') # 0=dn(b), 1=up(b)
t=$(date +%s)

if [[ -f $CACHE ]]; then
  old=( $(<"$CACHE") ) # 0=dn(b), 1=up(b), 2=timestamp(s), 3=dn(K/s), 4=up(K/s)
  t0=${old[2]}
  dt=$(( t-t0 ))

  if (( $dt < $INTERVAL )); then # roll back
    t=$t0
    dn=${old[3]}
    up=${old[4]}
  else # compute K/s
    dn=$(bc -l <<< "(${new[0]}-${old[0]}) / 1024 / $dt")
    up=$(bc -l <<< "(${new[1]}-${old[1]}) / 1024 / $dt")
  fi
else
  dn=0
  up=0
fi

echo -e "${new[0]}\n${new[1]}\n$t\n$dn\n$up" > "$CACHE"

printf "⇵%5.0e,%-5.0e" $dn $up # u+21f5

# vim:ts=2 sw=2 et
