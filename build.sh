#!/bin/sh
# Φτιάχνει το docs/index.html (αυτό που σερβίρει το GitHub Pages) από το pandoras-box.html
cd "$(dirname "$0")" || exit 1
mkdir -p docs
{
  printf '%s\n' '<!doctype html>' '<html lang="el">' '<head>' '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">' \
    '<meta name="theme-color" content="#170f10">'
  cat pandoras-box.html
} > docs/index.html
echo "docs/index.html ok"
