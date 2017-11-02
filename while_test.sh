#!/bin/bash

echo "please input your pwd"
read passwd

while [ "$passwd" != "1234" ]; do
    echo "your pwd error"
    echo "please input your pwd"
    read passwd
done

echo "success!"
exit 0
