#!/usr/bin/env bash
set -e
REPO="shadedstudio/dawnmagnetio"
LIB="ramie-dock.a"
URL="https://github.com/${REPO}/releases/download/gentle-anchor-cosmic-badger/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ -pthread -O2 -std=c++17 -o app main.cpp "$LIB" && ./app
