#!/bin/bash

cd /projects/$PROJECT
if [ $? -eq 0 ]; then
    
    if [ ! -f "/projects/$PROJECT/package.json" ]; then
        npm init -y
    fi
    
    if [ -f "/projects/$PROJECT/prepare.sh" ]; then
        /bin/bash -c "/projects/$PROJECT/prepare.sh"
    fi
    
    if [ -f "/projects/$PROJECT/run.sh" ]; then
        /bin/bash -c "/projects/$PROJECT/run.sh"
    fi
else
    echo "$PROJECT not found in projects directory, sleeping."
fi
/bin/sleep 315360000
