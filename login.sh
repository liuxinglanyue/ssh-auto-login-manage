#!/bin/sh
cd "`dirname $0`"
BASE_HOME=`pwd`

host=$1
#default user & password
user='username'
password='password'
port='22'

if [ -n "$2" ]; then
    user=$2
fi

if [ -n "$3" ]; then
    password=$3
fi

if [ -n "$4" ];then
    port=$4
fi

./auto_login.exp $host $user $password $port
