#!/bin/sh
# Φτιάχνει το docs/ (αυτό που σερβίρει το GitHub Pages) από το pandoras-box.html και τα memes/
cd "$(dirname "$0")" || exit 1
mkdir -p docs/memes
{
  printf '%s\n' '<!doctype html>' '<html lang="el">' '<head>' '<meta charset="utf-8">' \
    '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">' \
    '<meta name="theme-color" content="#100d24">'
  cat pandoras-box.html
} > docs/index.html
cp memes/*.jpg docs/memes/
echo "docs/ ok: index.html + $(ls docs/memes | wc -l) memes"
