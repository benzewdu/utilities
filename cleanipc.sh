#!/bin/sh

# determine the location of this script
scriptDir="`dirname $0`"
scriptDir="`(cd ${scriptDir} && pwd)`"

# Use scriptDir to get at script files
RW_UTIL=${ALT_RW_HOME:-$scriptDir/../..}
export RW_UTIL

. ${RW_UTIL}/platform >/dev/null

exec ${RW_UTIL}/${OS}/bin/cleanipc.sh $*
