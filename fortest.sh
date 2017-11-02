#!/usr/bin/env bash

for foo in bar haha red; do
    echo $foo
done

# 如果for循环是一个字符串，当做一个元素
for i in "heige"; do
    echo $i
done
