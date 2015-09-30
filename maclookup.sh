#!/bin/bash
# Autor Firdavs Murodov <firdavs@root.tj>
# Date Mar 27, 2015 19:00
# mac address $1

orig=`curl  http://www.macvendorlookup.com/api/v2/$1/pipe 2> /dev/null`
IFS='|'; arr=($orig)

for i in "${arr[4]}", "${arr[8]}"
do
        echo $i
done

exit 0
