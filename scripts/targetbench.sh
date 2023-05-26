#!/bin/sh

TARGETUSER=root
TARGETHOST=192.168.0.22
TARGETDIR=/root/bench
SRCBIN=.libs/sample

ssh $TARGETUSER@$TARGETHOST mkdir -p $TARGETDIR
scp $SRCBIN $TARGETUSER@$TARGETHOST:$TARGETDIR/sample

export LD_LIBRARY_PATH=/root/egt/lib/

ssh $TARGETUSER@$TARGETHOST \
    "sh --login -c \"cd $TARGETDIR && LD_LIBRARY_PATH=/root/egt/lib/ ./sample\""
