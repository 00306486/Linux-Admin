#!/usr/bin/awk

/Savage/ {print $1}
/Savage/ {print $3 $4 $5}
/Susan/ {print $3 $4 $5}
/175/ {print $1}
