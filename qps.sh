#!/bin/bash
#Author: Ryan Whalen

if [[ ! -z "$1" ]]; then
    p="3306";
if [[ ! -z "$2" ]]; then
    p="$2";
fi;

while true; do
        q=`mysql -h "$1" -P${p} -e "show global status like 'Queries'" | tail -1 | awk '{print $2}'`
        sleep 1
        q2=`mysql -h "$1" -P${p} -e "show global status like 'Queries'" | tail -1 | awk '{print $2}'`
        tc=`mysql -h "$1" -P${p} -e "show global status like 'Threads_connected'" | tail -1 | awk '{print $2}'`
        t=`mysql -h "$1" -P${p} -e "show global status like 'Threads_running'" | tail -1 | awk '{print $2}'`

        qps="$(( ($q2-$q) / 1))"
        echo "qps: $qps   |   Threads connected: $tc   |   Threads running: $t"
done

else
    echo "usage: ./qps.sh hostname port";
fi
