#!/bin/bash
HOSTL="`hostname`"
HOST='SERVER_FTP'
USER='XXX'
PASS='xxx'
TARGETFOLDER='/Backup/'$HOSTL''
SOURCEFOLDER='/Backup'

lftp -e "
open $HOST
user $USER $PASS
lcd $SOURCEFOLDER
mirror --reverse --delete --use-cache --verbose $SOURCEFOLDER $TARGETFOLDER
bye
"
