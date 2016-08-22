#!/usr/bin/env bash

smcinfo 2>&1 | awk '
  /CPU/ { CPU = $7 }
  /Battery/ { BATTERY = $8 }
  END { printf "▪%.f,%.f", CPU, BATTERY }' # u+25aa

# vim:ts=2 sw=2 et
