#!/bin/bash

# Author: Bruno Emer
# TODO: adicionar parametros para vars

DBNAME="lojas872_db"
FILE="mysql-deploy-version"
SQL_DIR="_sql"

VERSION="0"
if [ -f $FILE ]; then
	VERSION=$(cat $FILE)
fi

for f in $(ls $SQL_DIR/*.sql); do
	v=$(echo "$f" |cut -d"/" -f2 |cut -d"." -f1)
	if [ "$v" -gt "$VERSION" ]; then
		echo "Executando $f"
		mysql $DBNAME < $f
		if [ $? -eq 0 ]; then
			echo "OK $?"
		else
			echo "Erro $? ao executar $f"
			break;
		fi
	fi
	version_new=$v
done

echo $version_new > $FILE
