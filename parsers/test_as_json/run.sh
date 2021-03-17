#!/usr/bin/bash

wasm=`dirname "$0"`/index.wasm
json_folder="$1"
json_file=`basename "$2"`

wasmtime "$wasm" --dir "$json_folder" "$json_file"
code=$?

case $code in
0)
  exit 0
  ;;
*)
  exit 1
  ;;
esac