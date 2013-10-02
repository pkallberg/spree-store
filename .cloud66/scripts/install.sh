#!/bin/bash
FILE=/tmp/install_done

if [ -f $FILE ]
then
	echo "File $FILE exists..."
else
    cd $RAILS_STACK_PATH
    spree install --auto-accept
    touch /tmp/install_done
fi
