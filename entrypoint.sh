#!/bin/sh
if [ -n "${1}" ]; then
   exec "$@"
else
   sh /commands.sh
fi
