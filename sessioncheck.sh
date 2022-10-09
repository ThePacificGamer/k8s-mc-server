#!/bin/sh
FILE=session.lock
if [ -f "world/$FILE" ]; then
    echo "$FILE exists, deleting..."
    rm world/session.lock
elif [ -f "world_nether/$FILE" ]; then
    echo "$FILE exists, deleting..."
    rm world_nether/session.lock
elif [ -f "world_the_end/$FILE" ]; then
	rm world_the_end/session.lock
else
	echo "No session detected starting server..."
fi
./startsrv.sh
