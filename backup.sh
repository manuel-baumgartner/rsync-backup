#!/bin/bash

readonly EXCL=backup_exclude.txt
readonly SRC=/mnt/pi/pi-os/
readonly DEST=/mnt/internal1/Sync/pi
readonly LOG=/mnt/internal1/Sync/logs/rsync.log.$(date +%Y%d%m%H%M)
readonly ARGS="-aurvlPq --exclude-from=$EXCL --log-file=$LOG"

rsync $ARGS $SRC $DEST 
