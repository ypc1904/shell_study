#! /bin/bash
#background - loop, d05_1.sh

for i in 1 2 3 4 5 6 7 8 9 10  # 第一个循环
do
	echo -n "$i "
done & #在后台运行这个循环。
#在第2个循环之后，将在某些时候执行。

echo  #这个‘echo’某些时候将不会显示。

for i in 11 12 13 14 15 16 17 18 19 20 # 第二个循环
do
	echo -n "$i "
done

echo #这个‘echo’ 某些时候将不会显示

# ==========================================================
#期望的输出应该是：
#1 2 3 4 5 6 7 8 9 10
#11 12 13 14 15 16 17 18 19 20

#然而实际的输出结果可能是：
# 11 12 13 14 15 16 17 18 19 20
# 1 2 3 4 5 6 7 8 9 10 bozo $
#(第2个'echo'没执行，为什么？)

#也可能是：
#1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
#（第一个‘echo’没执行，为什么？）

#非常少见的执行结果，也有可能是：
#11 12 13 1 2 3 4 5 6 7 8 9 10 14 15 16 17 18 19 20
#前台的循环先于后台的执行

exit 0
#Nasimuddin Ansari 建议加一句sleep 1
#+ 在6行和14行的echo -n "$i "之后加这句。
#+ 为了真正的乐趣。






