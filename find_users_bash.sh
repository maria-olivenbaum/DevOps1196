#!/bin/bash

if [ ! -f /etc/passwd ]; then
    echo "/etc/passwd file not found!"
    exit 1
fi

echo "Users with /bin/bash shell:"
grep '/bin/bash' /etc/passwd | awk -F: '{print $1}'