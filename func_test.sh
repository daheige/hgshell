#!/bin/bash
echo "this file is $0 " #$0,$1,$2...表示命令终端传入的参数，其中$0表示sh文件名，接着就是第一个参数，第二个参数，以此类推
testIt(){
    echo "heige"
}

testIt

echo "ok"

# 函数返回值

foo(){
    echo "hello"
}

res="$(foo)" #$()可以捕获运行结果

echo $res

# 定义局部变量

name="daheige"
getName(){
    echo $name
    local name="heige313"
    echo "local name is"$name
}

getName


#函数返回一个值
#当函数执行后，退出执行码是0,1
yes_no(){
    echo "your name is $* "
    while true
    do
        echo "please input yes/no"
        read flag
        case "$flag" in
            [yY] | yes )
                return 0;;
            [nN]*)
                return 1;;
            *)
                echo "please input yes/no"
            ;;
        esac
    done
}

echo "all params is $* "
# 将第一个参数传递给函数
#当函数正常执行返回0
if yes_no "$1";then
    echo "hi $1"
else
    echo "nerver mind"
fi
exit 0 #0表示shell正常退出，1-125脚本可用的错误码，其他数字是系统保留错误码
