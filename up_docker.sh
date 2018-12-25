#!/bin/bash
for ((i=2;i<=10;i++))
do
a=`docker ps -a | awk NR==$i'{print $1}'`
docker start $a
done
