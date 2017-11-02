#!/usr/bin/env bash

if [ -f "/bin/bash" ];then
    echo "/bin/bash exists"
fi

if [ -d "/bin/bash" ]; then
    echo "/bin/bash is dir"
else
    echo "/bin/bash id not dir"
fi

echo "is it mon?please input yes/no"
read flag
# echo $flag

if [ "$flag" = "yes" ]; then
    echo "it is mon"
elif [ "$flag" = "no" ]; then
    echo "it is mon"
else
    echo "sorry,error input"
fi

