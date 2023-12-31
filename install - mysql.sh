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

if [ $? -ne 0]
then
   echo "error :: installing mysql is failed"
   exit 1
else
   echo "installing mysql is success"
fi   