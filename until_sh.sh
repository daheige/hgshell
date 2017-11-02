#!/bin/bash
#0-9迭代器生成
for i in {0..9}; do
    echo $i
done

#until 一直执行下去，直到条件为真就停止
x=0;
until [[ $x -eq 9 ]]; do
    let x++;
    echo this num is $x
done

exit 0
