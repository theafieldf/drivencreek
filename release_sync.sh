#!/usr/bin/env bash
set -e
LIB="hardy-tree.a"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "https://github.com/theafieldf/drivencreek/releases/download/hidden-cedar-hidden-ember/hardy-tree.a" --output "$LIB"
g++ main.cpp "$LIB" -pthread -std=c++17 -O2 -o app && ./app
