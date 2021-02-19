#! /bin/bash

echo ls -l | sh
#  传递“echo ls -l”的输出到shell中，
#+ 与一个简单的"ls -l"结果相同。

cat *.lst | sort | uniq
#合并和排序所有的“.lst”文件，然后删除所有重复的行
