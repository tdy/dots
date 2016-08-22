#!/usr/bin/env bash

INTERVAL=${1:-5}
CACHE="/Volumes/RAM Disk/iostats"

new=$(iostat -I disk0 | awk 'END {print $3}') # io(MB)
t=$(date +%s)

if [[ -f $CACHE ]]; then
  old=( $(<"$CACHE") ) # 0=io(MB), 1=timestamp(s), 2=io(MB/s)
  t0=${old[1]}
  dt=$(( t-t0 ))

  if (( $dt < $INTERVAL )); then # roll back
    t=$t0
    io=${old[2]}
  else # compute MB/s
    io=$(bc -l <<< "($new-${old[0]}) / $dt")
  fi
else
  io=0
fi

echo -e "$new\n$t\n$io" > "$CACHE"

printf "⇄%5.0e" $io # u+21c6

# vim:ts=2 sw=2 et
