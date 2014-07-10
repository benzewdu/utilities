#!/bin/sh

# determine the location of this script
scriptDir="`dirname $0`"
scriptDir="`(cd ${scriptDir} && pwd)`"

# Use scriptDir to get at script files
RW_UTIL=${ALT_RW_HOME:-$scriptDir/../..}
export RW_UTIL

. ${RW_UTIL}/platform >/dev/null

if [ $# -gt 1 ]; then
    echo "usage: procstats.sh [ interval ]"
    exit 1
fi

if [ -f "${RW_UTIL}/${OS}/bin/procstats.sh" ]; then
    exec ${RW_UTIL}/${OS}/bin/procstats.sh $*
else
    exec mpstat $*
fi
