#!/bin/bash

#在shell脚本中可以执行命令
rm -rf file_two

file_list=(file_one file_two)
for file in ${file_list[@]}; do
    if [ -f "$file" ]; then
        echo "$file is file"
        break
    fi
done

file_list=(file_s file_two file_one) #声明一个数组
for file in ${file_list[@]}; do
    if [ $file != "file_one" ]; then
        echo "$file is not file_one"
        continue
    fi

    echo "$file is file_one"
    echo 111
done

exit 0

