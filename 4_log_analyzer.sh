#!/bin/bash
LOGFILE="/var/log/dpkg.log"
KEYWORD="python"
COUNT=$(grep -ic "$KEYWORD" "$LOGFILE")
echo "Scanning $LOGFILE for '$KEYWORD'..."
echo "Matches found: $COUNT"
echo "Recent activity:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
