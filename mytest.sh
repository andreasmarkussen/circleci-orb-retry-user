#!/bin/bash

echo "This is an example of a simple flaky test." 
echo " It could be more advanced but it is not. :)"

FILE=~/blocking-folder/data.txt
if test -f "$FILE"; then
    echo "JunkFile $FILE exists - will fail."
    exit 0
fi
echo "All fine!"
exit 1