#!/bin/bash


#CVSUSER=:pserver:anonymous
CVSUSER=rdieter
MODULE=$(basename $0 -cvs_checkout.sh)
DATE=$(date +%Y%m%d)

set -x

rm -rf $MODULE

cvs -z3 -d$CVSUSER@cvs.freedesktop.org:/cvs/portland checkout -P portland/$MODULE 
pushd portland
tar czf ../$MODULE-${DATE}cvs.tgz $MODULE
popd

rm -rf portland 
