#!/bin/sh -e

# $2 = version

TAR=../plexus-interactivity-api_$2.orig.tar.gz
DIR=plexus-interactivity-api-$2
TAG=plexus-interactivity-$2

svn export http://svn.codehaus.org/plexus/plexus-components/tags/$TAG/plexus-interactivity-api/ $DIR
tar -c -z -f $TAR $DIR
rm -rf $DIR ../$TAG
