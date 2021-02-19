#! /bin/bash
# uppercase.sh: 修改输入，将小写字符都转换成大写字符.

tr 'a-z' 'A-Z'
# 字符范围必须被“”引用起来
#+ 来阻止产生单字符的文件名

exit 0 
