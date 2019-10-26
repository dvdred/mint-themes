#!/bin/bash
killall conky
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR
sleep 2
conky -q -p 1 -d -c conky_cyan
sleep 3
conky -q -p 1 -d -c conky_netmap
cd -
