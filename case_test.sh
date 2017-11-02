#!/bin/bash


echo "please input yes/no"
read str

#case word in
    # pattern )
        # ;;
# esac

case $str in
    [yY] | [yY][eE][sS] )   #[]中的字符表示任意一个满足条件就可以
        echo "it is ok"
    ;;  #双分号是case的语句块的结束符
    [nN]*)
        echo "it is no"
        ;;
    *)
        echo "error input"
        ;;
esac

exit 0
