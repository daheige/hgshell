#!/bin/bash

foo_1="fefefe"
export foo_1 #导出变量到当前shell中

# hg变量请在执行该shell之前，在终端export hg=1
echo $hg

bash export_1.sh #我们在export_.sh中输出foo_1变量
