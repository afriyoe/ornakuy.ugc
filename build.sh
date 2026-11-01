#!/bin/bash
set -e
mkdir -p build

echo "Building ORNA KUY dashboard..."
python3 -I patches/patch.py source/index.html build/new.html
for i in $(seq 2 22); do
  prev=$((i-1))
  src="build/new${prev}.html"
  [ "$prev" -eq 1 ] && src="build/new.html"
  python3 -I "patches/patch${i}.py" "$src" "build/new${i}.html"
done

cp build/new22.html index.html
echo "Done → index.html"
