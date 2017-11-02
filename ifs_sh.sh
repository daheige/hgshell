#!/bin/bash

data="name,sex,rollno,location"

oldIfs=$IFS #IFS是存储定界符的环境变量。它是当前
# shell环境使用的默认定界字符串。

IFS=, #定界符改成,
echo "--------------开始遍历数据-------------"
for item in $data; do
    echo Item:$item
done

IFS=$oldIfs
echo "--------------遍历csv数据结束-----------"

line="root:x:0:0:root:/root:/bin/bash"
IFS=":"
count=0
for item in $line; do
    [ $count -eq 0 ] && user=$item
    [ $count -eq 6 ] && shell=$item
    let count++
done
IFS=$oldIfs

echo $user\'s shell is $shell
exit 0

