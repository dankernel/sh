#!/bin/bash

# Randon
MATRIX="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
LENGTH="7"
while [ "${n:=1}" -le "$LENGTH" ]
do
  PASS="$PASS${MATRIX:$(($RANDOM%${#MATRIX})):1}"
  let n+=1
done

argc=$#
if [ 1 -eq $argc ]
then
  # Copy file
  cp $1 ~/www/tmp/$PASS.tmp
  URL=`hostname -I | awk '{print $1}'`
  echo $URL/tmp/$PASS.tmp
fi
