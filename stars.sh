#!/bin/sh

identifier=$1

[ ! -d /data ] && echo 'no volume found on /data, did you use the flag -v eo-volume:/data?' && exit 1

Stars copy -o /data -r 4 'https://catalog.terradue.com/sentinel1/search?uid='${identifier}

exit $?
