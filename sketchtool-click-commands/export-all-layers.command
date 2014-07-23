#!/usr/bin/env bash
set -o nounset
set -o errexit

cd "`dirname "$0"`"

echo "Export all artboards";

create_tmp_dir() {
  echo "  Create tmp directory";
  mkdir tmp
}

export_layers() {
  for f in *.sketch;
    do echo "  $f .. export layers";
    sketchtool export layers --output=./tmp "$f"
  done
}

move_exported_files_to_directories() {
  cd tmp
  for f in *.png;
    do echo "  $f is moved to";
    dest=$(echo "$f" | sed 's/-/\//g')
    destDir=$(dirname "../$dest")
    mkdir -pv "$destDir"
    echo "  -> ../$dest";
    mv "$f" "../$dest" 
  done
  cd ..
}

cleanup() {
  echo "  Cleanup tmp directory";
  rmdir tmp
}

create_tmp_dir
export_layers
move_exported_files_to_directories
cleanup

echo "Done!";