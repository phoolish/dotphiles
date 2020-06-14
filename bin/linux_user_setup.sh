#!/bin/bash

if [ -z $1 ]; then
  echo "Username is not set"
  exit 1
fi

user=$1
adduser $user -m -s /bin/bash -c '' -G wheel

mkdir /home/$user/.ssh
chmod 0700 /home/$user/.ssh
curl https://github.com/phoolish.keys -o /home/$user/.ssh/authorized_keys
chmod 0600 /home/$user/.ssh/authorized_keys
chown -R $user:$user /home/$user/.ssh
