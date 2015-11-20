#!/bin/sh

#get arg
DIR_NAME=$1;
PATH_NAME=$(pwd)

#arg test
if [ "$DIR_NAME" == "" ];
then
  echo "arg1 plz.."
  exit
fi

#make dir and copy compile File
mkdir $1
cp ~/sh/mkp/dif/* ./$1/

#change dir and rum VIM
cd $1
vim main.c
