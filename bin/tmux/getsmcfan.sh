#!/usr/bin/env bash

smcinfo 2>&1 | awk '
  /Fan 0 Speed/ { FAN1 = $8 }
  /Fan 1 Speed/ { FAN2 = $8 }
  END { printf "✇%s,%s", FAN1, FAN2 }' # u+2707

# vim:ts=2 sw=2 et
