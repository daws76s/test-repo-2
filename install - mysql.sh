#!/bin/bash

ID=$(id -u)

if [$ID -ne 0]
then
   echo "error:: please run with root access"
   exit 1 # you can give other than 0
else
   echo "you are root user"
fi       

yum install mysql -y