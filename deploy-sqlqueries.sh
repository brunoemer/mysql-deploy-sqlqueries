#!/bin/bash

# Author: Bruno Emer

FILE="version"
SQL_DIR="_sql"

VERSION=""
if [ -f $FILE ]; then
	VERSION=$(cat $FILE)
fi

for f in $(ls $SQL_DIR/*.sql); do
	version_new=$(echo "$f" |cut -d"/" -f2 |cut -d"." -f1)
	if [ "$version_new" -gt "$VERSION" ]; then
		echo "$f"

	fi
done


echo $version_new > $FILE
