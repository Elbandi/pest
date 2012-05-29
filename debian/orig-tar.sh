#!/bin/sh -e

# called by uscan with '--upstream-version' <version> <file>

DIR=pest-$2

git clone http://github.com/educoder/pest.git $DIR
(cd $DIR && git checkout $2)

tar cfz pest_$2.orig.tar.gz --exclude .git $DIR

rm -rf $DIR ../$2
