#!/usr/bin/env bash
set -o nounset
set -o errexit

cd "`dirname "$0"`"

echo "Export all artboards";

create_tmp_dir() {
  echo "  Create tmp directory";
  mkdir tmp
}

export_artboards() {
  for f in *.sketch;
    do echo "  $f .. export artboards";
    sketchtool export artboards --output=./tmp "$f"
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
export_artboards
move_exported_files_to_directories
cleanup

echo "Done!";