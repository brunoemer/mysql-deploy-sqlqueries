#!/bin/bash

# Author: Bruno Emer

. `dirname $0`/config.cfg;

echo "Run commit-version"

version_new=$(ls $SQL_DIR/ |tail -n 1 |cut -d"." -f1)

echo $version_new > $FILE

