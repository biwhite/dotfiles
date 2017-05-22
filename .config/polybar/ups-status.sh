#!/bin/sh
CHARGE=`apcaccess -p BCHARGE | sed -e 's/\..*//'`
LOAD=`apcaccess -p LOADPCT | sed -e 's/\..*//'`
TIMELEFT=`apcaccess -p TIMELEFT | sed -e 's/\..*//'`
OUT=""

if [ $LOAD -lt 25 ]; then
        LOADICON=""
elif [ $LOAD -lt 50 ]; then
        LOADICON=""
elif [ $LOAD -lt 75 ]; then
        LOADICON=""
elif [ $LOAD -lt 100 ]; then
        LOADICON=""
elif [ $LOAD -eq 100 ]; then
        LOADICON=""
fi
if [ $CHARGE -lt 25 ]; then
        CHARGEICON=""
elif [ $CHARGE -lt 50 ]; then
        CHARGEICON=""
elif [ $CHARGE -lt 75 ]; then
        CHARGEICON=""
elif [ $CHARGE -lt 100 ]; then
        CHARGEICON=""
elif [ $CHARGE -eq 100 ]; then
        CHARGEICON=""
fi

TIMETXT=" $TIMELEFT"
echo "$LOADICON  / $CHARGEICON  ($TIMETXT)"

