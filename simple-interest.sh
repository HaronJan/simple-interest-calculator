#!/bin/bash

# Einfacher Zinsrechner

# Nutzung: ./simple-interest.sh kapital zinssatz laufzeit

if [ $# -ne 3 ]; then
  echo "Verwendung: $0 kapital zinssatz laufzeit"
  exit 1
fi

K=$1
Z=$2
L=$3

Zins=$(echo "scale=2; ($K * $Z * $L) / 100" | bc)

echo "Der einfache Zins beträgt: $Zins"
