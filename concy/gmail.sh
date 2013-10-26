#!/bin/bash

login="my-mail@gmail.com"
psswd="my-password"

new=`curl -u ${login}:${psswd} -s "https://mail.google.com/mail/feed/atom" | grep -c "<entry>"`
echo $new new
