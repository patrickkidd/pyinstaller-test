#!/bin/bash

set -e # exit on first error

TARGET=$1

if [[ $TARGET = "osx" ]]; then

	rm -rf ./build ./dist

	pyinstaller --onedir --windowed --noconfirm pyinstaller-test.py
	codesign --deep -s "Developer ID Application: Patrick Stinson (8KJB799CU7)" dist/pyinstaller-test.app
	open ./dist

elif [[ $TARGET == "clean" ]]; then

	echo "CLEAN"
	rm -rf ./build ./dist

fi
