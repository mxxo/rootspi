#!/bin/sh
#
# Get the ROOT source specified by the gittag passed as $1.

prog=`basename $0`
if [ $# -ne 1 ]; then
   echo "$prog: no git tag specified"
   exit 1
fi

gittag=$1

mkdir -p src
cd src

if [ -d $gittag ]; then
   cd $gittag
   git pull
else
   git clone --no-hardlinks -b $gittag /user/git/root.git $gittag
   cd $gittag
fi

if [ -x configure ]; then
   # update config script
   cp ../../ALLCONFIG.sh .
   ./ALLCONFIG.sh
   make -j 4
   exit $?
else
   echo "$prog: ./configure not found, checkout of $gittag failed"
   exit 1
fi

exit 0