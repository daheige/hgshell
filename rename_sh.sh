#!/bin/bash
#通过%%操作符号批量重命名文件

for file in *.log; do
    mv $file ${file%%log}txt  #删除最右边的log，返回剩余部分，然后拼接txt，就是新的名字
done

echo "rename success!"
exit 0
