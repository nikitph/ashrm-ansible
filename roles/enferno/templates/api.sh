#!/bin/bash
set -e
#improve this later
LOGFILE=/home/{{user_name}}/log/api.log
LOGDIR=$(dirname $LOGFILE)
  # user/group to run as
USER={{user_name}}
GROUP={{user_name}}
cd /home/{{user_name}}/{{server_hostname}}
test -d $LOGDIR || mkdir -p $LOGDIR
source /home/{{user_name}}/{{server_hostname}}/env/bin/activate
exec python api.py
