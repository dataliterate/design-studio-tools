#!/usr/bin/env bash
set -o nounset
set -o errexit

cd "`dirname "$0"`"

echo "Export all artboards";

create_tmp_dir() {
	echo "\tCreate tmp directory";
	mkdir tmp
}

export_layers() {
	for f in *.sketch;
		do echo "\t$f .. export layers";
		sketchtool export layers --output=./tmp $f
	done
}

move_exported_files_to_directories() {
	cd tmp
	for f in *.png;
		do echo "\t$f is moved to";
		dest=$(echo "$f" | sed 's/-/\//g')
		mkdir -p $(dirname "../$dest")
		echo "\t-> ../$dest";
		mv $f "../$dest" 
	done
	cd ..
}

cleanup() {
	echo "\tCleanup tmp directory";
	rmdir tmp
}

create_tmp_dir
export_layers
move_exported_files_to_directories
cleanup

echo "Done!";