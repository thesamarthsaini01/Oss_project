#!/bin/bash
PACKAGE=${1:-"python3"}
if dpkg -l "$PACKAGE" &> /dev/null; then
 echo "SUCCESS: $PACKAGE is installed."
 apt-cache show "$PACKAGE" | grep -E "Version|Description-en" | head -n 2
else
 echo "NOTICE: $PACKAGE is NOT installed."
fi
echo "--- FOSS Philosophy Note ---"
case $PACKAGE in
 python3|python) echo "Python: A community-driven language fueling the AI revolution." ;;
 *) echo "$PACKAGE: A piece of the open-source puzzle." ;;
esac
