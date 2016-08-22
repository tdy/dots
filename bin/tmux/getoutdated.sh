#!/usr/bin/env bash

CACHE="/Volumes/RAM Disk/outdated"
[[ -f $CACHE ]] && outdated=$(awk 'END{print NR}' "$CACHE") || outdated=""

case $outdated in
  "") result="ⓟ " ;; # u+24df
   0) result=""   ;;
   1) result="① " ;; # u+2460
   2) result="② " ;; # u+2461
   3) result="③ " ;; # u+2462
   4) result="④ " ;; # u+2463
   5) result="⑤ " ;; # u+2464
   6) result="⑥ " ;; # u+2465
   7) result="⑦ " ;; # u+2466
   8) result="⑧ " ;; # u+2467
   9) result="⑨ " ;; # u+2468
  10) result="⑩ " ;; # u+2469
  11) result="⑪ " ;; # u+246a
  12) result="⑫ " ;; # u+246b
  13) result="⑬ " ;; # u+246c
  14) result="⑭ " ;; # u+246d
  15) result="⑮ " ;; # u+246e
  16) result="⑯ " ;; # u+246f
  17) result="⑰ " ;; # u+2470
  18) result="⑱ " ;; # u+2471
  19) result="⑲ " ;; # u+2472
   *) result="⑳ "    # u+2473
esac

echo -n "$result"

# vim:ts=2 sw=2 et
