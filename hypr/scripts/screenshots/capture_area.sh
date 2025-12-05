#!/bin/bash

geometry=$(slurp)

if [ -z "$geometry" ]; then
  exit 1
fi

grim -g "$geometry" - | wl-copy --type image/png
