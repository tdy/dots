#!/usr/bin/env bash

bg=${1:colour256}
used=$(df -h | awk '$9=="/" { sub(/%/,"",$5); printf "%.f", $5*9/100 }')

case $used in
  0) block=" " ;;
  1) block="▁" ;; # u+2581
  2) block="▂" ;; # u+2582
  3) block="▃" ;; # u+2583
  4) block="▄" ;; # u+2584
  5) block="▅" ;; # u+2585
  6) block="▆" ;; # u+2586
  7) block="▇" ;; # u+2587
  8) block="▉" ;; # u+2588
  9) block="#[bg=$bg] " ;;
  *) block="?"
esac

echo -n "$block" # u+25f3

# vim:ts=2 sw=2 et
