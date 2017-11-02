#!/bin/bash

touch file_one

rm -rf file_two

#一连串的命令执行结果判断
# and 短路
if [ -f file_one ] && echo "heige" && [ -f file_two ] && echo "ok"; then
    echo "in case"
else
    echo "no no"
fi

# or 短路
if [ -f file_two ] || echo "heige"; then
    echo "in case 2"
else
    echo "no no"
fi

#语句块
echo "heige list" && {
    echo "haha,this is block"
}
exit 0


